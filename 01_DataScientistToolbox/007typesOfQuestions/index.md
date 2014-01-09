---
title       : What is data? 
subtitle    : 
author      : Jeffrey Leek, Assistant Professor of Biostatistics 
job         : Johns Hopkins Bloomberg School of Public Health
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn   # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Definition of data
<q>Data are values of qualitative or quantitative variables, belonging to a set of items.</q>

[http://en.wikipedia.org/wiki/Data](http://en.wikipedia.org/wiki/Data)

---

## Definition of data
<q>Data are values of <redtext>qualitative</redtext> or <redtext>quantitative</redtext> variables, belonging to a set of items.</q>

[http://en.wikipedia.org/wiki/Data](http://en.wikipedia.org/wiki/Data)

---

## Definition of data
<q>Data are values of qualitative or quantitative <redtext>variables</redtext>, belonging to a set of items.</q>

[http://en.wikipedia.org/wiki/Data](http://en.wikipedia.org/wiki/Data)


---

## Definition of data
<q>Data are values of qualitative or quantitative variables, belonging to a <redtext>set of items</redtext>.</q>

[http://en.wikipedia.org/wiki/Data](http://en.wikipedia.org/wiki/Data)

---


## Where do data come from?
<img class=center src=assets/img/clinical.jpg height='80%'/>

[http://www.alzinfo.org/treatment-care/clinical-trials](http://www.alzinfo.org/treatment-care/clinical-trials)

---

## Where do data come from? 

<img class=center src=assets/img/fuelband.jpeg height='80%'/>

[http://insider.nike.com/uk/equipment/nike-fuelband-2646/](http://insider.nike.com/uk/equipment/nike-fuelband-2646/)

---

## Where do data come from?
<img class=center src=assets/img/hiseq.jpg height='80%'/>

[http://www.illumina.com.cn/support/sequencing/sequencing_instruments/hiseq_1000.asp](http://www.illumina.com.cn/support/sequencing/sequencing_instruments/hiseq_1000.asp)

---

## Where do data come from?
<img class=center src=assets/img/chrome.jpg height='80%'/>

[http://www.google.com/chrome/intl/en-GB/landing_tv.html](http://www.google.com/chrome/intl/en-GB/landing_tv.html)

---

## Where do data come from?
<img class=center src=assets/img/target.jpg height='80%'/>

[http://www.treesfullofmoney.com/www.treesfullofmoney.com/?p=523](http://www.treesfullofmoney.com/www.treesfullofmoney.com/?p=523)


---

## Where do data come from?
<img class=center src=assets/img/restaurant.png height='80%'/>

---

## What do data look like? 

<img class=center src=assets/img/excel.png height='80%'/>

---

## What do data look like? 

<img class=center src=assets/img/twitter.png height='80%'/>

[https://dev.twitter.com/docs/api/1/get/blocks/blocking](https://dev.twitter.com/docs/api/1/get/blocks/blocking)

---

## What do data look like? 

<img class=center src=assets/img/fastq.png height='80%'/>


[http://brianknaus.com/software/srtoolbox/s_4_1_sequence80.txt](http://brianknaus.com/software/srtoolbox/s_4_1_sequence80.txt)

---

## How much is there?

<img class=center src=assets/img/howmuch.png height='80%'/>

[http://mashable.com/2011/06/28/data-infographic/](http://mashable.com/2011/06/28/data-infographic/)

---

## How do we write about data?

* Each data point is usually represented by an upper-case letter. For example, $H$ for height, $W$ for weight. 
* If there are more than one data point of the same type we use subscripts $H_1$ for the first person's height,$H_2$ for the second person's height,$H_3$ for the third person's height and so on.  
* Sometimes it is more compact to right $X_1$ for height and $X_2$ for weight. Then we need another subscript for the individual data point, so you will see things like $X_{11}$ for the height of the first person. 
* In many textbooks, you will see the variable $Y$ used to represent general outcomes. 
* In this course we will try to use representative letters when possible. 

---

## How do we describe data in R?

If you have just one number, you can assign it to a variable. 


```r
height = 3
height
```

```
## [1] 3
```


Or, if you have more than one you can assign it to a vector.


```r
heights = c(3, 4, 5, 1)
heights
```

```
## [1] 3 4 5 1
```



For more information see the [Data types lecture](http://www.youtube.com/watch?v=5AQM-yUX9zg&list=PLjTlxb-wKvXNSDfcKPFH2gzHGyjpeCZmJ&index=5)

---

## What if we have more than one variable?

We can use a data frame to store multiple variables, as long as they have the same length. 


```r
dataFrame = data.frame(heights = c(3, 4, 5, 1), weights = c(4, 5, 5, 6))
dataFrame
```

```
##   heights weights
## 1       3       4
## 2       4       5
## 3       5       5
## 4       1       6
```

```r
dataFrame$heights
```

```
## [1] 3 4 5 1
```


---

## What about big data? 

<img class=center src=assets/img/bigdata.png height='80%'/>

---

## Depends on your perspective

<img class=center src=assets/img/ibm350.jpg height='80%'/>

---

## Why big data now?

<img class=center src=assets/img/milgram.jpg height='80%'/>

[Travers and Milgram (1969) Sociometry](http://www.jstor.org/discover/10.2307/2786545?uid=3739704&uid=2&uid=4&uid=3739256&sid=21101674727517)

---

## Why big data now?

<img class=center src=assets/img/leskovec.jpg height='80%'/>

[Leskovec and Horvitz WWW '08](http://arxiv.org/abs/0803.0939)


---

## Big or small - you need the right data
<q>The data may not contain the answer. The combination of some data and an aching desire for an answer does not ensure that a reasonable answer can be extracted from a given body of data... </q> 

[Tukey](http://en.wikipedia.org/wiki/John_Tukey)


---

## Big or small - you need the right data

<q>...no matter how big the data are.</q>

[Leek](http://www1.usu.edu/utahstatetoday/images/mar%2003/JeffLeek.jpg)




