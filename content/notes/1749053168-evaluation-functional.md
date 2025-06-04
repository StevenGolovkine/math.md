---
id: 1749053168-evaluation-functional
aliases:
  - evaluation-functional
tags: []
bibFile: assets/bibliography.json
categories:
  - functional-analysis
date: "2025-06-04"
params:
  math: true
title: Evaluation Functional
---

Let $\mathcal{H}$ be the set of vectors in an Hilbert space. In our case of interest, elements of $\mathcal{H}$ are functions. More precisely, every $f \in \mathcal{H}$ maps elements in some metric space $\mathcal{X}$ to the real numbers $\mathbb{R}$. 

 
{{< admonition type="tip" title="Definition" >}}
A **functional** is a function that accepts another function as input and returns a scalar.
{{< /admonition >}}

For example, a functional $l$, on $\mathcal{H}$, would map each function $f \in \mathcal{H}$ to a scalar in $\mathbb{R}$.

{{< admonition type="tip" title="Definition" >}}
The **evaluational functional** $\delta_x$ is defined as 
$$\delta_x(f) \coloneqq f(x), \quad f \in \mathcal{H}.$$
In simple terms, the function $\delta_x$ takes a function $f \in \mathcal{H}$ as input and return the function $f$ evaluated at the point $x$.
{{< /admonition >}}


