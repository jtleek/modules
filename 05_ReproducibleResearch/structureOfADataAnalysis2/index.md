---
title       : Structure of a Data Analysis 
subtitle    : Part 2
author      : Roger D. Peng, Associate Professor of Biostatistics 
job         : Johns Hopkins Bloomberg School of Public Health
logo        : bloomberg_shield.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn   # 
url:
  lib: ../../libraries
  assets: ../../assets
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---





## Steps in a data analysis

* Define the question
* Define the ideal data set
* Determine what data you can access
* Obtain the data
* Clean the data
* Exploratory data analysis
* Statistical prediction/modeling
* Interpret results
* Challenge results
* Synthesize/write up results
* Create reproducible code

---

## Steps in a data analysis

* Define the question
* Define the ideal data set
* Determine what data you can access
* Obtain the data
* Clean the data
* <redtext>Exploratory data analysis</redtext>
* <redtext>Statistical prediction/modeling</redtext>
* <redtext>Interpret results</redtext>
* <redtext>Challenge results</redtext>
* <redtext>Synthesize/write up results</redtext>
* <redtext>Create reproducible code</redtext>



---

## An example

__Start with a general question__

Can I automatically detect emails that are SPAM that are not?

__Make it concrete__

Can I use quantitative characteristics of the emails to classify them as SPAM/HAM?


--- 

## Our data set

<img class=center src=../../assets/img/spamR.png height='400' />

