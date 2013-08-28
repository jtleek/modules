---
title       : Plotting - Lattice Functions
subtitle    : Computing for Data Analysis
author      : Roger Peng, Associate Professor
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

## Lattice Functions

- `xyplot`: this is the main function for creating scatterplots 
- `bwplot`: box-and-whiskers plots (“boxplots”)
- `histogram`: histograms
- `stripplot`: like a boxplot but with actual points 
- `dotplot`: plot dots on “violin strings”
- `splom`: scatterplot matrix; like pairs in base graphics system 
- `levelplot`, contourplot: for plotting “image” data

---

## Lattice Functions

Lattice functions generally take a formula for their first argument, usually of the form

```r
y ~ x | f * g
```

- On the left of the ~ is the y variable, on the right is the x variable
- After the | are _conditioning variables_ — they are optional; the * indicates an interaction
- The second argument is the data frame or list from which the variables in the formula should be obtained.
- If no data frame or list is passed, then the parent frame is used.
- If no other arguments are passed, there are defaults that can be used.

---

## Lattice Behavior

Lattice functions behave di↵erently from base graphics functions in one critical way.
- Base graphics functions plot data directly the graphics device
- Lattice graphics functions return an object of class `trellis`.
- The print methods for lattice functions actually do the work of plotting the data on the graphics device.
- Lattice functions return “plot objects” that can, in principle, be stored (but it’s usually better to just save the code + data).
- On the command line, trellis objects are `auto-printed` so that it appears the function is plotting the data

---

## Lattice Panel Functions

Lattice functions have a panel function which controls what happens inside each panel of the entire plot.

```r
x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
f <- gl(2, 50, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f)
```

plots y vs. x conditioned on f.

---

## Lattice Panel Functions

```r
xyplot(y ~ x | f,
       panel = function(x, y, ...) {
       panel.xyplot(x, y, ...)
       panel.abline(h = median(y),
                    lty = 2)
})
```

plots y vs. x conditioned on f with horizontal (dashed) line drawn at the median of y for each panel.

---

## Lattice Panel Functions

Adding a regression line

```r
xyplot(y ~ x | f,
       panel = function(x, y, ...) {
               panel.xyplot(x, y, ...)
               panel.lmline(x, y, col = 2)
       })
```

fits and plots a simple linear regression line to each panel of the plot.
