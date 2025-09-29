**问题** 假定 \(U\) 和 \(V\) 是复平面中的区域, 即连通开集. 映射 \(f: U \to V\) 是开映射, 且紧集的原像是紧集. 需要证明 \(f\) 是满射. 

**证明** 假设 \(f\) 不是满射, 则存在点 \(v \in V\) 使得 \(v \notin f(U)\). 由于 \(f\) 是开映射, \(f(U)\) 是 \(V\) 中的开集. 

- 我们断言 $f(U) \subsetneq (\overline {f(U)} \cap V)$. 这相当于是说, $f(U)$ 是 $V$-子拓扑空间中的真开集. 假如 $f(U) =(\overline {f(U)} \cap V)$, 则 $f(U)$ 在 $V$-子拓扑空间中既开又闭, 从而 $f(U)$ 是 $V$ 的连通分支. 此时只能有故 $f(U) = V$, 矛盾.

存在点 \(v \in V \cap (\partial f(U))\), 即 $V$ 中属于 \(f(U)\) 的边界的点. 对于这样的 \(v\), 由于 \(V\) 是开集, 存在 \(\delta > 0\) 使得有闭圆盘 \(D_\delta = \{ z \in V : |z - v| \leq \delta \} \subseteq V\). 对于每个 \(n \in \mathbb{N}\), 定义 \(D_n = \{ z \in V : |z - v| \leq \delta/n \}\), 则 \(D_n\) 是紧集, 且 \(D_{n+1} \subseteq D_n\). 

由于 \(v\) 属于 \(f(U)\) 的闭包, 故每个 \(D_n\) 包含 \(f(U)\) 中的点, 从而 \(f^{-1}(D_n) \neq \emptyset\). 由条件, 紧集的原像是紧集, 所以每个 \(K_n = f^{-1}(D_n)\) 是紧集. 且由 \(D_{n+1} \subseteq D_n\), 有 \(K_{n+1} \subseteq K_n\), 即 \(\{K_n\}\) 是非空的紧集套. 

在复平面中, 紧集套的交集非空. 任取 \(u \in \bigcap_{n=1}^{\infty} K_n\), 则对每个 \(n\), 有 \(u \in K_n\), 对应地有 \(f(u) \in D_n\). 由于 \(f(u) \in \bigcap _{n=1}^\infty D_n = \{v\}\), 这与 \(v \notin f(U)\) 矛盾. 

得到矛盾, 因此 \(f\) 是满射. 

