---
title       : Plotting
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

## Plotting

The plotting and graphics engine in R is encapsulated in a few base and recommend packages:

- *graphics*: contains plotting functions for the “base” graphing systems, including `plot`, `hist`, `boxplot` and many others.
- *lattice*: contains code for producing Trellis graphics, which are independent of the “base” graphics system; includes functions like `xyplot`, `bwplot`, `levelplot`
- *grid*: implements a different graphing system independent of the “base” system; the *lattice* package builds on top of *grid*; we seldom call functions from the *grid* package directly
- *grDevices*: contains all the code implementing the various graphics devices, including X11, PDF, PostScript, PNG, etc.

---

## The Process of Making a Plot

When making a plot one must first make a few choices (not necessarily in this order):

- To what device will the plot be sent? The default in Unix is x11; on Windows it is `windows`; on Mac OS X it is `quartz`
- Is the plot for viewing temporarily on the screen, or will it eventually end up in a paper? Are you using it in a presentation? Plots included in a paper/presentation need to use a file device rather than a screen device.
- Is there a large amount of data going into the plot? Or is it just a few points? 
- Do you need to be able to resize the graphic?

---

## The Process of Making a Plot

- What graphics system will you use: base or grid/lattice? These generally cannot be mixed.
- Base graphics are usually constructed piecemeal, with each aspect of the plot handled separately through a series of function calls; this is often conceptually simpler and allows plotting to mirror the thought process
- Lattice/grid graphics are usually created in a single function call, so all of the graphics parameters have to specified at once; specifying everything at once allows R to automatically calculate the necessary spacings and font sizes.

---

## Base Graphics

Base graphics are used most commonly and are a very powerful system for creating 2-D graphics.
- Calling `plot(x, y)` or `hist(x)` will launch a graphics device (if one is not already open) and draw the plot on the device
- If the arguments to `plot` are not of some special class, then the _default_ method for `plot` is called; this function has _many_ arguments, letting you set the title, x axis lable, y axis label, etc.
- The base graphics system has _many_ parameters that can set and tweaked; these parameters are documented in `?par`; it wouldn’t hurt to memorize this help page!

---

## Some Important Base Graphics Parameters

The `par` function is used to specify global graphics parameters that affect all plots in an R session. These parameters can often be overridden as arguments to specific plotting functions.
- pch: the plotting symbol (default is open circle)
- lty: the line type (default is solid line), can be dashed, dotted, etc.
- lwd: the line width, specified as an integer multiple
- col: the plotting color, specified as a number, string, or hex code; the colors function gives you a vector of colors by name
- las: the orientation of the axis labels on the plot

---

## Some Important Base Graphics Parameters

- bg: the background color
- mar: the margin size
- oma: the outer margin size (default is 0 for all sides)
- mfrow: number of plots per row, column (plots are filled row-wise) 
- mfcol: number of plots per row, column (plots are filled column-wise)

---

## Some Important Base Graphics Parameters

Some default values.

```r
> par("lty")
[1] "solid"
> par("lwd")
[1] 1
> par("col")
[1] "black"
> par("pch")
[1] 1
```

---

## Some Important Base Graphics Parameters

Some default values.

```r
> par("bg")
[1] "transparent"
> par("mar")
[1] 5.1 4.1 4.1 2.1
> par("oma")
[1] 0 0 0 0
> par("mfrow")
[1] 1 1
> par("mfcol")
[1] 1 1
```

---

## Some Important Base Plotting Functions

- `plot`: make a scatterplot, or other type of plot depending on the class of the object being plotted
- `lines`: add lines to a plot, given a vector x values and a corresponding vector of y values (or a 2-column matrix); this function just connects the dots
- `points`: add points to a plot
- `text`: add text labels to a plot using specified x, y coordinates
- `title`: add annotations to x, y axis labels, title, subtitle, outer margin 
- `mtext`: add arbitrary text to the margins (inner or outer) of the plot 
- `axis`: adding axis ticks/labels

---

## Useful Graphics Devices

The list of devices is found in `?Devices`; there are also devices created by users on CRAN

- `pdf`: useful for line-type graphics, vector format, resizes well, usually portable
- `postscript`: older format, also vector format and resizes well, usually portable, can be used to create encapsulated postscript files, Windows systems often don’t have a postscript viewer
- `xfig`: good of you use Unix and want to edit a plot by hand

---

## Useful Graphics Devices

- `png`: bitmapped format, good for line drawings or images with solid colors, uses lossless compression (like the old GIF format), most web browsers can read this format natively, good for plotting many many many points, does not resize well
- `jpeg`: good for photographs or natural scenes, uses lossy compression, good for plotting many many many points, does not resize well, can be read by almost any computer and any web browser, not great for line drawings
- `bitmap`: needed to create bitmap files (png, jpeg) in certain situations (uses Ghostscript), also can be used to create a variety of other bitmapped formats not mentioned
- `bmp`: a native Windows bitmapped format

---

## Copying Plots

There are two basic approaches to plotting.
1. Launch a graphics device
2. Make a plot; annotate if needed
3. Close graphics device
Or
1. Make a plot on a screen device (default); annotate if needed
2. Copy the plot to another device if necessary (not an exact process)

---

## Copying Plots

Copying a plot to another device can be useful because some plots require a lot of code and it can be a pain to type all that in again for a different device.

- dev.copy: copy a plot from one device to another
- dev.copy2pdf: copy a plot to a Portable Document Format (PDF) - file 
- dev.list: show the list of open graphics devices
- dev.next: switch control to the next graphics device on the device list 
- dev.set: set control to a specific graphics device
- dev.off: close the current graphics device

NOTE: Copying a plot is not an exact operation!
