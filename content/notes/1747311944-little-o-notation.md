---
id: 1747311944-little-o-notation
aliases:
  - Little-o notation
tags:
  - order-approximation
  - notation
bibliography: assets/biblio.bib
date: "2025-05-15"
params:
  math: true
title: Little-o notation
---

It describes the limiting behavior of a function when the argument tends toward a particular value or infinity. One writes

$$f(x) = o(g(x)), \quad\text{as}\quad x \rightarrow \infty.$$

In that case, we say that: $f(x)$ is of inferior order to $g(x)$. A characterization of that is 

$$\forall \epsilon > 0, \exists x_{0} \in \mathbb{R} / \forall x \geq x_{0}, \left| f(x) \right| \leq \epsilon g(x).$$

> [!EXAMPLE] Example 
> A polynomial function $f$ is a little-$0$ of its higher degree plus $1$ as $x \rightarrow \infty$. For all $n \in \mathbb{N}$,
> $$f(x) = \sum_{i = 1}^{n} a_i x^{i} = o(x^{n + 1}) \quad x \rightarrow \infty.$$


> [!IMPORTANT] Properties
> 1. If $c > 0$ and $f = o(g)$, then $c \cdot f = o(g)$.
> 2. If $f = o(F)$ and $g = o(G)$, then $f \cdot g = o(F \cdot G)$.
> 3. If $f = o(F)$ and $g = o(G)$, then $f + g = o(F + G)$.
> 4. If $f = o(g)$ and $g = o(h)$, then $f = o(h)$.


