---
title       : Basic Git Commands
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

## Pushing and pulling 

<img class=center src=../../assets/img/01_DataScientistToolbox/gghuboverview.png height='500'/>

[http://gitready.com/beginner/2009/01/21/pushing-and-pulling.html](http://gitready.com/beginner/2009/01/21/pushing-and-pulling.html)

## Adding

* Suppose you add new files to a local repository under version control
* You need to let Git know that they need to be tracked 
  * `git add .` adds all new files
  * `git add -u` updates tracking for files that changed names or were deleted
  * `git add -A` does both of the previous 
* You should do this before committing

---

## Committing

* You have changes you want to commit to be saved as an intermediate version
* You type the command
  * `git commit -m "message"` where message is a useful description of what you did
* This only updates your local repo, not the remote repo on Github

---

## Pushing

* You have saved local commits you would like to update on the remote (Github)
* You type the command
  * `git push`
  

---

## Branches

* Sometimes you are working on a project with a version being used by many people
* You may not want to edit that version
* So you can create a branch with the command
  * `git checkout -b branchname`
* To see what branch you are on type:
  * `git branch`
* To switch back to the master branch type
  * `git checkout master`


---

## Pull requests

* If you fork someone's repo or have multiple branches you will both be working seperately
* Sometimes you want to merge in your changes into the other branch/repo
* To do so you need to send a pull request. 
* This is a feature of Github.

<img class=center src=../../assets/img/01_DataScientistToolbox/pullrequest.png height='350'/>

---

## Time to be a hacker!

* Git documentation [http://git-scm.com/doc](http://git-scm.com/doc)
* Github help [https://help.github.com/](https://help.github.com/)
* Google/Stack Overflow are great for Github

