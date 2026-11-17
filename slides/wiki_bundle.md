<<<WIKI PAGE: concepts/bit-vs-qubit.md>>>
# 位元 vs 量子位元 (bit vs qubit)

## 定義
- 古典位元 (bit) 任一時刻只能處於 0 或 1 其中一個狀態。[S1][S3]
- 量子位元 (qubit) 是量子資訊的基本單位，是古典二進位位元的量子版本。[S3]
- qubit 可以同時處於 0 與 1 的疊加，而且 0 與 1 之間有無限多種可能的疊加，每一種都是合法的 qubit 狀態。[S1]
- 描述一個 qubit 需要兩個複數（機率振幅）。[S3]

## 白話解釋與例子
- 8 個古典位元可編碼 256 種值，但一次只能表示其中一個；8 個 qubit 可處於全部 256 種狀態的疊加。[S1]
- 但測量只會得到一個結果，所以「同時表示 256 種」不等於「同時算完 256 種」。[S6]
- 古典位元的狀態在 Bloch 球上只限於北極 (|0>) 與南極 (|1>)，球面其餘部分古典位元無法到達。[S3]

## 常見誤解
- 測量古典位元不會擾動它；測量 qubit 會破壞相干性並不可逆地擾動疊加態。[S3]

## 實體實作
- 任何雙態量子系統都可以當 qubit，例如電子自旋（上/下）或單一光子的偏振。[S3]
- 常見技術有超導電路、離子阱、中性原子、量子點等；微軟文章列出離子阱、超導與拓樸 qubit。[S3][S1]

## 相關頁面
[[superposition]] · [[measurement]] · [[decoherence-and-error-correction]]

## 來源
S1, S3, S6

<<<WIKI PAGE: concepts/decoherence-and-error-correction.md>>>
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

<<<WIKI PAGE: concepts/entanglement.md>>>
# 糾纏 (entanglement)

## 定義
- 糾纏是指一群粒子的量子態無法獨立描述各個粒子，即使它們相距很遠。[S5]
- 數學上，糾纏態無法分解成各局部子系統態的乘積；能分解的稱為可分離態 (separable)。[S5]
- 兩個糾纏的 qubit 只能知道整體系統的狀態，無法單獨知道個別 qubit 的狀態。[S1]

## 白話解釋與例子
- Bell 態之一：(1/√2)(|0>A|1>B − |1>A|0>B)。四個 Bell 態都是最大糾纏態，並構成兩 qubit 空間的正交基底。[S5]
- 若 Alice 測量她的 qubit，兩種結果機率相同；得到結果後她能確定預測 Bob 的結果，此例中兩者完全反相關，即使相隔遙遠。[S5]
- 測量其中一個 qubit 就能得到另一個 qubit 的資訊，這個性質在量子計算中很有用。[S1]

## 常見誤解
- 糾纏能產生遠距離的相關性，但不能用於超光速通訊：Alice 的測量結果是隨機的，她無法選擇，因此無法藉由操作自己的系統向 Bob 傳遞資訊（無通訊定理）。[S5]

## 在量子計算中的角色
- 糾纏態被視為一種資源，可用於通訊與計算任務。[S5]
- Wikipedia 指出「糾纏是實現量子計算所必需的」，但也註明有人對此有爭議。[S5]
- 糾纏也是量子隱形傳態與超密編碼的核心。[S5]

## 相關頁面
[[quantum-gates]] · [[measurement]] · [[why-quantum-computing]]

## 來源
S1, S3, S5

<<<WIKI PAGE: concepts/interference.md>>>
# 干涉 (interference)

## 定義
- 量子振幅是複數，不只是正的機率；因為可以是負的，所以能發生破壞性干涉，這是量子演算法運作的核心。[S6]
- 振幅之間的相對相位負責量子干涉。[S3]

## 白話解釋
- 量子演算法的做法是安排操作順序，讓干涉放大正確答案的機率，並抵消錯誤答案。[S6]
- Z 閘（相位翻轉）把 |1> 變成 −|1>，不改變 |0>。[S2]
- 例：|+> 與 |-> 直接做標準基底測量時，0 和 1 的機率都是一半，看不出差別；先套用 Hadamard 運算再測量，就能完全分辨。[S2]

