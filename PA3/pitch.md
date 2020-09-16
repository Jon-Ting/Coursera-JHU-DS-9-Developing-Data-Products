

Shiny App Reproducible Pitch
========================================================
author: Jon Ting
date: 22/08/2020
autosize: true

About the Project
========================================================
- This is the final assignment of the Johns Hopkins University Developing Data 
Products Coursera course. 
- A Shiny application has been created and deployed on Rstudio's server as a result. 
- This is a reproducible pitch presentation about the application.
- The built-in Seatbelts dataset was employed to create the application. 
- It provides information on the monthly totals of car drivers in Great Britain 
killed or seriously injured from Jan 1969 to Dec 1984.

About Seatbelts Dataset
========================================================
Three variables of interest were extracted from the dataset:

```r
accidents <- data.frame(Seatbelts)
summary(accidents[, c("front", "rear", "kms")])
```

```
     front             rear            kms       
 Min.   : 426.0   Min.   :224.0   Min.   : 7685  
 1st Qu.: 715.5   1st Qu.:344.8   1st Qu.:12685  
 Median : 828.5   Median :401.5   Median :14987  
 Mean   : 837.2   Mean   :401.2   Mean   :14994  
 3rd Qu.: 950.8   3rd Qu.:456.2   3rd Qu.:17203  
 Max.   :1299.0   Max.   :646.0   Max.   :21626  
```

About the App
========================================================
- The application creates a 3-dimensional scatter plot of the variables mentioned previously by default.
- The size of each point is proportional to another variable `PetrolPrice`.
- The users are allowed to change the variable of the color axis.
- The effect will be shown by the distribution across the 3D scatter plot.
- All that is needed is choosing an option from the drop-down menu on the left.

Give it a Go
========================================================
Try Out the [App](http://jon-ting.shinyapps.io/myapp/)!

The codes are documented in the author's GitHub [repository](https://github.com/Jon-Ting/JH-DS-Specialization-Developing-Data-Products-PA3).

Thank you!
