# 簡報檢查：用法 powershell -File checks/check_slides.ps1 [簡報路徑，預設 slides/index.html]
param([string]$Path)
$root = Split-Path $PSScriptRoot -Parent
if (-not $Path) { $Path = "$root\slides\index.html" }
$errors = @()
if (-not (Test-Path $Path)) { "FAIL: 找不到 $Path"; exit 1 }
$html = Get-Content $Path -Raw -Encoding utf8
$wikiText = (Get-ChildItem "$root\wiki" -Recurse -Filter *.md | ForEach-Object { Get-Content $_.FullName -Raw -Encoding utf8 }) -join "`n"

# 1. 投影片數量與 data-wiki
$slides = [regex]::Matches($html, '<section[^>]*class="[^"]*\bslide\b[^"]*"[^>]*>')
if ($slides.Count -lt 10) { $errors += "投影片只有 $($slides.Count) 張（至少 10）" }
$i = 0
foreach ($s in $slides) {
  $i++
  $m = [regex]::Match($s.Value, 'data-wiki="([^"]+)"')
  if (-not $m.Success) { $errors += "slide $i 缺少 data-wiki"; continue }
  foreach ($p in $m.Groups[1].Value -split ',') {
    $p = $p.Trim()
    if (-not (Test-Path "$root\wiki\$p")) { $errors += "slide $i 引用不存在的 wiki 頁：$p" }
  }
}
# 2. 來源編號只能 S1-S6
foreach ($m in [regex]::Matches($html, '\[S(\d+)\]')) {
  if ([int]$m.Groups[1].Value -lt 1 -or [int]$m.Groups[1].Value -gt 6) { $errors += "非法來源編號 $($m.Value)" }
}
# 3. 簡報中的數字必須在 Wiki 出現過（抓出 Wiki 沒有的數字，人工判讀）
$body = [regex]::Replace($html, '(?s)<(script|style)[^>]*>.*?</\1>', '')
$body = [regex]::Replace($body, '<[^>]+>', ' ')
$nums = [regex]::Matches($body, '\d[\d,\.]*\d|\d') | ForEach-Object { $_.Value.TrimEnd('.',',') } | Sort-Object -Unique
$unknown = @()
foreach ($n in $nums) { if ($wikiText -notmatch [regex]::Escape($n)) { $unknown += $n } }
if ($unknown.Count) { $errors += "簡報有 Wiki 沒出現過的數字（請人工確認是否為頁碼/編號）：$($unknown -join ', ')" }
# 4. 外部資源、繁中、小測驗
if ($html -match '(src|href)="https?://' -and $html -match '<script[^>]+src="https?://') { $errors += "使用了外部 script" }
if ($html -notmatch 'lang="zh') { $errors += "缺少 lang=zh-Hant" }
if ($html -notmatch '小測驗|測驗|Quiz') { $errors += "找不到小測驗" }

"=== 逐頁明細 ==="
$secs = [regex]::Matches($html, '(?s)<section[^>]*class="[^"]*\bslide\b[^"]*"[^>]*>.*?</section>')
$k = 0
foreach ($sec in $secs) {
  $k++
  $t = [regex]::Match($sec.Value, '<h[12]>(.*?)</h[12]>').Groups[1].Value
  $w = [regex]::Match($sec.Value, 'data-wiki="([^"]+)"').Groups[1].Value
  $ids = @([regex]::Matches($sec.Value, 'class="tag">(S\d)<|\[(S\d)\]') | ForEach-Object { if ($_.Groups[1].Value) { $_.Groups[1].Value } else { $_.Groups[2].Value } } | Sort-Object -Unique)
  $fig = if ($sec.Value -match '<svg') { 'SVG圖' } else { '無圖' }
  "{0,2}. {1} | wiki: {2} | 來源: {3} | {4}" -f $k, $t, $w, ($ids -join ','), $fig
}
"簡報中檢查過的不同數字：$($nums.Count) 個；Wiki 查無者：$($unknown.Count) 個"
"slides: $($slides.Count)"
if ($errors.Count -eq 0) { "SLIDE CHECK PASS" } else { "SLIDE CHECK FAIL ($($errors.Count))"; $errors }
