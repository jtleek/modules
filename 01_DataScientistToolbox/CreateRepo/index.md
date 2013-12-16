---
title       : Creating a GitHub Repository
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

## Recap: Git vs. GitHub

* You don't need GitHub to use Git
* Git = Local (on your computer); GitHub = Remote (on the web)
* GitHub allows you to:
  1. Share your repositories with others
  2. Access other users' repositories
  3. Store remote copies of your repositories (on GitHub's server) in case something happens to your local copies (on your computer)

---

## Creating a GitHub Repository

* Two methods of creating a GitHub repository:
  1. Start a repository from scratch
  2. "Fork" another user's repository
* We'll start with the first method
* _NOTE: A repository is often referred to as a "repo"_

---

## Start a Repository From Scratch

* Either go to your profile page (https://github.com/yourUserNameHere/) and click on "Create a new repo" in the upper righthand corner of the page

__...OR...__

* Go directly to [https://github.com/new](https://github.com/new) (you'll need to log into your GitHub account if you haven't already done so)

---

## Start a Repository From Scratch

* Create a name for your repo and type a brief description of it
* Select "Public" (Private repos require a paid [or education] account)
* Check the box next to "Initialize this repository with a README"
* Click the "Create repository" button

<img class=center src=../../assets/img/CreateRepo/CreateRepo1.png height='350'/>

---

## Start a Repository From Scratch

* Congratulations! You've created a GitHub repository.

<img class=center src=../../assets/img/CreateRepo/CreateRepo2.png height='450'/>

---

## Creating a Local Copy

* Now you need to create a copy of this repo on your computer so that you can make changes to it

* Open Git Bash
* Create a directory on your computer where you will store your copy of the repo:

```
$ mkdir ~/test-repo
```

* Navigate to this new directory using the following command:

```
$ cd ~/test-repo
```

---

## Creating a Local Copy

* Initialize a local Git repository in this directory

```
$ git init
```

* Point your local repository at the remote repository you just created on the GitHub server

```
$ git remote add origin https://github.com/yourUserNameHere/test-repo.git
```

---

## Creating a Local Copy

* Here's what this process looks like in action:

<img class=center src=../../assets/img/CreateRepo/CreateRepo3.png height='350'/>

---

## Fork a Another User's Repository

* The second method of creating a respository is to make a copy of someone else's
* This process is called "forking" and is an important aspect of open-source software development
* Begin by navigating to the desired repository on the GitHub website and click the "Fork" button shown below

<img class=center src=../../assets/img/CreateRepo/Bootcamp-Fork.png width='750'/>

[https://help.github.com/articles/fork-a-repo](https://help.github.com/articles/fork-a-repo)

---

## Clone the Repo

* You now have a copy of the desired respository on your GitHub account
* Need to make a local copy of the repo on your computer
* This process is called "cloning" and can be done using the following command:

```
$ git clone https://github.com/yourUserNameHere/repoNameHere.git
```

* _NOTE: This will clone the repository into your current directory._

---

## What Else?

* If you make changes to your local copy of the repo, you'll probably want to push your changes to GitHub at some point
* You also may be interested in staying current with any changes made to the original repository from which you forked your copy
* We will cover some more Git/GitHub basics in coming lectures, but in the meantime, here are some great resources:
  * [https://help.github.com/articles/fork-a-repo](https://help.github.com/articles/fork-a-repo)
  * [http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository)
