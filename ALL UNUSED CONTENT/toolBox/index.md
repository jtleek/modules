---
title       : Introduction to the Data Scientist's Toolbox
subtitle    : 
author      : Jeffrey Leek, Assistant Professor of Biostatistics 
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





## What is data science? 

<iframe src="http://prezi.com/embed/fhumwa8tb3fs/?bgcolor=ffffff&amp;lock_to_path=0&amp;autoplay=no&amp;autohide_ctrls=0"></iframe>

---

## Pick a person and measure

<img class=center src=../../assets/img/where/Slide02.jpg height='350'/>

---

## Census 

<img class=center src=../../assets/img/where/Slide03.jpg height='350'/>

---

## Observational study 

```r
set.seed(5)
sample(1:8,size=4,replace=FALSE)
```

```
[1] 2 5 6 8
```


<img class=center src=../../assets/img/where/Slide04.jpg height='350'/>

---

## Convenience sample 

```r
probs = c(5,5,5,5,1,1,1,1)/24
sample(1:8,size=4,replace=FALSE,prob=probs)
```

```
[1] 4 1 2 5
```


<img class=center src=../../assets/img/where/Slide05.jpg height='350'/>

---
## Randomized trial 

```r
treat1 = sample(1:8,size=2,replace=FALSE); treat2 = sample(2:7,size=2,replace=FALSE)
c(treat1,treat2)
```

```
[1] 8 1 3 4
```



<img class=center src=../../assets/img/where/Slide06.jpg height='350'/>

---
## Prediction study: train 

```r
set.seed(5)
sample(1:8,size=4,replace=FALSE)
```

```
[1] 2 5 6 8
```



<img class=center src=../../assets/img/where/Slide04.jpg height='350'/>

---
## Prediction study: test 

```r
sample(c(1,3,4,7),size=2,replace=FALSE)
```

```
[1] 1 4
```


<img class=center src=../../assets/img/where/Slide08.jpg height='350'/>

---
## Study over time: cross-sectional 

<img class=center src=../../assets/img/where/Slide09.jpg height='350'/>

---
## Study over time: longitudinal 

<img class=center src=../../assets/img/where/Slide10.jpg height='350'/>

---
## Study over time: retrospective 
<img class=center src=../../assets/img/where/Slide11.jpg height='350'/>


