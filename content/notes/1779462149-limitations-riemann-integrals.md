---
id: 1779462149-limitations-riemann-integrals
aliases:
  - limitations_riemann_integrals
tags: []
bibFile: assets/bibliography.json
categories:
  - measure-theory
date: 2026-05-22
params:
  math: true
title: Limitations Riemann integrals
---


{{< backlink "1779462006-riemann-integral" "Riemann integrals" >}} have some limitations. For examples, consider the Dirichlet function
$$f(x) = \begin{cases}
  1, &\quad x \in \mathbb{Q} \\\\
  0, &\quad x \not\in \mathbb{Q}
\end{cases}.$$
On every interval, no matter how small, there are rational and irrational numbers. Therefore, on every interval, $\sup f = 1$ and $\inf f = 0$. So, every upper Riemann sum is $1$ and every lower Riemann sum is $0$. Therefore, $f$ is not Riemann integrable on $[0, 1]$. But, from a measure-theoric point-of-view, the function $f$ is almost always zero on $[0, 1]$, because the set where it equals $1$ is $\mathbb{Q} \cap [0, 1]$, which has measure zero.

So, the {{< backlink "1779462878-lebesgue-integrals" "Lebesgue integral" >}} of the function $f$ will be equal to $0$ on $[0, 1]$.
