# Load required libraries
library(dplyr)
library(readr)

# Step 1: Read the raw dataset
crime_data <- read_csv("data/raw/crime_data_2016_2019.csv")

# Step 2: Remove irrelevant columns
crime_data <- crime_data %>%
  select(-Longitude, -Latitude, -Falls.within, -Reported.by)

# Step 3: Rename columns for clarity
names(crime_data) <- gsub(" ", "_", names(crime_data))

# Step 4: Handle missing values
crime_data <- na.omit(crime_data)

# Step 5: Create simplified crime categories
crime_data <- crime_data %>%
  mutate(Crime_Category = case_when(
    Crime_type %in% c("Bicycle theft", "Other theft", "Robbery", "Shoplifting", "Burglary", "Theft from the person") ~ "Theft",
    Crime_type %in% c("Violence and sexual offences") ~ "Violence_Sexual",
    Crime_type %in% c("Drugs") ~ "Drugs",
    Crime_type %in% c("Anti-social behaviour", "Possession of weapons") ~ "Anti_Social",
    Crime_type %in% c("Public order") ~ "Public_Order",
    Crime_type %in% c("Vehicle crime", "Other crime", "Criminal damage and arson") ~ "Other_Crime",
    TRUE ~ "Unknown"
  ))

# Step 6: Write cleaned data to CSV
write_csv(crime_data, "data/cleaned/cleaned_crime_data.csv")

cat("Crime dataset cleaned and saved.\n")