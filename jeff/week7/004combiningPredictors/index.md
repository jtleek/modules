---
title       : Combining predictors
subtitle    : 
author      : Jeffrey Leek, Assistant Professor of Biostatistics 
job         : Johns Hopkins Bloomberg School of Public Health
logo        : bloomberg_shield.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow   # 
url:
  lib: ../../libraries
  assets: ../../assets
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---





## Key ideas

* You can combine classifiers by averaging/voting
* Combining classifiers improves accuracy
* Combining classifiers reduces interpretability

---

## Netflix prize

BellKor = Combination of 107 predictors 

<img class=center src=../../assets/img/netflix.png height=400>

[http://www.netflixprize.com//leaderboard](http://www.netflixprize.com//leaderboard)

---

## Heritage health prize - Progress Prize 1

<img class=center src=../../assets/img/makers.png height=200>
[Market Makers](https://kaggle2.blob.core.windows.net/wiki-files/327/e4cd1d25-eca9-49ca-9593-b254a773fe03/Market%20Makers%20-%20Milestone%201%20Description%20V2%201.pdf)

<img class=center src=../../assets/img/mestrom.png height=200>
[Mestrom](https://kaggle2.blob.core.windows.net/wiki-files/327/09ccf652-8c1c-4a3d-b979-ce2369c985e4/Willem%20Mestrom%20-%20Milestone%201%20Description%20V2%202.pdf)


---

## Basic intuition - majority vote

Suppose we have 5 completely independent classifiers

If accuracy is 70% for each:
  * $10\times(0.7)^3(0.3)^2 + 5\times(0.7)^4(0.3)^2 + (0.7)^5$
  * 83.7% majority vote accuracy

With 101 independent classifiers
  * 99.9% majority vote accuracy
  

---

## Approaches for combining classifiers

1. Bagging (see previous lecture)
2. [Boosting](http://en.wikipedia.org/wiki/AdaBoost)
3. Combining different classifiers

---

## Example


```r
#library(devtools)
#install_github("medley","mewo2")
library(medley)
set.seed(453234)
y <- rnorm(1000)
x1 <- (y > 0); x2 <- y*rnorm(1000)
x3 <- rnorm(1000,mean=y,sd=1); x4 <- (y > 0) & (y < 3)
x5 <- rbinom(1000,size=4,prob=exp(y)/(1+exp(y)))
x6 <- (y < -2) | (y > 2)
data <- data.frame(y=y,x1=x1,x2=x2,x3=x3,x4=x4,x5=x5,x6=x6)
train <- sample(1:1000,size=500)
trainData <- data[train,]; testData <- data[-train,]
```


---

## Basic models


```r
library(tree)
lm1 <- lm(y ~.,data=trainData)
rmse(predict(lm1,data=testData),testData$y)
tree1 <- tree(y ~.,data=trainData)
rmse(predict(tree1,data=testData),testData$y)
tree2 <- tree(y~.,data=trainData[sample(1:dim(trainData)[1]),])
```


---

## Combining models


```r
combine1 <- predict(lm1,data=testData)/2 + predict(tree1,data=testData)/2
rmse(combine1,testData$y)
```

```
[1] 1.281
```

```r
combine2 <- (predict(lm1,data=testData)/3 + predict(tree1,data=testData)/3 
             + predict(tree2,data=testData)/3)
rmse(combine2,testData$y)
```

```
[1] 1.175
```


---

## Medley package


```r
#library(devtools)
#install_github("medley","mewo2")
library(medley)
library(e1071)
library(randomForests)
x <- trainData[,-1]
y <- trainData$y
newx <- testData[,-1]
```



[http://www.kaggle.com/users/10748/martin-o-leary](http://www.kaggle.com/users/10748/martin-o-leary)

---

## Blending models (part 1)


```r
m <- create.medley(x, y, errfunc=rmse);
for (g in 1:10) {
  m <- add.medley(m, svm, list(gamma=1e-3 * g));
}
```


---

## Blending models (part 2)


```r
for (mt in 1:2) {
  m <- add.medley(m, randomForest, list(mtry=mt));
}
m <- prune.medley(m, 0.8);
rmse(predict(m,newx),testData$y)
```

```
Sampled... 96.00 %:  1 svm (gamma = 0.01) 
1.00 %:  2 svm (gamma = 0.009) 
1.00 %:  5 svm (gamma = 0.006) 
1.00 %:  6 svm (gamma = 0.005) 
1.00 %:  7 svm (gamma = 0.004) 
CV error: 0.4956 
```

```
[1] 0.4694
```


---

## Notes and further resources

__Notes__:

* Even simple blending can be useful
* Majority vote is typical model for binary/multiclass data
* Makes models hard to interpret

__Further resources__:

* [Bayesian model averaging](http://www.research.att.com/~volinsky/bma.html)
* [Heritage health prize](https://www.heritagehealthprize.com/c/hhp/details/milestone-winners)
* [Netflix model blending](http://www2.research.att.com/~volinsky/papers/chance.pdf)
