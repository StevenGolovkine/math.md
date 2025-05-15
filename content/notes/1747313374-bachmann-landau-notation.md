---
id: 1747313374-bachmann-landau-notation
aliases:
  - bachmann-landau-notation
tags:
  - orders-approximation
  - notation
bibliography: assets/biblio.bib
date: "2025-05-15"
params:
  math: true
title: Bachmann-Landau notation
---


The Bachmann-Landau notations are a family of notations for the limiting behavior of functions. 

Note that, the limit definitions $g(n) > 0$ for sufficiently large $n$.

## Little-o 

See {{< backlink "1747311944-little-o-notation" "here" >}} for more information.

Notation: $f(n) = o(g(n))$.

Description: $f$ is dominated by $g$ asymptotically.

Formal definition: $\forall k > 0, \exists n_{0} \in \mathbb{R} / \forall n > n_{0}, \left| f(n) \right| \leq k g(n)$.

Limit definition: $\lim_{n \to \infty} \frac{f(n)}{g(n)} = 0$.

## Big O 

See {{< backlink "1746801110-o-notation" "here" >}} for more information.

Notation: $f(n) = O(g(n))$.

Description: $|f|$ is asymptotically bounded above by $g$.

Formal definition: $\exists k > 0, \exists n_{0} \in \mathbb{R} / \forall n > n_{0}, \left| f(n) \right| \leq k g(n)$.

Limit definition: $\limsup_{n \to \infty} \frac{|f(n)|}{g(n)} < \infty$.

## Of the same order as 

Notation: $f(n) \asymp g(n)$

Description: $f$ is asymptotically bounded by $g$ both above and below.

Formal definition: $\exists k_1 > 0, \exists k_{2} > 0, \exists n_{0} \in \mathbb{R} / \forall n > n_{0}, k_{1} g(n) \leq f(n) \leq k_{2} g(n)$.

Limit definition: $f(n) = O(g(n))$ and $g(n) = O(f(n))$.

## Asymptotic equivalence

Notation: $f(n) \sim g(n)$.

Description: $f$ is equal to $g$ asymptotically.

Formal definition: $\forall \epsilon > 0, \exists n_{0} \in \mathbb{R} / \forall n > n_{0}, \left| \frac{f(n)}{g(n)} - 1 \right| < \epsilon$.

Limit definition: $\lim_{n \to \infty} \frac{f(n)}{g(n)} = 1$.
