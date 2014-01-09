---
title       : Course motivation
subtitle    : JHSPH Biostatistics 753 - Advanced Methods/Applied Statistics
author      : Jeffrey Leek, Assistant Professor of Biostatistics 
job         : Johns Hopkins Bloomberg School of Public Health
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn   # 
widgets     : [mathjax,bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Why we do applied statistics

"It is not the critic who counts: not the man who points out how the strong man stumbles or where the doer of deeds could have done better. The credit belongs to the man who is actually in the arena, whose face is marred by dust and sweat and blood, who strives valiantly, who errs and comes up short again and again, because there is no effort without error or shortcoming, but who knows the great enthusiasms, the great devotions, who spends himself for a worthy cause; who, at the best, knows, in the end, the triumph of high achievement, and who, at the worst, if he fails, at least he fails while daring greatly, so that his place shall never be with those cold and timid souls who knew neither victory nor defeat."

![teddy](./assets/img/teddy.jpeg) _Theodore Roosevelt, 26th President of the United States_

[Statistics and the science game](http://simplystatistics.org/2012/06/22/statistics-and-the-science-club/)

---

## The key challenge in applied statistics

<q>Ask yourselves, what problem have you solved, ever, that was worth solving, where you knew knew all of the given information in advance? Where you didn’t have a surplus of information and have to filter it out, or you didn’t have insufficient information and have to go find some?</q>

<img src=assets/img/meyer.jpg height='30%' /> [Dan Myer, Mathematics Educator](http://www.ted.com/talks/dan_meyer_math_curriculum_makeover.html)

---

## About me

<center> <font color="#CD3278">Data intensive</font> statistics in <font color="#008B45">molecular biology</font>$^1$</center>

* website: [http://biostat.jhsph.edu/~jleek/](http://biostat.jhsph.edu/~jleek/)
* twitter: [@simplystats](https://twitter.com/simplystats)
* blog: [http://simplystatistics.org/](http://simplystatistics.org/)


</br>
</br>
</br>
</br>
</br>
</br>
</br>
1. [Also this](http://www.youtube.com/watch?v=xrAIGLkSMls)

---

## About me

<img class=center src=assets/img/usguys.jpg height='80%' />


---


## Why applied statistics?

<img class=center src=assets/img/deluge.jpeg height='80%' />

---

## Why applied statistics?

<img class=center src=assets/img/nytimes.png height='80%' />

---

## Why applied statistics? 

<img class=center src=assets/img/mckinsey.png height='80%' />

---

## Why are you lucky?

<img class=center src=assets/img/bezos.jpg height='80%' />

---

## Why are you lucky

<img class=center src=assets/img/heritage.png height='80%' />

[Heritage Health Prize](http://www.heritagehealthprize.com/c/hhp)

---

## Leaderboard

<img class=center src=assets/img/heritageleaderboard.png height='80%' />

[Leaderboard](http://www.heritagehealthprize.com/c/hhp/leaderboard)

---

## New data drives new methods

* How do we make better beer?    
  * __Data__: Measures of beer quality
  * __Statistic__:The [t-statistic](http://en.wikipedia.org/wiki/T-statistic)
* What characteristics of field lead to better crops?
  * __Data__: Field characteristics, crop yields
  * __Statistic__: [Analysis of variance (ANOVA)](http://en.wikipedia.org/wiki/Analysis_of_variance)
* How long do people live?
  * __Data__: Survival times of people (censored)
  * __Statistic__: [Kaplan-Meier Estimator](http://en.wikipedia.org/wiki/Kaplan%E2%80%93Meier_estimator)
* What movies will you like? 
  * __Data__: Lots of other peoples movie ratings
  * __Statistic(s)__: [Recommender systems](http://en.wikipedia.org/wiki/Recommender_system) 


---

## Who is an applied statistican? 

<div class='span4'>
<a href="http://en.wikipedia.org/wiki/Daryl_Morey">Daryl Morey</a>
</br></br>
 <img height=30% src=assets/img/morey.jpeg />
</div>
<div class='span4'>
<a href="http://www.hilarymason.com/">Hilary Mason</a>
</br></br>
 <img height=30% src=assets/img/mason.jpeg />
</div>
<div class='span4'>
<a href="http://ai.stanford.edu/~koller/"> Daphne Koller</a>
</br></br>
 <img  height=30% src=assets/img/koller.jpeg />
</div>
<div class='span4'>
<a href="http://fivethirtyeight.blogs.nytimes.com/">Nate Silver</a>
</br></br>
 <img height=30% src=assets/img/silver.jpeg />
</div>



---

## What will this course cover

1. Translating questions into data analyses
2. Obtaining, organizing, and cleaning data
3. Performing a complete data analysis:
  * Exploration
  * Algorithm/model definition
  * Analysis
  * Synthesis and communication. 
4. Statistical and computational tools
5. Methodological background 
6. Ideas for having an impact

---

## A journal analogy 

* __Theory__: Annals of Statistics, JRSSB, Statistica Sinica
* __Methods__: Biometrics, Annals of Applied Statistics,
Biostatistics, Statistics in Medicine, Neuroimage, Genome
Biology
* __Data Analysis__: JASA A&CS, JRSSC, Nature, NEJM, JAMA,
Neuroimage, Genome Biology

</br>
</br>
</br>
__Our goal__: A sweet spot between data analysis and methods.

---

## Another goal

<img class=center src=assets/img/venn.png height='80%' />

[Drew Conway](http://www.drewconway.com/zia/?p=2378)

---

## These might be useful

<img class=center src=assets/img/openintro.png height='80%' />

[http://www.openintro.org/](http://www.openintro.org/)


---

## These might be useful

<img class=center src=assets/img/elemlearn.jpeg height='80%' />

[http://www-stat.stanford.edu/~tibs/ElemStatLearn/](http://www-stat.stanford.edu/~tibs/ElemStatLearn/)

---

## These might be useful

<img class=center src=assets/img/ada.png height='80%' />


[Advanced Data Analysis from An Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/ADAfaEPoV.pdf)


---

## These might be useful

<img class=center src=assets/img/ferguson.jpg height='80%' />

[A Course in Large Sample Theory](http://www.amazon.com/Course-Sample-Chapman-Statistical-Science/dp/0412043718)


---

## When you don't want to work on the assignments anymore

* [Andrew Gelman's blog](http://andrewgelman.com/)
* [Larry Wasserman's blog](http://normaldeviate.wordpress.com/)
* [Statsblogs](http://www.statsblogs.com/)
* [Flowing Data](http://flowingdata.com/)
* [Hilary Mason's Blog](http://www.hilarymason.com/) and [@hmason](https://twitter.com/hmason)
* [Cosma Shalizi's Blog](http://masi.cscs.lsa.umich.edu/~crshalizi/weblog/)
* If you are really desperate [Stochastic Planet](http://stochasticplanet.tumblr.com/) or [MapCrunch](http://www.mapcrunch.com/)
* If you are really, really desperate [Some other dudes' blog](http://simplystatistics.org/)


---

## I will definitely be lifting material from

<img src=assets/img/ken.jpg height='30%'/> [Ken Rice](http://faculty.washington.edu/kenrice/)

who lifted some of it from:

<img src=assets/img/jon.jpg height='30%'/> [Jon Wakefield](http://faculty.washington.edu/jonno/)










