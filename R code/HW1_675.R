# rename data set 1
df1 <- time_series_covid19_confirmed_global
# rename data set 2
df2 <- UID_ISO_FIPS_LookUp_Table

# Load dplyr for data manipulation
library(dplyr)

# Assuming df1 has 'Country.Region' and df2 has 'Country_Region'
# Rename 'Country_Region' in df2 to 'Country.Region' to match df1
df2 <- rename(df2, Country.Region = Country_Region)

 
# full join to get all columns from both datasets

merged_df <- full_join(df1, df2, by = "Country.Region")

# Check the first few rows of the merged dataset
head(merged_df)

clean_df <- na.omit(merged_df)

# To remove columns "FIPS", "Admin2", and "Province_State, etc."

merged_df <- merged_df[, !(names(merged_df) %in% c("FIPS", "Admin2", "Province_State", "Lat.y", "Long_"))]


# renaming
merged_df <- merged_df %>% rename(Lat = `Lat.x`)

# removing leading "X" on date cols
colnames(merged_df) <- gsub("^X", "", colnames(merged_df))

# moving columns from the back to the front
cols_to_move <- c("UID", "iso2", "iso3", "code3", "Combined_Key", "Population")
merged_df <- merged_df[c(cols_to_move, setdiff(names(merged_df), cols_to_move))]



#############  End of Cleaning #############################################

library(tidyr)
library(dplyr)

# Assuming the columns from "1.22.20" to the last date are what you want to make long
long_df <- merged_df %>%
  pivot_longer(
    cols = starts_with("1.22.20"):last_col(), # Adjust this range as necessary
    names_to = "Date",
    values_to = "Cases"
  )

wide_df <- long_df %>%
  pivot_wider(
    names_from = Date,
    values_from = Cases
  )
################# long and wide data set end  ###############################

# Assuming 'long_df' is your dataset with a 'Date' column in the "1.11.22" format
long_df$Date <- as.Date(long_df$Date, format = "%m.%d.%y")


library(ggplot2)
library(dplyr)

# Adding LogCases, here's how to add it:
long_df <- long_df %>%
  mutate(LogCases = log(Cases + 1)) # Adding 1 to avoid taking log(0)

# Create the ggplot
g1 <- ggplot(long_df, aes(x = Date, y = LogCases)) +
  geom_line(stat = "summary", fun = mean, na.rm = TRUE, size = 1) + # Use mean to plot average log cases
  labs(title = "Overall Change in Time of Log Number of Cases",
       x = "Date",
       y = "Average Log of Cases (across all data)") +
  theme_minimal(base_size = 14) # Minimal theme for better readability

# Display the plot
print(g1)

# Optionally, save the plot
ggsave("overall_log_cases.png", g1, width = 8, height = 6, dpi = 300)

######  graph 1 end, all is good up to this point #############

long_df <- long_df %>%
  group_by(Country.Region) %>%
  filter(sum(!is.na(Cases)) > 0) %>%
  ungroup()

top_countries <- long_df %>%
  group_by(Country.Region) %>%
  summarise(TotalCases = max(Cases, na.rm = TRUE)) %>%
  filter(!is.infinite(TotalCases)) %>%
  arrange(desc(TotalCases)) %>%
  top_n(5, TotalCases) %>%
  pull(Country.Region)

long_df <- long_df %>%
  filter(!is.na(Date) & !is.na(Population) & Population > 0)


# Assuming 'long_df' is your dataset and it has 'Date', 'Country.Region', and 'Cases' columns
# Convert 'Date' from "m.d.yy" format to Date object
long_df$Date <- as.Date(long_df$Date, format = "%m.%d.%y")

# Calculate cumulative cases for each country
cumulative_cases_by_country <- long_df %>%
  group_by(Country.Region) %>%
  summarise(TotalCases = sum(Cases, na.rm = TRUE)) %>%
  arrange(desc(TotalCases)) %>%
  top_n(5, TotalCases)

# Extract the names of the top 5 countries
top_countries <- cumulative_cases_by_country$Country.Region

# Filter the long_df for only top 5 countries
filtered_df <- long_df %>%
  filter(Country.Region %in% top_countries)

# Add a column for log of cases (log transformation)
filtered_df <- filtered_df %>%
  mutate(LogCases = log(Cases + 1)) # Adding 1 to avoid log(0)


