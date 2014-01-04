---
title       : Introduction to Git (Mac)
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

## What is Version Control?

<q>Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later.</q>

[http://git-scm.com/book/en/Getting-Started-About-Version-Control](http://git-scm.com/book/en/Getting-Started-About-Version-Control)

---

## What is Version Control?

* Many of us constantly create something, save it, change it, then save it again
* Version (or revision) control is a means of managing this process in a reliable and efficient way
* Especially important when collaborating with others

[http://en.wikipedia.org/wiki/Revision_control](http://en.wikipedia.org/wiki/Revision_control)

---

## What is Git?

<q>Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.</q>

[http://git-scm.com/](http://git-scm.com/)

---

## What is Git?

* Created by the same people who developed Linux
* The most popular implementation of version control today
* Everything is stored in local repositories on your computer
* Operated from the command line

[http://git-scm.com/book/en/Getting-Started-A-Short-History-of-Git](http://git-scm.com/book/en/Getting-Started-A-Short-History-of-Git)

---

## Download Git

* Go to the following website and click on the download link for your operating system (Mac, Windows, Linux, etc):

[http://git-scm.com/downloads](http://git-scm.com/downloads)

<img class=center src=../../assets/img/IntroToGit/git-dl.png height='350'/>

---

## Install Git

* Once the file is done downloading, open it up to begin the Git installation

<img class=center src=../../assets/img/IntroToGit/git-install.png height='350'/>

---

## Install Git

* Unless you really know what you are doing, just go with the default options at each step of the installation

* Once the install is complete, hit the "Finish" button

<img class=center src=../../assets/img/IntroToGit/git-install-end.png height='350'/>

---

## Open Terminal

- Open Spotlight
- Search Terminal
- Open Terminal

<img class=center src=../../assets/img/IntroToGit/spotlight.png height='300'/>

---

## Open Terminal

* Once Terminal opens, you'll see a dollar sign
* The dollar sign means that it's your turn to type a command

<img class=center src=../../assets/img/IntroToGit/bash1.png height='200'/>

---

## Configure Username and Email

* Each commit to a Git repository will be "tagged" with the username of the person who made the commit
* Enter the following commands in Terminal, one at a time, to set your username and email:

```
$ git config --global user.name "Your Name Here"
$ git config --global user.email "your_email@example.com"
```

* You'll only have to do this once, but you can always change these down the road using the same commands

---

## Configure Username and Email

* Now type the following to confirm your changes (they may be listed toward the bottom):

```
$ git config --list
```

<img class=center src=../../assets/img/IntroToGit/git-config.png height='350'/>

---

## What's Next?

* Go ahead and close Terminal

* Now that Git is set up on your computer, we're ready to move on to GitHub, which is a web-based platform that lets you do some pretty cool stuff
* Once GitHub is up and running, we'll show you how to start using these tools to your benefit
