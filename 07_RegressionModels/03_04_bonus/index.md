---
title       : Bonus content
subtitle    : Regression models
author      : Brian Caffo, PhD
job         : Johns Hopkins Bloomberg School of Public Health
logo        : bloomberg_shield.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
url:
  lib: ../../libraries
  assets: ../../assets
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---



## How to fit functions using linear models
* Consider a model $Y_i = f(X_i) + \epsilon$. 
* How can we fit such a model using linear models (called scatterplot smoothing)
* Consider the model 
  $$
  Y_i = \beta_0 + \beta_1 X_i + \sum_{k=1}^d (x_i - \xi_k)_+ \gamma_k + \epsilon_{i}
  $$
where $(a)_+ = a$ if $a > 0$ and $0$ otherwise and $\xi_1 \leq ... \leq \xi_d$ are known knot points.
* Prove to yourelf that the mean function
$$
\beta_0 + \beta_1 X_i + \sum_{k=1}^d (x_i - \xi_k)_+ \gamma_k
$$
is continuous at the knot points.

---
## Simulated example

```r
n <- 500; x <- seq(0, 4 * pi, length = n); y <- sin(x) + rnorm(n, sd = .3)
knots <- seq(0, 8 * pi, length = 20); 
splineTerms <- sapply(knots, function(knot) (x > knot) * (x - knot))
xMat <- cbind(1, x, splineTerms)
yhat <- predict(lm(y ~ xMat - 1))
plot(x, y, frame = false, pch = 21, bg = "lightblue", cex = 2)
lines(x, yhat, col = "red", lwd = 2)
```

<div class="rimage center"><img src="fig/unnamed-chunk-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" class="plot" /></div>


---
## Adding squared terms
* Adding squared terms makes it continuously differentiable at the knot points.
* Adding cubic terms makes it twice continuously differentiable at the knot points; etcetera.
$$
  Y_i = \beta_0 + \beta_1 X_i + \beta_2 X_i^2 + \sum_{k=1}^d (x_i - \xi_k)_+^2 \gamma_k + \epsilon_{i}
$$

---

```r
splineTerms <- sapply(knots, function(knot) (x > knot) * (x - knot)^2)
xMat <- cbind(1, x, x^2, splineTerms)
yhat <- predict(lm(y ~ xMat - 1))
plot(x, y, frame = false, pch = 21, bg = "lightblue", cex = 2)
lines(x, yhat, col = "red", lwd = 2)
```

<div class="rimage center"><img src="fig/unnamed-chunk-2.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" class="plot" /></div>


---
## Notes
* The collection of regressors is called a basis.
  * People have spent **a lot** of time thinking about bases for this kind of problem. So, consider this as just a teaser.
* Single knot point terms can fit hockey stick like processes.
* These bases can be used in GLMs as well.
* An issue with these approaches is the large number of parameters introduced. 
  * Requires some method of so called regularization.
  
---
## Harmonics using linear models


---
## Propensity scores


