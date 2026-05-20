---
id: 1779281776-countable-additivity
aliases:
  - countable_additivity
tags: []
bibFile: assets/bibliography.json
categories:
  - measure-theory
date: 2026-05-20
params:
  math: true
title: Countable Additivity
---

Why are we interested by finite additivity in the context of measure theory? It is because analysis is full of limits. Let us give two examples.


{{< admonition type="example" title="$[0, 1]$" >}}
We can write the set $[0, 1]$ as a countable union of pieces :
$$[0, 1] = \bigcup_{n = 1}^\infty \left( \frac{1}{n + 1}, \frac{1}{n}\right] \cup \{0\} .$$
{{< /admonition >}}


{{< admonition type="example" title="The rational numbers" >}}
Consider the rational numbers $\mathbb{Q} = \\{q_1, q_2, q_3, \dots\\}$. The rational numbers are countable, thus we can write them as a sequence. If each single point has measure zero, then $\mu(\{q_n\}) = 0$, for all $n$. Using countable additivity,
$$\mu(\mathbb{Q}) = \mu\left(\bigcup_{n = 1}^\infty \\{q_n\\}\right) = \sum_{n = 1}^{\infty} \mu(\\{q_n\\}) = 0.$$
So, although $\mathbb{Q}$ is dense in $\mathbb{R}$, it has measure zero.
{{< /admonition >}}

> A set can be topologically large but measure-theoretically small.

The rationals are dense, so they are everywhere from the viewpoint of topology. But they are countable, so they are negligible from the viewpoint of the Lebesgue measure.

