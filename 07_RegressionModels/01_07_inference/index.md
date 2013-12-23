---
title       : Inference in regression
subtitle    : 
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


## Recall our model and fitted values
* Consider the model
$$
Y_i = \beta_0 + \beta_1 X_i + \epsilon_i
$$
* $\epsilon \sim N(0, \sigma^2)$. 
* We assume that the true model is known.
* We assume that you've seen confidence intervals and hypothesis tests before.
* $\hat \beta_0 = \bar Y - \hat \beta_1 \bar X$
* $\hat \beta_1 = Cor(Y, X) \frac{Sd(Y)}{Sd(X)}$.

---
## Review
* Statistics like $\frac{\hat \theta - \theta}{\sqrt{\mbox{Var}(\hat \theta)}}$ often have the following properties.
    1. Is normally distributed and has a finite sample Student's T distribution if the estimated variance is replaced with a sample estimate (under normality assumptions).
    3. Can be used to test $H_0 : \theta = \theta_0$ versus $H_a : \theta \geq, \leq, \neq \theta$.
    4. Can be used to create a confidence interval for $\theta$ via $\hat \theta \pm Q_{1-\alpha/2} \sqrt{\mbox{Var}(\hat \theta)}$
    where $Q_{1-\alpha/2}$ is the relevant quantile from either a normal or T distribution.
* In the case of regression with iid sampling assumptions and normal errors, our inferences will follow
very similarily to what you saw in your inference class.
* We won't cover asymptotics for regression analysis, but suffice it to say that under assumptions 
on the ways in which the $X$ values are collected, the iid sampling model, and mean model, 
the normal results hold to create intervals and confidence intervals.
