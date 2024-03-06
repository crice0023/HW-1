# HW-1
## Project Description
Here we aim to find 2 COVID-19 raw datasets from an existing GitHub repository [https://github.com/crice0023/HW-1/tree/main/raw%20data]. Data sets were found and saved to a local computer. 
Then data sets were cleaned and merged in order to piece together a series of graphs, which will be explained later within the README file. 

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

To reproduce the session info I've included the raw data and R code file and made this repository public. 

Raw Data: [https://github.com/crice0023/HW-1/tree/main/raw%20data]

R Code: [https://github.com/crice0023/HW-1/tree/main/R%20code]
