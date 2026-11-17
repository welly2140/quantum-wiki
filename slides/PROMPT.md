# 簡報生成指令（給無歷史記憶的模型）

你是教學簡報設計師。請**只根據**我附上的 Wiki 內容（`wiki_bundle.md`），製作一份「量子計算基本概念」的教學 HTML 簡報，讓完全不懂量子計算的人能看懂。

## 硬性規則
1. **只能使用 Wiki 裡的內容**。不要補充 Wiki 沒有的事實、數字、人名、年份。想補充時，改成「Wiki 未涵蓋」或直接省略。
2. 語言：繁體中文；英文術語首次出現時附中文，例如「疊加 (superposition)」。
3. 單一檔案 `index.html`（HTML + CSS + 少量 JS，全部內嵌），不依賴外部網路資源，用鍵盤左右鍵與按鈕可翻頁，手機寬度也能看。
4. **每張投影片**必須是 `<section class="slide" data-wiki="concepts/xxx.md,concepts/yyy.md">`，`data-wiki` 列出該頁內容取自哪些 wiki 頁面（路徑相對於 `wiki/`，只能是 bundle 中存在的頁面）。投影片底部也要用小字顯示「資料來源：[S1][S3]」，來源編號只能是 S1–S6。
5. 數字、公式、年份必須與 Wiki 完全一致（例如 2^40、130 GB、1994、1996）。
6. 不要說「量子電腦一次嘗試所有答案」之類 Wiki「常見迷思」頁已指出為錯誤的說法。

## 建議結構（約 12–14 張）
1. 封面：量子計算是什麼？
2. 學習目標與路線圖
3. 為什麼需要量子計算（why-quantum-computing）
4. 位元 vs 量子位元（bit-vs-qubit）
5. 疊加（superposition）
6. 測量（measurement）
7. 量子閘（quantum-gates）
8. 量子電路（quantum-circuits）
9. 糾纏（entanglement）
10. 干涉（interference）
11. 退相干與錯誤更正（decoherence-and-error-correction）
12. 常見迷思與現況（misconceptions-and-status）
13. 重點回顧＋3 題小測驗（答案要能在 Wiki 找到）
14. 參考來源（S1–S6 的標題與網址，取自 wiki/sources）

每張投影片：一個標題、3–5 個短重點、可用簡單 CSS/SVG 圖示意（例如 Bloch 球、電路圖），不要塞滿文字。

## 交付前自我檢查（請在回覆最後列出結果）
- [ ] 每張 `section.slide` 都有 `data-wiki`
- [ ] 沒有 Wiki 以外的事實或數字
- [ ] 來源編號只出現 S1–S6