## 常見誤解
- 光靠「同時處理很多輸入」不會加速；測量只回傳一個結果，演算法必須利用干涉讓正確答案出現的機率變大。[S6]

## 相關頁面
[[superposition]] · [[quantum-gates]] · [[misconceptions-and-status]]

## 來源
S2, S3, S6

<<<WIKI PAGE: concepts/measurement.md>>>
# 測量 (measurement)

## 定義
- 標準基底測量時，觀察者看到的不是量子態向量，而是一個古典狀態。[S2]
- 每個古典狀態出現的機率，等於態向量中對應分量絕對值的平方（Born rule）。[S2]
- 對 |ψ> = α|0> + β|1>，測得 |0> 的機率是 |α|²，測得 |1> 的機率是 |β|²。[S3]

## 白話解釋與例子
- 測量是不可逆的操作，會讓相干性消失。[S3]
- 若結果是 |1>，則 α 變成 0、β 變成 1，原本的相位資訊無法再由實驗取得。[S3]
- |+> 與 |-> 直接測量時，0 和 1 各 50%，無法分辨；但先做一次 Hadamard 運算再測量，就能完全分辨。[S2]

## 常見誤解與限制
- 測量不是量子閘，因為它不可逆。[S4]
- 測量一個糾纏的 qubit，可能使與它糾纏的其他 qubit 的狀態坍縮。[S3]
- 電路中的測量可以延後到最後進行，但這可能帶來計算成本。[S6]

## 相關頁面
[[superposition]] · [[entanglement]] · [[quantum-gates]]

## 來源
S2, S3, S4, S6

<<<WIKI PAGE: concepts/misconceptions-and-status.md>>>
# 常見迷思與現況 (misconceptions & status)

## 常見迷思
- 迷思：量子電腦會一次嘗試所有答案。事實：「量子平行」只是啟發式說法，疊加可以同時對許多輸入求函數值，但測量只回傳一個結果，所以平行本身不會加速；演算法還必須用干涉讓正確答案機率變高。[S6]
- 迷思：量子電腦能解決古典電腦解不了的問題。事實：在可計算性上不比古典電腦強，不能解停機問題；只是對某些問題可能更快。[S6]
- 迷思：量子電腦對所有問題都更快。事實：已知的加速只針對特定問題，許多被提出的應用尚未展現實際優勢。[S6]
- 迷思：糾纏可以超光速傳訊。事實：測量結果是隨機的，無法藉此傳遞資訊。[S5]
- 迷思：「古典」電腦完全沒用到量子物理。事實：「古典」指的是計算模型；現代電腦的元件雖依賴量子行為，但那些量子資訊很快退相干，因此以古典方式分析。[S6]

## 現況（依 Wikipedia 2026 年版本）
- 量子電腦尚未能用於實際應用；特定任務上的量子優勢展示是科學里程碑，不代表近期可部署。[S6]
- 容錯量子計算在 2026 年仍遙不可及；NISQ（含雜訊的中等規模）機器可能有特定用途，但閘雜訊限制其可靠度。[S6]
- 微軟文章指出，設計成可擴展的量子系統，未來能力可能超越今日最強的超級電腦。[S1]

## 相關頁面
[[interference]] · [[entanglement]] · [[decoherence-and-error-correction]] · [[why-quantum-computing]]

## 來源
S1, S5, S6

<<<WIKI PAGE: concepts/quantum-circuits.md>>>
# 量子電路 (quantum circuits)

## 定義
- 量子閘是量子電路的基本單元。[S4]
- 電路圖中，閘是畫在水平線上的符號，每條線代表一個 qubit。[S4]
- 單線代表 qubit，雙線代表古典位元；測量符號會把 qubit 線輸出成古典線。[S4]

## 讀圖要點
- 圖上依序先 A 後 B 的閘，矩陣乘法的順序相反：C = B·A。[S4]
- 恆等閘常畫成一條空白線，或乾脆省略。[S4]
- 電路中的測量可以延後到最後。[S6]

## 例子：電路中的兩種閘
- H 閘作用於單一 qubit，可把基底態變成均等疊加；CNOT 閘作用於兩個 qubit，依控制 qubit 翻轉目標 qubit。[S4]

