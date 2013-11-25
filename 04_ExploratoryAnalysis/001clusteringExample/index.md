---
title       : Clustering example
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





## Samsung Galaxy S3

<img class=center src=../../assets/img/samsung.png height=450>

[http://www.samsung.com/global/galaxys3/](http://www.samsung.com/global/galaxys3/)


---

## Samsung Data

<img class=center src=../../assets/img/ucisamsung.png height=450>

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


---

## Slightly processed data


```r
download.file("https://dl.dropboxusercontent.com/u/7710864/courseraPublic/samsungData.rda"
              ,destfile="./data/samsungData.rda",method="curl")
load("./data/samsungData.rda")
names(samsungData)[1:12]
```

```
 [1] "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y" "tBodyAcc-mean()-Z" "tBodyAcc-std()-X" 
 [5] "tBodyAcc-std()-Y"  "tBodyAcc-std()-Z"  "tBodyAcc-mad()-X"  "tBodyAcc-mad()-Y" 
 [9] "tBodyAcc-mad()-Z"  "tBodyAcc-max()-X"  "tBodyAcc-max()-Y"  "tBodyAcc-max()-Z" 
```

```r
table(samsungData$activity)
```

```

  laying  sitting standing     walk walkdown   walkup 
    1407     1286     1374     1226      986     1073 
```


---

## Plotting average acceleration for first subject


```r
par(mfrow=c(1,2))
numericActivity <- as.numeric(as.factor(samsungData$activity))[samsungData$subject==1]
plot(samsungData[samsungData$subject==1,1],pch=19,col=numericActivity,ylab=names(samsungData)[1])
plot(samsungData[samsungData$subject==1,2],pch=19,col=numericActivity,ylab=names(samsungData)[2])
legend(150,-0.1,legend=unique(samsungData$activity),col=unique(numericActivity),pch=19)
```

<div class="rimage center"><img src="fig/processData.png" title="plot of chunk processData" alt="plot of chunk processData" class="plot" /></div>


---

## Clustering based just on average acceleration



```r
source("http://dl.dropbox.com/u/7710864/courseraPublic/myplclust.R")
distanceMatrix <- dist(samsungData[samsungData$subject==1,1:3])
hclustering <- hclust(distanceMatrix)
myplclust(hclustering,lab.col=numericActivity)
```

<div class="rimage center"><img src="fig/unnamed-chunk-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" class="plot" /></div>



---

## Plotting max acceleration for the first subject


```r
par(mfrow=c(1,2))
plot(samsungData[samsungData$subject==1,10],pch=19,col=numericActivity,ylab=names(samsungData)[10])
plot(samsungData[samsungData$subject==1,11],pch=19,col=numericActivity,ylab=names(samsungData)[11])
```

<div class="rimage center"><img src="fig/unnamed-chunk-2.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" class="plot" /></div>


---

## Clustering based on maximum acceleration


```r
source("http://dl.dropbox.com/u/7710864/courseraPublic/myplclust.R")
distanceMatrix <- dist(samsungData[samsungData$subject==1,10:12])
hclustering <- hclust(distanceMatrix)
myplclust(hclustering,lab.col=numericActivity)
```

<div class="rimage center"><img src="fig/unnamed-chunk-3.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" class="plot" /></div>




---

## Singular value decomposition


```r
svd1 = svd(scale(samsungData[samsungData$subject==1,-c(562,563)]))
par(mfrow=c(1,2))
plot(svd1$u[,1],col=numericActivity,pch=19)
plot(svd1$u[,2],col=numericActivity,pch=19)
```

<div class="rimage center"><img src="fig/svdChunk.png" title="plot of chunk svdChunk" alt="plot of chunk svdChunk" class="plot" /></div>


---

## Find maximum contributor


```r
plot(svd1$v[,2],pch=19)
```

<div class="rimage center"><img src="fig/unnamed-chunk-4.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" class="plot" /></div>



---

##  New clustering with maximum contributer


```r
maxContrib <- which.max(svd1$v[,2])
distanceMatrix <- dist(samsungData[samsungData$subject==1,c(10:12,maxContrib)])
hclustering <- hclust(distanceMatrix)
myplclust(hclustering,lab.col=numericActivity)                             
```

<div class="rimage center"><img src="fig/unnamed-chunk-5.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" class="plot" /></div>



---

##  New clustering with maximum contributer


```r
names(samsungData)[maxContrib]                          
```

```
[1] "fBodyAcc-meanFreq()-Z"
```


---

##  K-means clustering (nstart=1, first try)


```r
kClust <- kmeans(samsungData[samsungData$subject==1,-c(562,563)],centers=6)
table(kClust$cluster,samsungData$activity[samsungData$subject==1])
```

```
   
    laying sitting standing walk walkdown walkup
  1      0      34       50    0        0      0
  2     27       0        0    0        0      0
  3      0       0        0    0        0     53
  4      9       2        0    0        0      0
  5     14      11        3    0        0      0
  6      0       0        0   95       49      0
```




---

##  K-means clustering (nstart=1, second try)


```r
kClust <- kmeans(samsungData[samsungData$subject==1,-c(562,563)],centers=6,nstart=1)
table(kClust$cluster,samsungData$activity[samsungData$subject==1])
```

```
   
    laying sitting standing walk walkdown walkup
  1      0       0        0   35        0      0
  2      5       0        0    0        0     53
  3     19      13        5    0        0      0
  4     26      34       48    0        0      0
  5      0       0        0    0       48      0
  6      0       0        0   60        1      0
```



---

##  K-means clustering (nstart=100, first try)


```r
kClust <- kmeans(samsungData[samsungData$subject==1,-c(562,563)],centers=6,nstart=100)
table(kClust$cluster,samsungData$activity[samsungData$subject==1])
```

```
   
    laying sitting standing walk walkdown walkup
  1     29       0        0    0        0      0
  2      0       0        0   95        0      0
  3      0       0        0    0       49      0
  4      3       0        0    0        0     53
  5     18      10        2    0        0      0
  6      0      37       51    0        0      0
```




---

##  K-means clustering (nstart=100, second try)


```r
kClust <- kmeans(samsungData[samsungData$subject==1,-c(562,563)],centers=6,nstart=100)
table(kClust$cluster,samsungData$activity[samsungData$subject==1])
```

```
   
    laying sitting standing walk walkdown walkup
  1      0      37       51    0        0      0
  2      0       0        0    0       49      0
  3      0       0        0   95        0      0
  4     29       0        0    0        0      0
  5      3       0        0    0        0     53
  6     18      10        2    0        0      0
```


---

##  Cluster 1 Variable Centers (Laying)


```r
plot(kClust$center[1,1:10],pch=19,ylab="Cluster Center",xlab="")
```

<div class="rimage center"><img src="fig/unnamed-chunk-9.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" class="plot" /></div>



---

##  Cluster 2 Variable Centers (Walking)


```r
plot(kClust$center[6,1:10],pch=19,ylab="Cluster Center",xlab="")
```

<div class="rimage center"><img src="fig/unnamed-chunk-10.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" class="plot" /></div>



