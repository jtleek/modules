---
title       : Reading local files
subtitle    : 
author      : Jeffrey Leek 
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

## Get/set your working directory

Roger's lectures [windows](http://www.youtube.com/watch?v=XBcvH1BpIBo&list=PLjTlxb-wKvXNSDfcKPFH2gzHGyjpeCZmJ&index=2), [mac](http://www.youtube.com/watch?v=8xT3hmJQskU&list=PLjTlxb-wKvXNSDfcKPFH2gzHGyjpeCZmJ&index=1)
Andrew Jaffe's [lecture notes](https://dl.dropbox.com/u/7710864/courseraPublic/otherResources/lecture1/index.html)

```r
> getwd()
[1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/coursera/week2/004gettingData1"
> setwd("/Users/jtleek/Dropbox/Jeff/teaching/2013/coursera/week2/004gettingData1/data")
> getwd()
[1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/coursera/week2/004gettingData1/data"
```

Important difference with Windows: 


```r
setwd("C:\\Users\\Andrew\\Downloads")
```



---

## Get/set your working directory (relative paths)


```r
getwd()
```

```
## [1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/modules/03_ObtainingData/004readingLocalFiles"
```

```r
setwd("./data")
```

```
## Error: cannot change working directory
```

```r
getwd()
```

```
## [1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/modules/03_ObtainingData/004readingLocalFiles"
```

```r
setwd("../")
getwd()
```

```
## [1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/modules/03_ObtainingData"
```



---

## Get/set your working directory (absolute paths)

```r
> getwd()
[1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/coursera/week2/004gettingData1"
> setwd("/Users/jtleek/Dropbox/Jeff/teaching/2013/coursera/week2/004gettingData1/data")
> getwd()
[1] "/Users/jtleek/Dropbox/Jeff/teaching/2013/coursera/week2/004gettingData1/data"
```
