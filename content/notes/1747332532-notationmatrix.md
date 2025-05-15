---
id: 1747332532-notationmatrix
aliases:
  - notation_matrix
tags: []
bibFile: assets/bibliography.json
categories:
  - notation
  - matrix
date: "2025-05-15"
params:
  math: true
title: Matrix notation
---

We use ${}^\top$ to denote the transpose of the matrix.

For a matrix $A = \left( a_{i j} \right)_{1 \leq i \leq n, 1 \leq j \leq p}$,

* The maximum norm:

$$\left|\| A \right|\|_{\text{max}} = \max\_{i,j} \left| a\_{i j} \right|.$$

* The supremum norm: 

$$\left|\| A \right|\|_{\infty} = \max\_{i} \sum\_{j = 1}^{p} \left| a\_{i j} \right|.$$

For two squares matrices $A$ and $B$,

$$A \leq B \Longleftrightarrow B -A ~\text{is positive semidefinite}.$$

$$A \preceq B \Longleftrightarrow \exists c > 0, A \leq cB.$$

$$A \simeq B \Longleftrightarrow A \preceq B, B \preceq A.$$
