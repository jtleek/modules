---
title       : Exploratory Graphs
subtitle    : 
author      : Roger D. Peng, Associate Professor of Biostatistics 
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

## Why do we use graphs in data analysis? 

* To understand data properties
* To find patterns in data
* To suggest modeling strategies
* To "debug" analyses
* To communicate results

---

## Exploratory graphs

* <redtext>To understand data properties</redtext>
* <redtext>To find patterns in data</redtext>
* <redtext>To suggest modeling strategies</redtext>
* <redtext>To "debug" analyses</redtext>
* To communicate results

---

## Characteristics of exploratory graphs

* They are made quickly
* A large number are made
* The goal is for personal understanding
* Axes/legends are generally cleaned up (later)
* Color/size are primarily used for information

---

## Air Pollution in the United States

* The U.S. Environmental Protection Agency (EPA) sets national ambient
  air quality standards for outdoor air pollution

  * [U.S. National Ambient Air Quality Standards](http://www.epa.gov/air/criteria.html)

* For fine particle pollution (PM2.5), the "annual mean, averaged over
  3 years" cannot exceed $12~\mu g/m^3$.

* Data on daily PM2.5 are available from the U.S. EPA web site

  - [EPA Air Quality System](http://www.epa.gov/ttn/airs/airsaqs/detaildata/downloadaqsdata.htm)

* **Question**: Are there any counties in the U.S. that exceed that
  national standard for fine particle pollution?

---

## Data

Annual average PM2.5 averaged over the period 2008 through 2010


```r
pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric", "character", 
    "character"))
head(pollution)
```

```
##     pm25  fips region
## 1  9.771 01003   east
## 2  9.994 01027   east
## 3 10.689 01033   east
## 4 11.337 01049   east
## 5 12.120 01055   east
## 6 10.828 01069   east
```


Do any counties exceed the standard of $12~\mu g/m^3$?

---

## Simple Summaries of Data


One dimension

* Five-number summary
* Boxplots
* Histograms
* Density plot
* Barplot

---

## Five Number Summary


```r
summary(pollution$pm25)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    3.38    8.55   10.00    9.84   11.40   18.40
```


---

## Boxplot


```r
boxplot(pollution$pm25, col = "blue")
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 



---

## Simple Summaries of Data

Two dimensions

* Multiple/overlayed 1-D plots (Lattice/ggplot2)
* Scatterplots
* Smooth scatterplots

$> 2$ dimensions

* Overlayed/multiple 2-D plots; coplots
* Use color, size, shape to add dimensions
* Spinning plots
* Actual 3-D plots (not that useful)


---


## Further resources

* [R Graph Gallery](http://gallery.r-enthusiasts.com/)
* [ggplot2](http://cran.r-project.org/web/packages/ggplot2/index.html),[ggplot2 basic introduction](http://www.r-bloggers.com/basic-introduction-to-ggplot2/)
* [lattice package](http://cran.r-project.org/web/packages/lattice/index.html),[lattice introduction](http://lmdvr.r-forge.r-project.org/figures/figures.html)
* [R bloggers](http://www.r-bloggers.com/)










