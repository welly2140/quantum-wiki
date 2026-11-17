# 退相干與錯誤更正 (decoherence & error correction)

## 退相干
- 若 qubit 沒有和環境充分隔離，就會發生退相干 (decoherence)，帶來雜訊與錯誤。[S6]
- 退相干不可逆；操作速度必須遠快於退相干時間，錯誤率才會低。[S6]
- 有些系統需要極低溫（例如約 20 毫開爾文）；有些使用真空腔來減少震動。[S6][S1]
- 以 T1（壽命）與 T2（去相位時間）描述 qubit 對雜訊的敏感度，但時間長並不等於 qubit 更好，還要看閘時間與保真度。[S3]

## 建造量子電腦的五個條件 (DiVincenzo criteria)
- 可擴展 (Scalable)：能有很多 qubit。[S1]
- 可初始化 (Initializable)：能把 qubit 設到特定狀態（通常是 0）。[S1]
- 耐久 (Resilient)：能讓 qubit 長時間維持疊加。[S1]
- 通用 (Universal)：有一組通用閘集。[S1]
- 可靠 (Reliable)：能準確測量 qubit。[S1]
- 同時滿足這五點是人類面臨的最艱鉅工程挑戰之一。[S1]

## 錯誤更正
- 閾值定理 (threshold theorem)：若錯誤率夠低，量子錯誤更正可以壓制錯誤；但需要的實體 qubit 遠多於邏輯 qubit。[S6]
- 估計：用 Shor 演算法分解 2048 位元整數，在完全錯誤更正的離子阱機器上至少需要約 300 萬個實體 qubit。[S6]

## 相關頁面
[[bit-vs-qubit]] · [[misconceptions-and-status]]

## 來源
S1, S3, S6
