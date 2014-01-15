---
title       : Structure of a Data Analysis 
subtitle    : Part 1
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

* <redtext>Define the question</redtext>
* <redtext>Define the ideal data set</redtext>
* <redtext>Determine what data you can access</redtext>
* <redtext>Obtain the data</redtext>
* <redtext>Clean the data </redtext>
* Exploratory data analysis
* Statistical prediction/modeling
* Interpret results
* Challenge results
* Synthesize/write up results
* Create reproducible code


--- 

## The key challenge in data analysis

"Ask yourselves, what problem have you solved, ever, that was worth solving, where you knew all of the given information in advance? Where you didn’t have a surplus of information and have to filter it out, or you didn’t have insufficient information and have to go find some?"

<img src=../../assets/img/meyer.jpg height='350' /> [Dan Myer, Mathematics Educator](http://www.ted.com/talks/dan_meyer_math_curriculum_makeover.html)



---

## Defining a question

<img class=center src=../../assets/img/stat-projects.jpg height='400' />

1. Statistical methods development
2. [Danger zone!!!](http://www.drewconway.com/zia/?p=2378)
3. Proper data analysis 


---

## An example

__Start with a general question__

Can I automatically detect emails that are SPAM that are not?

__Make it concrete__

Can I use quantitative characteristics of the emails to classify them as SPAM/HAM?

---

## Define the ideal data set

* The data set may depend on your goal
  * Descriptive - a whole population
  * Exploratory - a random sample with many variables measured
  * Inferential - the right population, randomly sampled
  * Predictive - a training and test data set from the same population
  * Causal - data from a randomized study
  * Mechanistic - data about all components of the system
  

---

## Our example

<img class=center src=../../assets/img/datacenter.png height='400' />
[http://www.google.com/about/datacenters/inside/](http://www.google.com/about/datacenters/inside/)


---

## Determine what data you can access

* Sometimes you can find data free on the web
* Other times you may need to buy the data
* Be sure to respect the terms of use
* If the data don't exist, you may need to generate it yourself


---

## Back to our example

<img class=center src=../../assets/img/security.png height='400' />

[Google data center security](http://www.youtube.com/watch?v=1SCZzgfdTBo)


---

## A possible solution


<img class=center src=../../assets/img/uci.png height='400' />

[http://archive.ics.uci.edu/ml/datasets/Spambase](http://archive.ics.uci.edu/ml/datasets/Spambase)


---

## Obtain the data

* Try to obtain the raw data
* Be sure to reference the source
* Polite emails go a long way
* If you will load the data from an internet source, record the url and time accessed

---

## Our data set

<img class=center src=../../assets/img/spamR.png height='400' />

[http://rss.acs.unt.edu/Rdoc/library/kernlab/html/spam.html](http://rss.acs.unt.edu/Rdoc/library/kernlab/html/spam.html)


---

## Clean the data

* Raw data often needs to be processed
* If it is pre-processed, make sure you understand how
* Understand the source of the data (census, sample, convenience sample, etc.)
* May need reformating, subsampling - record these steps
* __Determine if the data are good enough__ - if not, quit or change data

---

## Our cleaned data set


```r
# If it isn't installed, install the kernlab package
library(kernlab)
data(spam)
dim(spam)
```

```
[1] 4601   58
```



[http://rss.acs.unt.edu/Rdoc/library/kernlab/html/spam.html](http://rss.acs.unt.edu/Rdoc/library/kernlab/html/spam.html)

---

## Subsampling our data set
We need to generate a test and training set (prediction)

```r
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
dim(trainSpam)
```

```
[1] 2287   58
```

```r

```


