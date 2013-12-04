---
title       : The Lattice Plotting System in R
subtitle    : Computing for Data Analysis
author      : Roger Peng, Associate Professor of Biostatistics
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

## The Lattice Plotting System

The lattice plotting system is implemented using the following packages:

- *lattice*: contains code for producing Trellis graphics, which are
   independent of the “base” graphics system; includes functions like
   `xyplot`, `bwplot`, `levelplot`

- *grid*: implements a different graphing system independent of the
   “base” system; the *lattice* package builds on top of *grid*
   - We seldom call functions from the *grid* package directly

- The lattice plotting system does not have a "two-phase" aspect with
  separate plotting and annotation like in base plotting

- All plotting/annotation is done at once with a single function call


---

## Lattice Functions

- `xyplot`: this is the main function for creating scatterplots 
- `bwplot`: box-and-whiskers plots (“boxplots”)
- `histogram`: histograms
- `stripplot`: like a boxplot but with actual points 
- `dotplot`: plot dots on "violin strings"
- `splom`: scatterplot matrix; like `pairs` in base plotting system 
- `levelplot`, `contourplot`: for plotting "image" data

---

## Lattice Functions

Lattice functions generally take a formula for their first argument, usually of the form

```r
xyplot(y ~ x | f * g, data)
```

- We use the *formula notation* here, hence the `~`.

- On the left of the ~ is the y-axis variable, on the right is the
  x-axis variable

- f and g are _conditioning variables_ — they are optional
  - the * indicates an interaction between two variables

- The second argument is the data frame or list from which the
  variables in the formula should be looked up

  - If no data frame or list is passed, then the parent frame is used.

- If no other arguments are passed, there are defaults that can be used.

---
## Simple Lattice Plot


```r
library(lattice)
library(datasets)
## Simple scatterplot
xyplot(Ozone ~ Wind, data = airquality)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 


---

## Simple Lattice Plot


```r
library(datasets)
library(lattice)
## Convert 'Month' to a factor variable
airquality <- transform(airquality, Month = factor(Month))
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


---

## Lattice Behavior

Lattice functions behave differently from base graphics functions in
one critical way.

- Base graphics functions plot data directly to the graphics device
  (screen, PDF file, etc.)

- Lattice graphics functions return an object of class `trellis`

- The print methods for lattice functions actually do the work of
  plotting the data on the graphics device.

- Lattice functions return "plot objects" that can, in principle, be
  stored (but it’s usually better to just save the code + data).

- On the command line, trellis objects are `auto-printed` so that it
  appears the function is plotting the data

---

## Lattice Panel Functions

Lattice functions have a **panel function** which controls what
happens inside each panel of the plot.


```r
set.seed(10)
x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
f <- gl(2, 50, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f, layout = c(2, 1))
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


---

## Lattice Panel Functions


```r
xyplot(y ~ x | f, panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)
    panel.abline(h = median(y), lty = 2)
})
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


plots y vs. x conditioned on f with horizontal (dashed) line drawn at
the median of y for each panel.

---

## Lattice Panel Functions: Regression line


```r
xyplot(y ~ x | f, panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)
    panel.lmline(x, y, col = 2)
})
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 


fits and plots a simple linear regression line to each panel of the plot.
