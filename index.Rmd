---
title       : Developing Data Products - Course Project
subtitle    : Transportation in Numbers by State
author      : mbarona
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## The Course Project

### This peer-assessment project is one of the requirements of the Developing Data Products course offered by Johns Hopkins University through Coursera. The project consists of two parts: 

1. To create a Shiny Application and deploy it on an RStudio's server (shinyapp.io).
2. To use Slidify or R Presenter to prepare a reproducible pitch representation of the application each student has created.

--- .class #id

## The Shiny Application

### Transportation in Numbers by State (in the United States)

The purpose of the application is to have an interactive map that shows and summarizes transportation and population statistics of a selected state in the United States. For visual reference and comparison of data.

The application is published at RStudio's server shinyapps.io, following is the link.
https://halfjavier.shinyapps.io/JHUDDP/ 

#### What does the application do?
- Allows the user to select a State input
- Display an array of Transportation Statistics
- Visual Location of the State

--- .class #id

## The Numbers

The application contains the following Statistics by State

- Miles of Public Road
- Number of Major Airports
- Total Population, in millions
- Total Employment, in millions
- Number of Licensed Drivers, in millions
- Number of Registered Vehicles, in millions
- Number of Workers, in millions
  * Mode of Transportation taken by Workers age 16 and above, in %
  * And the average time it takes to travel to work, in minutes
  
  

--- .class #id


## The Data

Data used was published by Bureau of Transportation Statistics, United States Department of Transportation. All figures are based on 2013 data.


## The Code

Shiny package was used for the web app using pageWithSidebar as layout while Maps package is used for the visual mapping of each state. The codes for ui and server are at both found at JHU-DDP repository on github (https://github.com/mbarona/JHU-DDP).


















