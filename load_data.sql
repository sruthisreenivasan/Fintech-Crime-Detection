LOAD DATA INPATH '/user/hive/warehouse/cleaned_crime_data.csv' INTO TABLE dimCrime;
LOAD DATA INPATH '/user/hive/warehouse/cleaned_population_data.csv' INTO TABLE dimPopulation;
LOAD DATA INPATH '/user/hive/warehouse/cleaned_income_data.csv' INTO TABLE dimIncome;
-- Add others similarly