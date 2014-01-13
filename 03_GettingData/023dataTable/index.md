---
title       : Using data.table
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





## data.table

* Inherets from data.frame
  * All functions that accept data.frame work on data.table
* Written in C so it is much faster
* Much, much faster at subsetting, group, and updating
* The latest development version contains new functions like `melt` and `dcast` for data.tables 
  * [https://r-forge.r-project.org/scm/viewvc.php/pkg/NEWS?view=markup&root=datatable](https://r-forge.r-project.org/scm/viewvc.php/pkg/NEWS?view=markup&root=datatable)
* Here is a list of differences between data.table and data.frame
  * [http://stackoverflow.com/questions/13618488/what-you-can-do-with-data-frame-that-you-cant-in-data-table](http://stackoverflow.com/questions/13618488/what-you-can-do-with-data-frame-that-you-cant-in-data-table)
* Notes based on Raphael Gottardo's notes [https://github.com/raphg/Biostat-578/blob/master/Advanced_data_manipulation.Rpres](https://github.com/raphg/Biostat-578/blob/master/Advanced_data_manipulation.Rpres), who got them from Kevin Ushey. 


---

## Create data tables just like data frames


```r
library(data.table)
DF = data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,3)
```

```
        x y        z
1 -0.3670 a  0.37854
2  0.8844 a -0.91105
3 -1.0733 a -0.08484
```

```r
DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)
```

```
         x y       z
1: -2.3073 a -0.7198
2: -0.8876 a  0.2831
3: -0.4068 a  0.4043
```


---

## See all the data tables in memory


```r
tables()
```

```
     NAME NROW MB COLS  KEY
[1,] DT      9 1  x,y,z    
Total: 1MB
```


---

## Subsetting rows


```r
DT[2,]
```

```
         x y      z
1: -0.8876 a 0.2831
```

```r
DT[DT$y=="a",]
```

```
         x y       z
1: -2.3073 a -0.7198
2: -0.8876 a  0.2831
3: -0.4068 a  0.4043
```


---

## Subsetting rows


```r
DT[c(2,3)]
```

```
         x y      z
1: -0.8876 a 0.2831
2: -0.4068 a 0.4043
```



---

## Subsetting columns!?


```r
DT[,c(2,3)]
```

```
[1] 2 3
```


---

## Column subsetting in data.table

* The subsetting function is modified for data.table
* The argument you pass after the comma is called an "expression"
* In R an expression is a collection of statements enclosed in curley brackets 

```r
{
  x = 1
  y = 2
}
k = {print(10); 5}
```

```
[1] 10
```

```r
print(k)
```

```
[1] 5
```



## Credits


