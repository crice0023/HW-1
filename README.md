# HW-1
## Project Description
This project started with locating two raw datasets from an existing GitHub repository after learning the basic set up and navigation of GitHub. Data sets were found and saved to a local computer. Then data sets were cleaned and merged in order to piece together a series of visual representations surrounding countries and the impact of the COVID-19 pandemic. 

Specifically, in this project we will create the following graphs, individually or by group: 

i) overall change in time of log number of cases

ii) change in time of log number of cases by country

iii) change in time by country of rate of infection per 100,000 cases

##  Repository Organization
The folder structure can be found here [https://github.com/crice0023/HW-1/tree/main].
The structure looks exactly like this: 

![image](https://github.com/crice0023/HW-1/assets/161267590/e8fbabc2-2acf-4560-bdbc-779c1216127d)

The first folder is the R Code necessary to recreate the analyst's efforts. Then follows the raw data folder so interested parties have easy access to the same raw data the analyst used. 
Subsequent folders include gitignore, HW-1 Rproj, and README.md files as well as the graphic images the data analyst produced. 

## Main Findings

### Overall change in time of log number of cases

![image](https://github.com/crice0023/HW-1/assets/161267590/53a445a1-80d1-4f01-8cd1-6eed9caf50b5)

overall_log_cases.png

This graph represents all countries involved within the raw dataset and shows the rise in COVID-19 cases over time. We can see that fast rise in overall COVID-19 cases over the course of a few years. In fact, we can observe a magnitude of 15x change from 2020 to 2023. 

### Log Cases by Top 5 Countries

![image](https://github.com/crice0023/HW-1/assets/161267590/563785c9-4edb-4746-8f1b-469650978d53)

log_cases_by_top_countries.png

This graph represents the log cases of the top 5 countries where COVID-19 was found to be the most prevalent. With the log cases R code we see results are close to identical with regards to the rise of reported cases. However, we see United States, India, Brazil, Japan, and Russia enter into the top 5 of the results, respectively. 

### Rise of Infection per 100,000 (Top 5 Countries)
#### Graph 3.1 United States

![image](https://github.com/crice0023/HW-1/assets/161267590/2150c283-8ec5-4092-b005-ccceb5da9e17)

infection_rate_top_country.png

This graph depicts a significant increase in the rate of infection over the years 2020 to 2023, with the rate starting from a low value (around 0.00) and reaching a very high value (1.25e+11) of infections per 100,000 people by the end of 2023. This steep upward trend suggests a rapid spread of COVID-19 over time, which could indicate an outbreak or pandemic scenario. 

#### Graph 3.2 India

![image](https://github.com/crice0023/HW-1/assets/161267590/7c7b7698-a799-46ef-b95f-facbc83a42fd)

infection_rate_g2_India.png

This graph depicts a significant increase in the rate of infection over the years 2020 to 2023, with the rate starting from a low value (around 0.00) and reaching a very high value (7e+07) of infections per 100,000 people by the end of 2023. This steep upward trend suggests a rapid spread of COVID-19 over time, which could indicate an outbreak or pandemic scenario.

#### Graph 3.3 France

![image](https://github.com/crice0023/HW-1/assets/161267590/7adb1a79-3227-47ac-93f1-d02c516bb1ac)

infection_rate_g3_France.png

This graph depicts a significant increase in the rate of infection over the years 2020 to 2023, with the rate starting from a low value (around 0.00) and reaching a very high value (6.5e+08) of infections per 100,000 people by the end of 2023. This steep upward trend suggests a rapid spread of COVID-19 over time, which could indicate an outbreak or pandemic scenario.

#### Graph 3.4 Germany

![image](https://github.com/crice0023/HW-1/assets/161267590/fd5d655d-56e0-4892-8fef-e071021634c9)

infection_rate_g4_Germany.png

This graph depicts a significant increase in the rate of infection over the years 2020 to 2023, with the rate starting from a low value (around 0.00) and reaching a very high value (5.5e+06) of infections per 100,000 people by the end of 2023. This steep upward trend suggests a rapid spread of COVID-19 over time, which could indicate an outbreak or pandemic scenario.

#### Graph 3.5 Brazil

![image](https://github.com/crice0023/HW-1/assets/161267590/8938561a-b0cc-4aeb-a47b-a406748f6c49)

infection_rate_g5_Brazil.png

This graph depicts a significant increase in the rate of infection over the years 2020 to 2023, with the rate starting from a low value (around 0.00) and reaching a very high value (6e+06) of infections per 100,000 people by the end of 2023. This steep upward trend suggests a rapid spread of COVID-19 over time, which could indicate an outbreak or pandemic scenario.

## Session Info

Session info ───────────────────────────────────────────────────────────────
 setting  value
 version  R version 4.3.0 (2023-04-21 ucrt)
 os       Windows 10 x64 (build 19045)
 system   x86_64, mingw32
 ui       RStudio
 language (EN)
 collate  English_United States.utf8
 ctype    English_United States.utf8
 tz       America/New_York
 date     2024-03-08
 rstudio  2023.12.1+402 Ocean Storm (desktop)
 pandoc   NA

─ Packages ───────────────────────────────────────────────────────────────────
 package     * version date (UTC) lib source
 cachem        1.0.8   2023-05-01 [1] CRAN (R 4.3.0)
 cli           3.6.2   2023-12-11 [1] CRAN (R 4.3.2)
 colorspace    2.1-0   2023-01-23 [1] CRAN (R 4.3.0)
 devtools      2.4.5   2022-10-11 [1] CRAN (R 4.3.3)
 digest        0.6.34  2024-01-11 [1] CRAN (R 4.3.2)
 dplyr       * 1.1.4   2023-11-17 [1] CRAN (R 4.3.2)
 ellipsis      0.3.2   2021-04-29 [1] CRAN (R 4.3.0)
 fansi         1.0.6   2023-12-08 [1] CRAN (R 4.3.2)
 fastmap       1.1.1   2023-02-24 [1] CRAN (R 4.3.0)
 fs            1.6.3   2023-07-20 [1] CRAN (R 4.3.2)
 generics      0.1.3   2022-07-05 [1] CRAN (R 4.3.1)
 ggplot2     * 3.5.0   2024-02-23 [1] CRAN (R 4.3.2)
 glue          1.7.0   2024-01-09 [1] CRAN (R 4.3.2)
 gtable        0.3.4   2023-08-21 [1] CRAN (R 4.3.2)
 htmltools     0.5.7   2023-11-03 [1] CRAN (R 4.3.2)
 htmlwidgets   1.6.4   2023-12-06 [1] CRAN (R 4.3.2)
 httpuv        1.6.14  2024-01-26 [1] CRAN (R 4.3.2)
 later         1.3.2   2023-12-06 [1] CRAN (R 4.3.2)
 lifecycle     1.0.4   2023-11-07 [1] CRAN (R 4.3.2)
 magrittr      2.0.3   2022-03-30 [1] CRAN (R 4.3.0)
 memoise       2.0.1   2021-11-26 [1] CRAN (R 4.3.0)
 mime          0.12    2021-09-28 [1] CRAN (R 4.3.0)
 miniUI        0.1.1.1 2018-05-18 [1] CRAN (R 4.3.0)
 munsell       0.5.0   2018-06-12 [1] CRAN (R 4.3.0)
 pillar        1.9.0   2023-03-22 [1] CRAN (R 4.3.0)
 pkgbuild      1.4.3   2023-12-10 [1] CRAN (R 4.3.3)
 pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 4.3.0)
 pkgload       1.3.4   2024-01-16 [1] CRAN (R 4.3.3)
 profvis       0.3.8   2023-05-02 [1] CRAN (R 4.3.3)
 promises      1.2.1   2023-08-10 [1] CRAN (R 4.3.1)
 purrr         1.0.2   2023-08-10 [1] CRAN (R 4.3.1)
 R6            2.5.1   2021-08-19 [1] CRAN (R 4.3.0)
 Rcpp          1.0.12  2024-01-09 [1] CRAN (R 4.3.2)
 remotes       2.4.2.1 2023-07-18 [1] CRAN (R 4.3.3)
 rlang         1.1.3   2024-01-10 [1] CRAN (R 4.3.2)
 rstudioapi    0.15.0  2023-07-07 [1] CRAN (R 4.3.2)
 scales        1.3.0   2023-11-28 [1] CRAN (R 4.3.2)
 sessioninfo   1.2.2   2021-12-06 [1] CRAN (R 4.3.3)
 shiny         1.8.0   2023-11-17 [1] CRAN (R 4.3.2)
 stringi       1.8.3   2023-12-11 [1] CRAN (R 4.3.2)
 stringr       1.5.1   2023-11-14 [1] CRAN (R 4.3.2)
 tibble        3.2.1   2023-03-20 [1] CRAN (R 4.3.0)
 tidyr       * 1.3.1   2024-01-24 [1] CRAN (R 4.3.2)
 tidyselect    1.2.0   2022-10-10 [1] CRAN (R 4.3.0)
 urlchecker    1.0.1   2021-11-30 [1] CRAN (R 4.3.3)
 usethis       2.2.3   2024-02-19 [1] CRAN (R 4.3.2)
 utf8          1.2.4   2023-10-22 [1] CRAN (R 4.3.2)
 vctrs         0.6.5   2023-12-01 [1] CRAN (R 4.3.2)
 withr         3.0.0   2024-01-16 [1] CRAN (R 4.3.2)
 xtable        1.8-4   2019-04-21 [1] CRAN (R 4.3.1) 

Raw Data: [https://github.com/crice0023/HW-1/tree/main/raw%20data]

R Code: [https://github.com/crice0023/HW-1/tree/main/R%20code]
