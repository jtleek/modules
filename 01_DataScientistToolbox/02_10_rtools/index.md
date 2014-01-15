---
title       : Installing Rtools
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

## What is Rtools?

* A collection of tools necessary for building R packages in Windows
* Available for download at [http://cran.r-project.org/bin/windows/Rtools/](http://cran.r-project.org/bin/windows/Rtools/)

<img class=center src=../../assets/img/Rtools/Rtools1.png height='400'/>

---

## Download Rtools

* Select the .exe download link from the table that corresponds to your version of R
  * Note: If you're not sure what version of R you have, open or restart R and it's the first thing that comes up in the console
* If you have the most recent version of R, you should select the most recent Rtools download (at the top of the chart)
* Once the download completes, open the .exe file to begin the installation

---

## Install Rtools

* Unless you really know what you are doing, you should just go with the default selections at each step of the installation
* There are only two exceptions worth noting:
  * If you already have Cygwin installed on your machine, you should follow the instructions given during installation (and linked to here: [http://cran.r-project.org/bin/windows/Rtools/Rtools.txt](http://cran.r-project.org/bin/windows/Rtools/Rtools.txt))
  * _IMPORTANT: You should make sure that the box is checked to have the installer edit your PATH (see below)._
  
<img class=center src=../../assets/img/Rtools/Rtools8.png height='200'/>

---

## Install devtools

* Once the Rtools installation completes, open RStudio
* Install the devtools R package if you have not previously done so 
  * If you aren't sure, enter ```find.package("devtools")``` in the console
* To install devtools, use ```install.packages("devtools")```

<img class=center src=../../assets/img/Rtools/devtools1.png height='350'/>

---

## Verify Rtools installation

* After devtools is done installing, load it using ```library(devtools)```
* Then type ```find_rtools()``` as shown below
* This should return ```TRUE``` in the console if your Rtools installation worked properly

<img class=center src=../../assets/img/Rtools/devtools4.png height='350'/>