# Plot the change in time of log number of cases by country for top 5 countries
g2 <- ggplot(filtered_df, aes(x = Date, y = LogCases, color = Country.Region)) +
  geom_line() +
  labs(title = "Change in Time of Log Number of Cases by Country (Top 5 Countries)",
       x = "Date",
       y = "Log of Cases",
       color = "Country") +
  theme_minimal(base_size = 12) +
  theme(legend.position = "right")

# Display the plot
print(g2)

# Save the plot
ggsave("log_cases_by_top_countries.png", g2, width = 10, height = 6, dpi = 300)
  

#######  End graph 2, graph 3 begins #####################################

# 
# # Calculate the rate of infection per 100,000 cases
# long_df <- long_df %>%
#   mutate(Date = as.Date(Date, format = "%m.%d.%y"),
#          InfectionRate = (Cases / Population) * 100000)
# 
# # Determine the top 5 countries based on the maximum number of cases
# top_countries <- long_df %>%
#   group_by(Country.Region) %>%
#   summarise(TotalCases = max(Cases, na.rm = TRUE)) %>%
#   arrange(desc(TotalCases)) %>%
#   top_n(5, TotalCases) %>%
#   pull(Country.Region)
# 
# # Filter the dataset to include only the top 5 countries
# filtered_df <- long_df %>%
#   filter(Country.Region %in% top_countries)
# 
# # Plot the change in time by country of rate of infection per 100,000 cases
# g3 <- ggplot(filtered_df, aes(x = Date, y = InfectionRate, color = Country.Region)) +
#   geom_line() +
#   labs(title = "Change in Time by Country of Rate of Infection per 100,000 Cases",
#        x = "Date", y = "Rate of Infection per 100,000",
#        color = "Country") +
#   theme_minimal(base_size = 12) +
#   theme(legend.position = "bottom", legend.title = element_blank()) # Improve readability
# 
# # Display the plot
# print(g3)
# 
# # Save the plot
# ggsave("infection_rate_by_country.png", g3, width = 10, height = 6, dpi = 300)

##########  g3 attempt to get countries to show on graph ################


# Calculate the rate of infection per 100,000 cases
long_df <- long_df %>%
  mutate(Date = as.Date(Date, format = "%m.%d.%y"),
         InfectionRate = (Cases / Population) * 100000)

# Determine the top country based on the maximum number of cases
top_country <- long_df %>%
  group_by(Country.Region) %>%
  summarise(TotalCases = max(Cases, na.rm = TRUE)) %>%
  arrange(desc(TotalCases)) %>%
  slice(1) %>%
  pull(Country.Region)

# Filter the dataset to include only the top country
filtered_df <- long_df %>%
  filter(Country.Region == top_country)

# Plot the change in time by country of rate of infection per 100,000 cases
g3 <- ggplot(filtered_df, aes(x = Date, y = InfectionRate)) +
  geom_line(color = "blue") +  # Color set explicitly for clarity
  labs(title = paste("Change in Time of Rate of Infection per 100,000 Cases in", top_country),
       x = "Date", y = "Rate of Infection per 100,000") +
  theme_minimal(base_size = 12) +
  theme(legend.position = "none") # No legend needed for a single country

# Display the plot
print(g3)

# Save the plot
ggsave("infection_rate_top_country.png", g3, width = 10, height = 6, dpi = 300)


###################  graphs for remaining top 5 countries #################


# Function to get the Nth top country
get_nth_top_country <- function(n) {
  top_country <- long_df %>%
    group_by(Country.Region) %>%
    summarise(TotalCases = max(Cases, na.rm = TRUE)) %>%
    arrange(desc(TotalCases)) %>%
    slice(n) %>%
    pull(Country.Region)
  return(top_country)
}

# Function to plot the change in time by country of rate of infection per 100,000 cases for a given top country
plot_infection_rate_for_country <- function(country, plot_id) {
  filtered_df <- long_df %>%
    filter(Country.Region == country)
  
  g <- ggplot(filtered_df, aes(x = Date, y = InfectionRate)) +
    geom_line() +
    labs(title = paste("Change in Time of Infection Rate per 100,000 in", country),
         x = "Date", y = "Rate of Infection per 100,000") +
    theme_minimal(base_size = 12)
  
  # Save the plot
  ggsave(paste0("infection_rate_", plot_id, "_", country, ".png"), g, width = 10, height = 6, dpi = 300)
}

# Now, create and save plots for the 2nd, 3rd, 4th, and 5th top countries
for (i in 2:5) {
  country <- get_nth_top_country(i)
  plot_infection_rate_for_country(country, paste("g", i, sep = ""))
}