[http://rss.acs.unt.edu/Rdoc/library/kernlab/html/spam.html](http://rss.acs.unt.edu/Rdoc/library/kernlab/html/spam.html)

--- 

## Subsampling our data set
We need to generate a test and training set (prediction)

```r
# If it isn't installed, install the kernlab package
library(kernlab)
data(spam)
# Perform the subsampling
set.seed(3435)
trainIndicator = rbinom(4601,size=1,prob=0.5)
table(trainIndicator)
```

```
trainIndicator
   0    1 
2314 2287 
```

```r
trainSpam = spam[trainIndicator==1,]
testSpam = spam[trainIndicator==0,]
```


---

## Exploratory data analysis

* Look at summaries of the data
* Check for missing data
* Create exploratory plots
* Perform exploratory analyses (e.g. clustering)

---

## Names

```r
names(trainSpam)
```

```
 [1] "make"              "address"           "all"               "num3d"            
 [5] "our"               "over"              "remove"            "internet"         
 [9] "order"             "mail"              "receive"           "will"             
[13] "people"            "report"            "addresses"         "free"             
[17] "business"          "email"             "you"               "credit"           
[21] "your"              "font"              "num000"            "money"            
[25] "hp"                "hpl"               "george"            "num650"           
[29] "lab"               "labs"              "telnet"            "num857"           
[33] "data"              "num415"            "num85"             "technology"       
[37] "num1999"           "parts"             "pm"                "direct"           
[41] "cs"                "meeting"           "original"          "project"          
[45] "re"                "edu"               "table"             "conference"       
[49] "charSemicolon"     "charRoundbracket"  "charSquarebracket" "charExclamation"  
[53] "charDollar"        "charHash"          "capitalAve"        "capitalLong"      
[57] "capitalTotal"      "type"             
```



---

## Head

```r
head(trainSpam)
```

```
   make address  all num3d  our over remove internet order mail receive will people report
1  0.00    0.64 0.64     0 0.32 0.00   0.00        0  0.00 0.00    0.00 0.64   0.00      0
7  0.00    0.00 0.00     0 1.92 0.00   0.00        0  0.00 0.64    0.96 1.28   0.00      0
9  0.15    0.00 0.46     0 0.61 0.00   0.30        0  0.92 0.76    0.76 0.92   0.00      0
12 0.00    0.00 0.25     0 0.38 0.25   0.25        0  0.00 0.00    0.12 0.12   0.12      0
14 0.00    0.00 0.00     0 0.90 0.00   0.90        0  0.00 0.90    0.90 0.00   0.90      0
16 0.00    0.42 0.42     0 1.27 0.00   0.42        0  0.00 1.27    0.00 0.00   0.00      0
   addresses free business email  you credit your font num000 money hp hpl george num650 lab labs
1          0 0.32        0  1.29 1.93   0.00 0.96    0      0  0.00  0   0      0      0   0    0
7          0 0.96        0  0.32 3.85   0.00 0.64    0      0  0.00  0   0      0      0   0    0
9          0 0.00        0  0.15 1.23   3.53 2.00    0      0  0.15  0   0      0      0   0    0
12         0 0.00        0  0.00 1.16   0.00 0.77    0      0  0.00  0   0      0      0   0    0
14         0 0.00        0  0.00 2.72   0.00 0.90    0      0  0.00  0   0      0      0   0    0
16         0 1.27        0  0.00 1.70   0.42 1.27    0      0  0.42  0   0      0      0   0    0
   telnet num857 data num415 num85 technology num1999 parts pm direct cs meeting original project
1       0      0 0.00      0     0          0    0.00     0  0   0.00  0       0      0.0       0
7       0      0 0.00      0     0          0    0.00     0  0   0.00  0       0      0.0       0
9       0      0 0.15      0     0          0    0.00     0  0   0.00  0       0      0.3       0
12      0      0 0.00      0     0          0    0.00     0  0   0.00  0       0      0.0       0
14      0      0 0.00      0     0          0    0.00     0  0   0.00  0       0      0.0       0
16      0      0 0.00      0     0          0    1.27     0  0   0.42  0       0      0.0       0
   re edu table conference charSemicolon charRoundbracket charSquarebracket charExclamation
1   0   0     0          0         0.000            0.000                 0           0.778
7   0   0     0          0         0.000            0.054                 0           0.164
9   0   0     0          0         0.000            0.271                 0           0.181
12  0   0     0          0         0.022            0.044                 0           0.663
14  0   0     0          0         0.000            0.000                 0           0.000
16  0   0     0          0         0.000            0.063                 0           0.572
   charDollar charHash capitalAve capitalLong capitalTotal type
1       0.000    0.000      3.756          61          278 spam
7       0.054    0.000      1.671           4          112 spam
9       0.203    0.022      9.744         445         1257 spam
12      0.000    0.000      1.243          11          184 spam
14      0.000    0.000      2.083           7           25 spam
16      0.063    0.000      5.659          55          249 spam
```


---

## Summaries

```r
table(trainSpam$type)
```

```

nonspam    spam 
   1381     906 
```


---

## Plots

```r
plot(trainSpam$capitalAve ~ trainSpam$type)
```

<div class="rimage center"><img src="fig/unnamed-chunk-5.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" class="plot" /></div>


---

## Plots 

```r
plot(log10(trainSpam$capitalAve + 1) ~ trainSpam$type)
```

<div class="rimage center"><img src="fig/unnamed-chunk-6.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" class="plot" /></div>


---

## Relationships between predictors

```r
plot(log10(trainSpam[,1:4]+1))
```

<div class="rimage center"><img src="fig/unnamed-chunk-7.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" class="plot" /></div>


---

## Clustering




```r
hCluster = hclust(dist(t(trainSpam[,1:57])))
plot(hCluster)
```

<div class="rimage center"><img src="fig/unnamed-chunk-9.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" class="plot" /></div>


---
## New clustering

```r
hClusterUpdated = hclust(dist(t(log10(trainSpam[,1:55]+1))))
plot(hClusterUpdated)
```

<div class="rimage center"><img src="fig/unnamed-chunk-10.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" class="plot" /></div>


---
## Statistical prediction/modeling

* Should be informed by the results of your exploratory analysis
* Exact methods depend on the question of interest
* Transformations/processing should be accounted for when necessary
* Measures of uncertainty should be reported

---
## Statistical prediction/modeling

```r
trainSpam$numType = as.numeric(trainSpam$type)-1
costFunction = function(x,y) sum(x!=(y > 0.5)) 
cvError = rep(NA,55)
library(boot)
for(i in 1:55){
  lmFormula = reformulate(names(trainSpam)[i], response = "numType")
  glmFit = glm(lmFormula,family="binomial",data=trainSpam)
  cvError[i] = cv.glm(trainSpam,glmFit,costFunction,2)$delta[2]
}

## Which predictor has minimum cross-validated error?
names(trainSpam)[which.min(cvError)]
```

```
[1] "charDollar"
```


---

## Get a measure of uncertainty

```r
## Use the best model from the group
predictionModel = glm(numType ~ charDollar,family="binomial",data=trainSpam)

## Get predictions on the test set
predictionTest = predict(predictionModel,testSpam)
predictedSpam = rep("nonspam",dim(testSpam)[1])

## Classify as `spam' for those with prob > 0.5
predictedSpam[predictionModel$fitted > 0.5] = "spam"
```


---

## Get a measure of uncertainty


```r
## Classification table
table(predictedSpam,testSpam$type)
```

```
             
predictedSpam nonspam spam
      nonspam    1346  458
      spam         61  449
```

```r

## Error rate
(61+458)/(1346+458 + 61 + 449)
```

```
[1] 0.2243
```


---

## Interpret results

* Use the appropriate language
  * describes 
  * correlates with/associated with
  * leads to/causes
  * predicts
* Give an explanation
* Interpret coefficients
* Interpret measures of uncertainty

---

## Our example

* The fraction of charcters that are dollar signs can be used to predict if an email is Spam
* Anything with more than 6.6% dollar signs is classified as Spam
* More dollar signs always means more Spam under our prediction
* Our test set error rate was 22.4% 

---

## Challenge results

* Challenge all steps:
  * Question
  * Data source
  * Processing 
  * Analysis 
  * Conclusions
* Challenge measures of uncertainty
* Challenge choices of terms to include in models
* Think of potential alternative analyses 

---

## Synthesize/write-up results

* Lead with the question
* Summarize the analyses into the story 
* Don't include every analysis, include it
  * If it is needed for the story
  * If it is needed to address a challenge
* Order analyses according to the story, rather than chronologically
* Include "pretty" figures that contribute to the story 

---

## In our example

* Lead with the question
  * Can I use quantitative characteristics of the emails to classify them as SPAM/HAM?
* Describe the approach
  * Collected data from UCI -> created training/test sets
  * Explored relationships
  * Choose logistic model on training set by cross validation
  * Applied to test, 78% test set accuracy
* Interpret results
  * Number of dollar signs seems reasonable, e.g. "Make money with Viagra \\$ \\$ \\$ \\$!"
* Challenge results
  * 78% isn't that great
  * I could use more variables
  * Why logistic regression?


---

## Create reproducible code

<img class=center src=../../assets/img/rmarkdown.png height='400' />


