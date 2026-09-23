---
id: 1790174442-gaussian-integration
aliases:
  - gaussian_integration
tags: []
bibFile: assets/bibliography.json
categories:
  - probability
date: 2026-09-23
params:
  math: true
title: "Gaussian integration"
---

Let $Y$ be a $\mathcal{N}(0, 1)$ real random variable and let $g: \mathbb{R} \mapsto \mathbb{R}$ be an indefinite integral of the Lebesgue measurable function $g^\prime$, essentially the derivative of $g$ (meaning that $g$ is absolutely continuous). Assume $E | g^\prime(Y) | < \infty$. Then,

$$
E(g^\prime(Y)) = E(Yg(Y))
$$

Let

$$
\phi(y) = \frac{1}{\sqrt{2\pi}} e^{-y^2/2}
$$

denote the density of the standard normal distribution, and $\phi^\prime(y) = -y\phi(y)$. Since $\mathbb{E}[Y]=0,$ we have

$$
\mathbb E[Yg(Y)] = \mathbb E\left[Y\lbrace g(Y)-g(0)\rbrace\right].
$$

Therefore,

$$
\mathbb E[Yg(Y)] = \int\_{-\infty}^{\infty} y\phi(y)\lbrace g(y)-g(0)\rbrace\\,dy.
$$

Because $g$ is absolutely continuous,

$$
g(y)-g(0) = \int\_0^y g^{\prime}(x)\\,dx, \quad \text{for}\quad y > 0,
$$

$$
g(y)-g(0) = -\int\_y^0 g^{\prime}(x)\\,dx \quad \text{for}\quad y < 0.
$$

Splitting the integral at zero gives

$$
\mathbb E[Yg(Y)] = \int\_0^\infty y\phi(y) \left( \int\_0^y g^{\prime}(x)\\,dx \right)dy - \int\_{-\infty}^0 y\phi(y) \left( \int\_y^0 g^{\prime}(x)\\,dx \right)dy.
$$

We first consider the positive half-line. Define

$$
I\_+ = \int\_0^\infty y\phi(y) \left( \int\_0^y g^{\prime}(x)\\,dx \right)dy.
$$

The domain of integration is $0\leq x\leq y<\infty.$
Using Fubini's theorem, we may reverse the order of integration and obtain

$$
I\_+ = \int\_0^\infty g^{\prime}(x) \left( \int\_x^\infty y\phi(y)\\,dy \right)dx.
$$

As, $\phi^{\prime}(y) = -y\phi(y),$ so that $y\phi(y)=-\phi^{\prime}(y).$ Hence

$$
\int\_x^\infty y\phi(y)\\,dy = -\int\_x^\infty \phi^{\prime}(y)\\,dy.
$$

Since $\phi(y)\to 0\text{ as }y\to\infty,$ we obtain

$$
\int\_x^\infty y\phi(y)\\,dy = \phi(x).
$$

Consequently,

$$
I\_+ = \int\_0^\infty g^{\prime}(x)\phi(x)\\,dx.
$$

We now consider the negative half-line. Define

$$
I\_- = - \int\_{-\infty}^0 y\phi(y) \left( \int\_y^0 g^{\prime}(x)\\,dx \right)dy.
$$

The domain of integration is $-\infty<y\leq x\leq 0.$
Again using Fubini's theorem,

$$
I\_- = - \int\_{-\infty}^0 g^{\prime}(x) \left( \int\_{-\infty}^x y\phi(y)\\,dy \right)dx.
$$

Using $y\phi(y)=-\phi^{\prime}(y),$ we have

$$
\int\_{-\infty}^x y\phi(y)\\,dy = -\int\_{-\infty}^x \phi^{\prime}(y)\\,dy.
$$

Since $\phi(y)\to 0\text{ as }y\to-\infty,$ it follows that

$$
\int\_{-\infty}^x y\phi(y)\\,dy = -\phi(x).
$$

Thus,

$$
I\_- = \int\_{-\infty}^0 g^{\prime}(x)\phi(x)\\,dx.
$$

Combining the two terms,

$$
\mathbb E[Yg(Y)] = I\_++I\_-,
$$

and therefore

$$
\mathbb E[Yg(Y)] = \int\_0^\infty g^{\prime}(x)\phi(x)\\,dx + \int\_{-\infty}^0 g^{\prime}(x)\phi(x)\\,dx.
$$

Hence

$$
\mathbb E[Yg(Y)] = \int\_{-\infty}^{\infty} g^{\prime}(x)\phi(x)\\,dx.
$$

The right-hand side is precisely $\mathbb E[g^{\prime}(Y)].$ Therefore, $\mathbb E[g^{\prime}(Y)] = \mathbb E[Yg(Y)].$

It remains only to justify the use of Fubini's theorem, which replace the use of integration by parts. On the positive half-line,

$$
\int\_0^\infty y\phi(y) \left( \int\_0^y |g^{\prime}(x)|\\,dx \right)dy
$$

can be rewritten, using Tonelli's theorem, as

$$
\int\_0^\infty |g^{\prime}(x)| \left( \int\_x^\infty y\phi(y)\\,dy \right)dx.
$$

Since

$$
\int\_x^\infty y\phi(y)\\,dy = \phi(x),
$$

this is equal to

$$
\int\_0^\infty |g^{\prime}(x)|\phi(x)\\,dx,
$$

which is finite by the assumption $\mathbb E|g^{\prime}(Y)|<\infty.$
The same argument on the negative half-line gives

$$
\int\_{-\infty}^0 |g^{\prime}(x)|\phi(x)\\,dx < \infty.
$$

Thus all the required changes in the order of integration are justified.
