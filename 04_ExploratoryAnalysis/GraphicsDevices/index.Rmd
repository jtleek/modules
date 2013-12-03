---
title       : Graphics Devices in R
subtitle    : 
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
