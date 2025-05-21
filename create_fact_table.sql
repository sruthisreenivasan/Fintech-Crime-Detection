-- Fact Table
CREATE TABLE factCrime (
  CrimeID STRING,
  IncomeID STRING,
  LocationID STRING,
  TimeID STRING,
  CrimeCount INT,
  PopulationCount INT,
  IncomeSum FLOAT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;