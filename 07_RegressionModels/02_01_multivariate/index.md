---
title       : Multivariable regression
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


## Multivariate regression analyses
* If I were to present evidence of a relationship between 
breath mint useage (mints per day, X) and pulmonary function
(measured in FEV), you would be skeptical.
  * Likely, you would say, 'smokers tend to use more breath mints than non smokers, smoking is related to a loss in pulmonary function. That's probably the culprit.'
  * If asked what would convince you, you would likely say, 'If non-smoking breath mint users had lower lung function than non-smoking non-breath mint users and, similarly, if smoking breath mint users had lower lung function than smoking non-breath mint users, I'd be more inclined to believe you'.
* In other words, to even consider my results, I would have to demonstrate that they hold while holding smoking status fixed.

---
## Multivariate regression analyses
* An insurance company is interested in how last year's claims can predict a person's time in the hospital this year. 
  * They want to use an enormous amount of data contained in claims to predict a single number. Simple linear regression is not equipped to handle more than one predictor.
* How can one generalize SLR to incoporate lots of regressors for
the purpose of prediction?
* What are the consequences of adding lots of regressors? 
  * Surely there must be consequences to throwing variables in that aren't related to Y?
  * Surely there must be consequences to omitting variables that are?

---
## The linear model
$$
Y_i = \beta_0 + \beta_1 X_{1i} + \beta_2 X_{2i} + \ldots +
\beta_{p-1} X_{(p-1), i} + \epsilon_{i} 
$$

---
## Other amazing things that you can accomplish with linear models
* Decompose a signal into its harmonics.
* Flexibly fit complex functions.
* Fit factor variables as predictors.
* Uncover complex multivariate relationships with the response.

