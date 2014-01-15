---
title       : Shiny
subtitle    : Data Products
author      : Brian Caffo, Jeff Leek, Roger Peng
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

## What is Shiny?

- Shiny is a platform for creating interactive R programs embeded into a web page.
- Suppose that you create a prediction algorith, with shiny you can *very easily* create web input form that calls R and thus your prediction algorithm and displays the results.
- Using Shiny, the time to create simple, yet powerful, web-based interactive data products in R is minimized.
  - However, it lacks the flexibility of full featured (and more complex) solutions.
- Shiny is made by the fine folks at R Studio.

---
## Some mild prerequisites 
- Shiny doesn't really require it, but as with all web programming, a little knowledge of html, css and js is very helpful
  - html gives a web page structure and sectioning as well as markup instructions
  - css gives the style
  - js for interactivity
- There are too many tutorials online to count for getting basic proficiency in these topics to count. 
- Shiny uses [bootstrap](http://getbootstrap.com/) (no relation to the statistics bootstrap) style, which (to me) seems to look nice and renders well on mobile platforms

---
## What else is out there?
- Full solutions requiring real knowledge of web client/server programming
- [OpenCPU](https://public.opencpu.org/) by Jerome Ooms, a really neat project providing an API to call 

---
## Context
- You created a novel prediction algorithm to predict risk for developing
  diabetes.
    - You're hoping patients and caregivers will be able to enter their data and, if needed, take preventative measures.
- You want to create a web site so that users can input the relevant predictors and obtain their prediction.
- Your prediction algorithm (ok, so you're not going to be saving the world with this one)
  - (link for a real prediction score)[http://www.ncbi.nlm.nih.gov/pubmed/12610029]

```r
diabetesRisk <- function(age, bmi, ahtm, glucose) {
    runif(1)
}
```



---
## Getting started
- Great tutorial at 
(http://rstudio.github.io/shiny/tutorial/)[http://rstudio.github.io/shiny/tutorial/]
- Basically, this lecture is walking through that tutorial offering some of our insights

```
install.packages("shiny")
```


```r
library(shiny)
```









