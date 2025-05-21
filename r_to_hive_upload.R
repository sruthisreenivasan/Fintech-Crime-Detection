library(RJDBC)

# Set Hive JDBC Driver
drv <- JDBC("org.apache.hive.jdbc.HiveDriver", "/path/to/hive-jdbc.jar")
conn <- dbConnect(drv, "jdbc:hive2://localhost:10000/default", "your_user", "your_password")

# Load cleaned CSVs
crime_data <- read.csv("data/cleaned/cleaned_crime_data.csv")
dbWriteTable(conn, "dimCrime", crime_data)

# Repeat for other tables...