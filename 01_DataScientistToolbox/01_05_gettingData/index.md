---
title       : Getting and Cleaning Data Overview
author      : Jeffrey Leek
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

## Getting and Cleaning Data Content

* Raw vs. tidy data
* Downloading files
* Reading data
  * Excel, XML, JSON, MySQL, HDF5, Web, ...
* Merging data
* Reshaping data
* Summarizing data
* Finding and replacing
* Data resources

---

## Connecting and listing databases


```r
ucscDb <- dbConnect(MySQL(), user = "genome", host = "genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;")
dbDisconnect(ucscDb)
result
```


---

## Merging data - merge()


```r
mergedData2 <- merge(reviews, solutions, by.x = "solution_id", by.y = "id", 
    all = TRUE)
head(mergedData2[, 1:6], 3)
reviews[1, 1:6]
```


---

## Raw versus processed data

__Raw data__
* The original source of the data
* Often hard to use for data analyses
* Data analysis _includes_ processing
* Raw data may only need to be processed once

[http://en.wikipedia.org/wiki/Raw_data](http://en.wikipedia.org/wiki/Raw_data)

__Processed data__
* Data that is ready for analysis
* Processing can include merging, subsetting, transforming, etc.
* There may be standards for processing
* All steps should be recorded 

[http://en.wikipedia.org/wiki/Computer_data_processing](http://en.wikipedia.org/wiki/Computer_data_processing)
