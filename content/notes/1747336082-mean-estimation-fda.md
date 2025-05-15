---
id: 1747336082-mean-estimation-fda
aliases:
  - mean-estimation-fda
tags: []
bibFile: assets/bibliography.json
categories:
  - mean
  - functional-data
date: "2025-05-08"
params:
  math: true
title: Mean function estimation
---

## Using P-splines

From {{< cite "xiaoAsymptoticPropertiesPenalized2020" >}}.

Let $B$ be a regression matrix containing the $B$-spline basis functions. We assume that the basis contains $K$ functions. Each of the basis function is of order $m$, i.e., of degree $m - 1$. The $B$-spline functions are constructed from equally-spaced knots. We denote by $\alpha \in \mathbb{R}^K$ the corresponding vector of coefficients. 

We aim to approximate the mean function $\mu$ by the spline function $B^{\top}\alpha$. The vector of coefficients can be estimated via the minimization

$$\widehat{\alpha} = \arg\min\_{\alpha} \left[ \sum_{i = 1}^{N} \sum_{j = 1}^{M_i} w_i \left\\{ Y_{i j} - B^\top(T_{i j}) \alpha \right\\}^2 + \lambda \alpha^{\top} P \alpha \right],$$

where $w_i > 0$ are fixed weights to be specified and satisfied $\sum_{i = 1}^{n} N_i w_i = 1$, the penalty matrix $P$ needs to be specifying, as well as the smoothing parameter $\lambda$. In this case, the penalty matrix is based on higher-order differences of the coefficient vector $\alpha$, $P$ is given by $D^{\top} D$, where $D$ is a matrix such that $D \alpha$ forms the $d$th-order differences of $\alpha$.

With the right notation, an estimation of the coefficients $\alpha$ is given by
$$ \widehat{\alpha} = \left( B^{\top} W B + \lambda P \right)^{-1} B^{\top} W Y.$$

The penalized spline estimate of the mean function is thus given by
$$\widehat{\mu}(t) = B^{\top}(t)\widehat{\alpha}.$$

> [!NOTE] 
> Roughly speaking, we apply P-splines smoothing to the aggregation of all points.



{{< bibliography cited >}}
