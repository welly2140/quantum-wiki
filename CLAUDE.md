# Quantum Computing Basics — LLM Wiki Schema

目的：以 `raw/` 的 6 篇資料建立「量子計算基本概念」Wiki（`wiki/`），再以 Wiki 為唯一知識來源產生教學 HTML 簡報（`slides/index.html`，繁體中文）。

## 目錄
- `raw/`：原始資料（S1–S6），只讀，不修改。
- `wiki/index.md`：所有頁面目錄。 `wiki/log.md`：每次 ingest / lint / 生成的紀錄。
- `wiki/sources/Sx.md`：每篇資料的摘要頁。
- `wiki/concepts/*.md`：概念頁（繁體中文）。
- `checks/`：檢查腳本（lint.ps1、bundle.ps1、check_slides.ps1）與每次執行的檢查報告（簡報生成後可把輸出存成 `checks/report-*.txt`）。

## 規則
1. **先討論、後生成**：每篇 ingest 前先列出「要點＋預計新增/修改的頁面」，經使用者確認才寫入。
2. **每個事實句必須標註來源** `[S1]`、`[S3]`…；沒有來源的句子不准寫。
3. 資料彼此衝突時，不得擅自擇一，要在頁面的「衝突/不確定」段落列出。
4. 概念頁格式：定義 → 白話解釋 → 例子 → 常見誤解 → 相關頁面（`[[連結]]`）→ 來源。
5. 簡報只能使用 Wiki 內容；每張投影片底部標註對應的 wiki 頁面。
6. 英文術語首次出現時附中文，例如「疊加 (superposition)」。
7. 資料來自 WebFetch 的模型擷取，不是逐字全文；數字、公式須回到 `raw/` 核對。