## 相關頁面
[[quantum-gates]] · [[measurement]]

## 來源
S4, S6

<<<WIKI PAGE: concepts/quantum-gates.md>>>
# 量子閘 (quantum gates)

## 定義
- 量子邏輯閘是作用在少數 qubit 上的基本量子電路，是量子電路的基本單元，如同古典邏輯閘之於數位電路。[S4]
- 量子閘是幺正 (unitary) 變換，用幺正矩陣表示：UU† = U†U = I。[S2][S4]
- 幺正矩陣恰好是「一定把量子態向量變成量子態向量」的那類線性映射。[S2]
- 與許多古典邏輯閘不同，量子閘是可逆的，任意閘的組合也可逆。[S4]

## 常見的閘
- Hadamard (H)：把 |0> 變成 (|0>+|1>)/√2，把 |1> 變成 (|0>−|1>)/√2；從基底態產生均等疊加；H 是自己的反操作。[S4][S2]
- Pauli-X：量子版 NOT，又稱位元翻轉：|0>→|1>、|1>→|0>。[S2][S4]
- Pauli-Z：相位翻轉：|0> 不變、|1>→−|1>。[S2][S4]
- Pauli-Y：|0>→i|1>、|1>→−i|0>。[S4]
- X、Y、Z 分別對應 Bloch 球繞 x、y、z 軸轉 π。[S4]
- CNOT（受控非）：兩個 qubit，第一個是控制、第二個是目標；只有當控制為 |1> 時才翻轉目標，|a,b> → |a, a⊕b>。[S4][S6]

## 通用性
- 量子電腦不必能做所有操作，只需一組「通用閘集」，任何其他操作都能分解成它們的序列。[S1]

## 相關頁面
[[quantum-circuits]] · [[interference]] · [[entanglement]]

## 來源
S1, S2, S4, S6

<<<WIKI PAGE: concepts/superposition.md>>>
# 疊加 (superposition)

## 定義
- qubit 的一般狀態是基底態的線性組合：|ψ> = α|0> + β|1>，α、β 為複數機率振幅。[S3]
- 在量子態的語境下，「疊加」與「線性組合」基本上是同義詞。[S2]
- 歸一化條件：|α|² + |β|² = 1。[S3]
- 例：|+> = (1/√2)|0> + (1/√2)|1> 常被稱為 0 與 1 的疊加。[S2]

## 白話解釋與例子
- 微軟文章的比喻：你不可能同時面向左和面向右，但量子粒子可以有一定機率「面向左」並同時有一定機率「面向右」。[S1]
- 電子的自旋有「上」與「下」兩種狀態，電子的量子態是兩者的疊加。[S1]
- 疊加（又稱相干性 coherence）只存在於離子、電子、超導電路這類量子系統。[S1]

## 為什麼重要
- α 與 β 之間的相對相位 (relative phase) 負責量子干涉，例如雙縫實驗。[S3]
- 疊加態被測量時只會得到其中一個結果，機率由振幅決定。[S2][S3]

## 相關頁面
[[bit-vs-qubit]] · [[measurement]] · [[interference]]

## 來源
S1, S2, S3

<<<WIKI PAGE: concepts/why-quantum-computing.md>>>
# 為什麼需要量子計算 (why quantum computing)

## 起點：量子系統很難模擬
- 1980 年代，Richard Feynman 與 Yuri Manin 提出：以量子現象為基礎的硬體，可能比傳統電腦更適合模擬量子系統。[S1]
- 原因之一：量子層級的物質被描述為多種組態（狀態）同時存在的組合。[S1]
- 狀態數呈指數增長：40 個位置有 2^40 種狀態；古典電腦要存 2^40 個數字（超過 130 GB），量子電腦只需 40 個 qubit。[S1]
- 多一個位置，狀態數加倍（2^41，超過 260 GB）。[S1]
- 一般地說，n 個 qubit 需要 2^n 個古典數值來描述，所以古典模擬很快就變得困難。[S6]

