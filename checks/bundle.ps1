# 把 wiki 合併成單一檔案，方便貼給網頁版模型。用法：powershell -File checks/bundle.ps1
$root = Split-Path $PSScriptRoot -Parent
$out = "$root\slides\wiki_bundle.md"
$sb = New-Object System.Text.StringBuilder
foreach ($f in (Get-ChildItem "$root\wiki\concepts\*.md" | Sort-Object Name)) {
  [void]$sb.AppendLine("<<<WIKI PAGE: concepts/$($f.Name)>>>")
  [void]$sb.AppendLine((Get-Content $f.FullName -Raw -Encoding utf8))
}
foreach ($f in (Get-ChildItem "$root\wiki\sources\*.md" | Sort-Object Name)) {
  [void]$sb.AppendLine("<<<WIKI PAGE: sources/$($f.Name)>>>")
  [void]$sb.AppendLine((Get-Content $f.FullName -Raw -Encoding utf8))
}
[IO.File]::WriteAllText($out, $sb.ToString(), [Text.UTF8Encoding]::new($false))
"wrote $out ($((Get-Item $out).Length) bytes)"
