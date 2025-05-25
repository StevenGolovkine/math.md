---
id: 1746725285-asymptoticproppsplinesfda
aliases:
  - asymptotic_prop_psplines_fda
tags: []
bibFile: assets/bibliography.json
categories:
  - review
  - psplines
  - functional-data
date: "2025-05-08"
params:
  math: true
title: Asymptotic properties of penalized splines for functional data
---

Paper: {{< cite "xiaoAsymptoticPropertiesPenalized2020" >}}


This authors derive the asymptotic properties of the mean and covariance P-splines estimators of the mean and covariance functions of functional datasets. In particular, they study the $L_2$ and uniform convergence of these estimators.




**Conclusion of the paper**: Convergence rates are minimax optimal for the mean function and are comparable to those using other smoothing methods for the covariance function.


## For the mean 

**Comments on Assumption 1:** The (centered) curves are drawn from the same distribution over functions and mutually independent. The covariance function is uniformly bounded, which controls the maximal variability and concentration inequalities. Noise assumption implies clean separation of signal and noise, simplified covariance structure and validity of standard estimation procedures.

**Comments on Assumption 2:** Give a lower and upper bound for the number of basis $K$. The idea is that $K$ grows to $\infty$ (allows to approximate complex functions, control the bias) while $K / n$ goes to $0$ (enough data per parameter to ensure low variance, avoid overfitting). The smoothing parameter shrinks to zero as sample size grows fast enough to let the estimator become more flexible as more data become available, it is needed to guarantee asymptotic consistency and optimal convergence rates.

### Common design

**Comments on Assumption 3:** (a) Fixed and regular grid. (b) Ensure we observe enough points per curve as the sample size increases. (c) Prevents overparametrization of the functional representation.

### Random design

{{< bibliography cited >}}


