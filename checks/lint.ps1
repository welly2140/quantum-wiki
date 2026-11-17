# Wiki lint：在進入簡報生成前，先檢查 Wiki 本身。用法：powershell -File checks/lint.ps1
$root = Split-Path $PSScriptRoot -Parent
$errors = @()
$concepts = Get-ChildItem "$root\wiki\concepts\*.md"
$names = $concepts.BaseName
$index = Get-Content "$root\wiki\index.md" -Raw -Encoding utf8

foreach ($f in $concepts) {
  $lines = Get-Content $f.FullName -Encoding utf8
  $n = 0
  foreach ($l in $lines) {
    $n++
    # 規則 1：事實句（bullet）必須有 [S#] 來源，「相關頁面」行除外
    if ($l -match '^- ' -and $l -notmatch '\[S[1-6]\]') { $errors += "NO-SOURCE  $($f.Name):$n  $l" }
    # 規則 2：[[連結]] 必須存在
    foreach ($m in [regex]::Matches($l, '\[\[([^\]]+)\]\]')) {
      if ($names -notcontains $m.Groups[1].Value) { $errors += "BAD-LINK   $($f.Name):$n  [[$($m.Groups[1].Value)]]" }
    }
  }
  # 規則 3：每頁要有「來源」段落；規則 4：要列在 index
  if (($lines -join "`n") -notmatch '## 來源') { $errors += "NO-SECTION $($f.Name) 缺少「## 來源」" }
  if ($index -notmatch [regex]::Escape($f.BaseName)) { $errors += "NOT-INDEXED $($f.Name)" }
}
# 規則 5：每個 S 來源都至少被一個概念頁引用
foreach ($i in 1..6) {
  $hit = Select-String -Path "$root\wiki\concepts\*.md" -Pattern "\[S$i\]" -Quiet
  if (-not $hit) { $errors += "UNUSED-SRC S$i 沒有被任何概念頁引用" }
}
"=== 逐頁明細 ==="
foreach ($f in $concepts) {
  $ls = Get-Content $f.FullName -Encoding utf8
  $bul = @($ls | Where-Object { $_ -match '^- ' })
  $withSrc = @($bul | Where-Object { $_ -match '\[S[1-6]\]' })
  $cited = @(([regex]::Matches(($ls -join "`n"), '\[(S[1-6])\]') | ForEach-Object { $_.Groups[1].Value }) | Sort-Object -Unique)
  "{0,-40} 事實句 {1,2}，有來源 {2,2}，引用 {3}" -f $f.BaseName, $bul.Count, $withSrc.Count, ($cited -join ',')
}
"concept pages: $($concepts.Count)"
if ($errors.Count -eq 0) { "LINT PASS" } else { "LINT FAIL ($($errors.Count))"; $errors }