## 重要演算法（概觀）
- 1985：David Deutsch 證明量子電腦可以有效模擬任何物理系統的行為。[S1]
- 1994：Peter Shor 提出質因數分解的量子演算法，比已知最佳古典演算法快指數倍，可能威脅 RSA 與橢圓曲線密碼。[S1][S6]
- 1996：Grover 演算法對無結構搜尋有二次方加速，比 Shor 的指數加速溫和，但適用範圍廣。[S6]
- 其他：搜尋無序資料庫、解線性方程組、機器學習，以及化學、物理與材料科學的模擬。[S1]

## 相關頁面
[[bit-vs-qubit]] · [[interference]] · [[misconceptions-and-status]]

## 來源
S1, S6

<<<WIKI PAGE: sources/S1.md>>>
# S1 — Microsoft Learn: What Is Quantum Computing?

- 網址：https://learn.microsoft.com/en-us/azure/quantum/overview-understanding-quantum-computing
- 原始檔：[raw/S1-microsoft-what-is-quantum-computing.md](../../raw/S1-microsoft-what-is-quantum-computing.md)
- 取得日期：2026-11-17
- 取得品質：全文取得
- 涵蓋內容：入門總覽、歷史、五條件、疊加與糾纏
- 被這些概念頁引用：bit-vs-qubit, superposition, entanglement, why-quantum-computing, decoherence-and-error-correction, misconceptions-and-status


<<<WIKI PAGE: sources/S2.md>>>
# S2 — IBM Quantum Learning: Quantum information

- 網址：https://quantum.cloud.ibm.com/learning/en/courses/basics-of-quantum-information/single-systems/quantum-information
- 原始檔：[raw/S2-ibm-quantum-information.md](../../raw/S2-ibm-quantum-information.md)
- 取得日期：2026-11-17
- 取得品質：模型擷取摘要
- 涵蓋內容：量子態、測量、幺正運算、Pauli、Hadamard
- 被這些概念頁引用：superposition, measurement, quantum-gates, interference


<<<WIKI PAGE: sources/S3.md>>>
# S3 — Wikipedia: Qubit

- 網址：https://en.wikipedia.org/wiki/Qubit
- 原始檔：[raw/S3-wikipedia-qubit.md](../../raw/S3-wikipedia-qubit.md)
- 取得日期：2026-11-17
- 取得品質：模型擷取摘要
- 涵蓋內容：qubit 定義、Bloch 球、測量、實作
- 被這些概念頁引用：bit-vs-qubit, superposition, measurement, entanglement, interference, decoherence-and-error-correction


<<<WIKI PAGE: sources/S4.md>>>
# S4 — Wikipedia: Quantum logic gate

- 網址：https://en.wikipedia.org/wiki/Quantum_logic_gate
- 原始檔：[raw/S4-wikipedia-quantum-logic-gate.md](../../raw/S4-wikipedia-quantum-logic-gate.md)
- 取得日期：2026-11-17
- 取得品質：模型擷取摘要；僅讀前 100000 字元
- 涵蓋內容：量子閘、可逆性、H/Pauli/CNOT、電路圖
- 被這些概念頁引用：quantum-gates, quantum-circuits, measurement


<<<WIKI PAGE: sources/S5.md>>>
# S5 — Wikipedia: Quantum entanglement

- 網址：https://en.wikipedia.org/wiki/Quantum_entanglement
- 原始檔：[raw/S5-wikipedia-quantum-entanglement.md](../../raw/S5-wikipedia-quantum-entanglement.md)
- 取得日期：2026-11-17
- 取得品質：模型擷取摘要；僅讀前 100000 字元
- 涵蓋內容：糾纏定義、Bell 態、無通訊定理
- 被這些概念頁引用：entanglement, misconceptions-and-status


<<<WIKI PAGE: sources/S6.md>>>
# S6 — Wikipedia: Quantum computing

- 網址：https://en.wikipedia.org/wiki/Quantum_computing
- 原始檔：[raw/S6-wikipedia-quantum-computing.md](../../raw/S6-wikipedia-quantum-computing.md)
- 取得日期：2026-11-17
- 取得品質：模型擷取摘要；僅讀前 100000 字元
- 涵蓋內容：干涉、退相干、迷思、Shor/Grover、現況
- 被這些概念頁引用：bit-vs-qubit, measurement, quantum-gates, quantum-circuits, interference, why-quantum-computing, decoherence-and-error-correction, misconceptions-and-status


