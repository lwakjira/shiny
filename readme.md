Coursera Developing Data Products - Shiny App
========================================================
author: L W


First Slide
========================================================

The Shiny App displays Education Attainment Level for the State you Select

- First you select your education level
- Second you select your State [only focusin on US]
- Third you click on the Submit button
- The app then extracts the attainment level for 2009 census data

Slide With Code
========================================================


```r
summary(ed_levl)
```

```
               State      State.Abbr High.school.graduate.or.more Bachelor.s.degree.or.more Advanced.degree.or.more
                  : 1          : 5   Min.   :79.90                Min.   :17.30             Min.   : 6.10          
     United States: 1   AK     : 1   1st Qu.:84.12                1st Qu.:24.25             1st Qu.: 8.05          
 Alabama          : 1   AL     : 1   Median :87.40                Median :26.55             Median : 9.35          
 Alaska           : 1   AR     : 1   Mean   :86.85                Mean   :27.60             Mean   :10.15          
 Arizona          : 1   AZ     : 1   3rd Qu.:89.80                3rd Qu.:30.52             3rd Qu.:11.12          
 Arkansas         : 1   CA     : 1   Max.   :91.80                Max.   :48.50             Max.   :28.00          
 (Other)          :51   (Other):47   NA's   :5                    NA's   :5                 NA's   :5        
```

Slide with information for selected State
========================================================
```
              State State.Abbr High.school.graduate.or.more Bachelor.s.degree.or.more Advanced.degree.or.more
3            Alaska         AK                         91.4                      26.6                     9.0
```
