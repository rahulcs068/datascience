#############################################################################################
#INTRODUCTION: 
#	NAME	: RAHUL KUMAR
#	EMAIL	: Rahul.cs068@gmail.com
#	PHONE	: +91-9538109454
#
#############################################################################################



## NOTE::::###################################################################################
#  Added "DROP" statement against db objects wherever possible, 
#  so would be easy to run the code as many times
#  Also, the data types created for the tables are analyzed based on current existing data
#############################################################################################






#############################################################################################
#Step1: Create a new schema named 'Assignment'
#############################################################################################
DROP SCHEMA IF EXISTS `Assignment`;
CREATE SCHEMA `Assignment`;


##############################################################################################
#Step2: Select the schema 'Assignment'
##############################################################################################
USE `Assignment`;


###############################################################################################
#Step3: Create the table structure to load data from CSV files 
#		name of stocks - Eicher Motors, Hero, Bajaj Auto, TVS Motors, Infosys and TCS
###############################################################################################

DROP TABLE IF EXISTS `Bajaj Auto`;
CREATE TABLE `Bajaj Auto` (
  `Date` VARCHAR(30),
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` varchar(15) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` varchar(15) DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);


DROP TABLE IF EXISTS `Eicher Motors`;
CREATE TABLE `Eicher Motors` (
  `Date` VARCHAR(30),
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` varchar(15) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` varchar(15) DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);


DROP TABLE IF EXISTS `Hero Motocorp`;
CREATE TABLE `Hero Motocorp` (
  `Date` VARCHAR(30),
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` varchar(15) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` varchar(15) DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);


DROP TABLE IF EXISTS `Infosys`;
CREATE TABLE `Infosys` (
  `Date` VARCHAR(30),
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` varchar(15) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` varchar(15) DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ;


DROP TABLE IF EXISTS `TCS`;
CREATE TABLE `TCS` (
  `Date` VARCHAR(30),
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` varchar(15) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` varchar(15) DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);


DROP TABLE IF EXISTS `TVS Motors`;
CREATE TABLE `TVS Motors` (
  `Date` VARCHAR(30),
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` varchar(15) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` varchar(15) DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);





###################################################################################################
# Step 4: Import the CSV files in MySQL, naming the tables as the name of the stocks.
#         import data from respective csv files and load to tables craeted in previous step
###################################################################################################


#TRUNCATE TABLE `bajaj auto`;
#TRUNCATE TABLE `eicher motors`;
#TRUNCATE TABLE `hero motocorp`;
#TRUNCATE TABLE `infosys`;
#TRUNCATE TABLE `tcs`;
#TRUNCATE TABLE `tvs motors`;


LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/Uploads/Bajaj Auto.csv'
INTO TABLE `bajaj auto`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
`Date`,
`Open Price`,
`High Price`,
`Low Price`,
`Close Price`,
`WAP`,
`No.of Shares`,
`No. of Trades`,
`Total Turnover (Rs.)`,
`Deliverable Quantity`,
`% Deli. Qty to Traded Qty`,
`Spread High-Low`,
`Spread Close-Open`
);




LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/Uploads/Eicher Motors.csv'
INTO TABLE `eicher motors`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
`Date`,
`Open Price`,
`High Price`,
`Low Price`,
`Close Price`,
`WAP`,
`No.of Shares`,
`No. of Trades`,
`Total Turnover (Rs.)`,
`Deliverable Quantity`,
`% Deli. Qty to Traded Qty`,
`Spread High-Low`,
`Spread Close-Open`
);




LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/Uploads/Hero Motocorp.csv'
INTO TABLE `hero motocorp`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
`Date`,
`Open Price`,
`High Price`,
`Low Price`,
`Close Price`,
`WAP`,
`No.of Shares`,
`No. of Trades`,
`Total Turnover (Rs.)`,
`Deliverable Quantity`,
`% Deli. Qty to Traded Qty`,
`Spread High-Low`,
`Spread Close-Open`
);



LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/Uploads/Infosys.csv'
INTO TABLE `infosys`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
`Date`,
`Open Price`,
`High Price`,
`Low Price`,
`Close Price`,
`WAP`,
`No.of Shares`,
`No. of Trades`,
`Total Turnover (Rs.)`,
`Deliverable Quantity`,
`% Deli. Qty to Traded Qty`,
`Spread High-Low`,
`Spread Close-Open`
);



LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/Uploads/TCS.csv'
INTO TABLE `tcs`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
`Date`,
`Open Price`,
`High Price`,
`Low Price`,
`Close Price`,
`WAP`,
`No.of Shares`,
`No. of Trades`,
`Total Turnover (Rs.)`,
`Deliverable Quantity`,
`% Deli. Qty to Traded Qty`,
`Spread High-Low`,
`Spread Close-Open`
);



LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/Uploads/TVS Motors.csv'
INTO TABLE `tvs motors`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
`Date`,
`Open Price`,
`High Price`,
`Low Price`,
`Close Price`,
`WAP`,
`No.of Shares`,
`No. of Trades`,
`Total Turnover (Rs.)`,
`Deliverable Quantity`,
`% Deli. Qty to Traded Qty`,
`Spread High-Low`,
`Spread Close-Open`
);




#########################################################################################################################
# Step 5: Verify the data 
#########################################################################################################################

#desc `bajaj auto`;
#desc `eicher motors`;
#desc `hero motocorp`;
#desc `infosys`;
#desc `tcs`;
#desc `tvs motors`;

#SELECT * FROM `bajaj auto` ORDER BY STR_TO_DATE(Date, "%d-%M-%Y");
#SELECT * FROM `eicher motors` ORDER BY STR_TO_DATE(Date, "%d-%M-%Y");
#SELECT * FROM `hero motocorp` ORDER BY STR_TO_DATE(Date, "%d-%M-%Y");
#SELECT * FROM `infosys` ORDER BY STR_TO_DATE(Date, "%d-%M-%Y");
#SELECT * FROM `tcs` ORDER BY STR_TO_DATE(Date, "%d-%M-%Y"); 
#SELECT * FROM `tvs motors` ORDER BY STR_TO_DATE(Date, "%d-%M-%Y");





#########################################################################################################################
# Step 6: Create a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA. 
#         This has to be done for all 6 stocks
#########################################################################################################################

DROP TABLE IF EXISTS `bajaj1`;
CREATE TABLE `bajaj1`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `20 Day MA` double(15,2) DEFAULT NULL,
  `50 Day MA` double(15,2) DEFAULT NULL
);

DROP TABLE IF EXISTS `eicher1`;
CREATE TABLE `eicher1`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `20 Day MA` double(15,2) DEFAULT NULL,
  `50 Day MA` double(15,2) DEFAULT NULL
);


DROP TABLE IF EXISTS `hero1`;
CREATE TABLE `hero1`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `20 Day MA` double(15,2) DEFAULT NULL,
  `50 Day MA` double(15,2) DEFAULT NULL
);

 
DROP TABLE IF EXISTS `infosys1`;
CREATE TABLE `infosys1`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `20 Day MA` double(15,2) DEFAULT NULL,
  `50 Day MA` double(15,2) DEFAULT NULL
);


DROP TABLE IF EXISTS `tcs1`;
CREATE TABLE `tcs1`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `20 Day MA` double(15,2) DEFAULT NULL,
  `50 Day MA` double(15,2) DEFAULT NULL
);


DROP TABLE IF EXISTS `tvs1`;
CREATE TABLE `tvs1`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `20 Day MA` double(15,2) DEFAULT NULL,
  `50 Day MA` double(15,2) DEFAULT NULL
);




#########################################################################################################################
# Step 7: Insert data (moving average) for these 6 tables
#########################################################################################################################

INSERT INTO bajaj1(`Date`, `Close Price`,  `20 Day MA`, `50 Day MA`)
Select 
	`Date`,
    `Close Price`,
	IF(RowNumber > 19, MA20, NULL) as MA20,
	IF(RowNumber > 49, MA50, NULL) as MA50
FROM
(
SELECT 
	STR_TO_DATE(Date, "%d-%M-%Y") as `Date`,
	`Close Price`,
	ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC) RowNumber,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 19 PRECEDING) AS MA20,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 49 PRECEDING) AS MA50
FROM `bajaj auto`
) A;




INSERT INTO eicher1(`Date`, `Close Price`,  `20 Day MA`, `50 Day MA`)
Select 
	`Date`,
    `Close Price`,
	IF(RowNumber > 19, MA20, NULL) as MA20,
	IF(RowNumber > 49, MA50, NULL) as MA50
FROM
(
SELECT 
	STR_TO_DATE(Date, "%d-%M-%Y") as `Date`,
	`Close Price`,
	ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC) RowNumber,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 19 PRECEDING) AS MA20,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 49 PRECEDING) AS MA50
FROM `eicher motors`
) A;




INSERT INTO `hero1` (`Date`, `Close Price`,  `20 Day MA`, `50 Day MA`)
Select 
	`Date`,
    `Close Price`,
	IF(RowNumber > 19, MA20, NULL) as MA20,
	IF(RowNumber > 49, MA50, NULL) as MA50
FROM
(
SELECT 
	STR_TO_DATE(Date, "%d-%M-%Y") as `Date`,
	`Close Price`,
	ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC) RowNumber,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 19 PRECEDING) AS MA20,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 49 PRECEDING) AS MA50
FROM `hero motocorp`
) A;



INSERT INTO infosys1(`Date`, `Close Price`,  `20 Day MA`, `50 Day MA`)
Select 
	`Date`,
    `Close Price`,
	IF(RowNumber > 19, MA20, NULL) as MA20,
	IF(RowNumber > 49, MA50, NULL) as MA50
FROM
(
SELECT 
	STR_TO_DATE(Date, "%d-%M-%Y") as `Date`,
	`Close Price`,
	ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC) RowNumber,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 19 PRECEDING) AS MA20,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 49 PRECEDING) AS MA50
FROM `infosys`
) A;




INSERT INTO tcs1(`Date`, `Close Price`,  `20 Day MA`, `50 Day MA`)
Select 
	`Date`,
    `Close Price`,
	IF(RowNumber > 19, MA20, NULL) as MA20,
	IF(RowNumber > 49, MA50, NULL) as MA50
FROM
(
SELECT 
	STR_TO_DATE(Date, "%d-%M-%Y") as `Date`,
	`Close Price`,
	ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC) RowNumber,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 19 PRECEDING) AS MA20,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 49 PRECEDING) AS MA50
FROM `tcs`
) A;



INSERT INTO tvs1(`Date`, `Close Price`,  `20 Day MA`, `50 Day MA`)
Select 
	`Date`,
    `Close Price`,
	IF(RowNumber > 19, MA20, NULL) as MA20,
	IF(RowNumber > 49, MA50, NULL) as MA50
FROM
(
SELECT 
	STR_TO_DATE(Date, "%d-%M-%Y") as `Date`,
	`Close Price`,
	ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC) RowNumber,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 19 PRECEDING) AS MA20,
	AVG(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date, "%d-%M-%Y") ASC ROWS 49 PRECEDING) AS MA50
FROM `tvs motors`
) A;







#########################################################################################################################
# Step 8: Verify the table data for moving average calculation
#########################################################################################################################

#desc bajaj1;
#desc eicher1;
#desc hero1;
#desc infosys1;
#desc tcs1;
#desc tvs1;

#Select * from bajaj1;
#Select * from eicher1;
#Select * from hero1;
#Select * from infosys1;
#Select * from tcs1;
#Select * from tvs1;




######################################################################################################################################
#Step 9: Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)
#		 The table header should appear as below:-->  Date, Bajaj, TCS, TVS, Infosys, Eicher, Hero   
#####################################################################################################################################

DROP TABLE IF EXISTS `masterStock`;
CREATE TABLE `masterStock`
(
  `Date` date,
  `Bajaj` double(15,2) DEFAULT NULL,
  `TCS` double(15,2) DEFAULT NULL,
  `TVS` double(15,2) DEFAULT NULL,
  `Infosys` double(15,2) DEFAULT NULL,
  `Eicher` double(15,2) DEFAULT NULL,
  `Hero` double(15,2) DEFAULT NULL
); 


INSERT INTO `masterStock`(`Date`, `Bajaj`, `TCS`, `TVS`, `Infosys`, `Eicher`, `Hero`)
SELECT 
	STR_TO_DATE(T1.Date, "%d-%M-%Y") as Date ,
    T1.`Close Price` as Bajaj,  
    T2.`Close Price` as TCS, 
    T3.`Close Price` as TVS, 
    T4.`Close Price` as Infosys, 
    T5.`Close Price` as Eicher, 
    T6.`Close Price` as Hero
FROM 
`bajaj auto` T1 
INNER JOIN `tcs` T2 ON STR_TO_DATE(T1.Date, "%d-%M-%Y") = STR_TO_DATE(T2.Date, "%d-%M-%Y")
INNER JOIN `tvs motors` T3 ON STR_TO_DATE(T1.Date, "%d-%M-%Y") = STR_TO_DATE(T3.Date, "%d-%M-%Y")
INNER JOIN `infosys` T4  ON STR_TO_DATE(T1.Date, "%d-%M-%Y") = STR_TO_DATE(T4.Date, "%d-%M-%Y")
INNER JOIN  `eicher motors` T5 ON STR_TO_DATE(T1.Date, "%d-%M-%Y") = STR_TO_DATE(T5.Date, "%d-%M-%Y")
INNER JOIN `hero motocorp` T6  ON STR_TO_DATE(T1.Date, "%d-%M-%Y") = STR_TO_DATE(T6.Date, "%d-%M-%Y")
Order by STR_TO_DATE(T1.Date, "%d-%M-%Y");



#########################################################################################################################
# Step 10: Verify the master table data 
#########################################################################################################################

#desc masterStock;
#Select * from masterStock;



##########################################################################################################################
#Step 11: Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. 
#         Perform this operation for all stocks.
# 
##########################################################################################################################


DROP TABLE IF EXISTS `bajaj2`;
CREATE TABLE `bajaj2`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `Signal` varchar(50) DEFAULT NULL
);


DROP TABLE IF EXISTS `eicher2`;
CREATE TABLE `eicher2`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `Signal` varchar(50) DEFAULT NULL
);


DROP TABLE IF EXISTS `hero2`;
CREATE TABLE `hero2`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `Signal` varchar(50) DEFAULT NULL
);

 
DROP TABLE IF EXISTS `infosys2`;
CREATE TABLE `infosys2`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `Signal` varchar(50) DEFAULT NULL
);


DROP TABLE IF EXISTS `tcs2`;
CREATE TABLE `tcs2`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `Signal` varchar(50) DEFAULT NULL
);


DROP TABLE IF EXISTS `tvs2`;
CREATE TABLE `tvs2`
(
  `Date` date,
  `Close Price` double(15,2) DEFAULT NULL,
  `Signal` varchar(50) DEFAULT NULL
);


##########################################################################################################################
#Step 12: load the data into above created table with BUY/SELL/HOLD information 
#         Perform this operation for all stocks.
#
############## Indicator Calculation logic #################################
#Curent row 20 day > 50 day  and previous row  20 day < 50 day -----> Buy 
#Curent row 20 day < 50 day  and previous row  20 day > 50 day -----> Sell
##########################################################################################################################
#While loading data ignored the NULL values

#TRUNCATE TABLE bajaj2;
#TRUNCATE TABLE eicher2;
#TRUNCATE TABLE hero2;
#TRUNCATE TABLE infosys2;
#TRUNCATE TABLE tcs2;
#TRUNCATE TABLE tvs2;


Insert into bajaj2(`Date`,`Close Price`,`Signal`)
SELECT
	`Date`,
	`Close Price`,
    IF(
		(CUR20MA > CUR50MA AND PRV20MA < PRV50MA ), 
		'BUY', 
		IF (CUR20MA < CUR50MA AND PRV20MA > PRV50MA, 'SELL' , 'HOLD')
        ) as Indicator
FROM
(
SELECT 
	t.`date`,
	t.`Close Price`,
    t.`20 Day MA` as CUR20MA,
	t.`50 Day MA` as CUR50MA,
	lag(t.`20 Day MA`) over(order by cast(`date` as date)) as PRV20MA,
	lag(t.`50 Day MA`) over(order by cast(`date` as date)) as PRV50MA
FROM bajaj1 t
Where `20 Day MA` IS NOT NULL AND `50 Day MA` IS NOT NULL 
) A;




Insert into eicher2(`Date`,`Close Price`,`Signal`)
SELECT
	`Date`,
	`Close Price`,
    IF(
		(CUR20MA > CUR50MA AND PRV20MA < PRV50MA ), 
		'BUY', 
		IF (CUR20MA < CUR50MA AND PRV20MA > PRV50MA, 'SELL' , 'HOLD')
        ) as Indicator
FROM
(
SELECT 
	t.`date`,
	t.`Close Price`,
    t.`20 Day MA` as CUR20MA,
	t.`50 Day MA` as CUR50MA,
	lag(t.`20 Day MA`) over(order by cast(`date` as date)) as PRV20MA,
	lag(t.`50 Day MA`) over(order by cast(`date` as date)) as PRV50MA
FROM eicher1 t
Where `20 Day MA` IS NOT NULL AND `50 Day MA` IS NOT NULL 
) A;


Insert into hero2(`Date`,`Close Price`,`Signal`)
SELECT
	`Date`,
	`Close Price`,
    IF(
		(CUR20MA > CUR50MA AND PRV20MA < PRV50MA ), 
		'BUY', 
		IF (CUR20MA < CUR50MA AND PRV20MA > PRV50MA, 'SELL' , 'HOLD')
        ) as Indicator
FROM
(
SELECT 
	t.`date`,
	t.`Close Price`,
    t.`20 Day MA` as CUR20MA,
	t.`50 Day MA` as CUR50MA,
	lag(t.`20 Day MA`) over(order by cast(`date` as date)) as PRV20MA,
	lag(t.`50 Day MA`) over(order by cast(`date` as date)) as PRV50MA
FROM hero1 t
Where `20 Day MA` IS NOT NULL AND `50 Day MA` IS NOT NULL 
) A;



Insert into infosys2(`Date`,`Close Price`,`Signal`)
SELECT
	`Date`,
	`Close Price`,
    IF(
		(CUR20MA > CUR50MA AND PRV20MA < PRV50MA ), 
		'BUY', 
		IF (CUR20MA < CUR50MA AND PRV20MA > PRV50MA, 'SELL' , 'HOLD')
        ) as Indicator
FROM
(
SELECT 
	t.`date`,
	t.`Close Price`,
    t.`20 Day MA` as CUR20MA,
	t.`50 Day MA` as CUR50MA,
	lag(t.`20 Day MA`) over(order by cast(`date` as date)) as PRV20MA,
	lag(t.`50 Day MA`) over(order by cast(`date` as date)) as PRV50MA
FROM infosys1 t
Where `20 Day MA` IS NOT NULL AND `50 Day MA` IS NOT NULL 
) A;



Insert into tcs2(`Date`,`Close Price`,`Signal`)
SELECT
	`Date`,
	`Close Price`,
    IF(
		(CUR20MA > CUR50MA AND PRV20MA < PRV50MA ), 
		'BUY', 
		IF (CUR20MA < CUR50MA AND PRV20MA > PRV50MA, 'SELL' , 'HOLD')
        ) as Indicator
FROM
(
SELECT 
	t.`date`,
	t.`Close Price`,
    t.`20 Day MA` as CUR20MA,
	t.`50 Day MA` as CUR50MA,
	lag(t.`20 Day MA`) over(order by cast(`date` as date)) as PRV20MA,
	lag(t.`50 Day MA`) over(order by cast(`date` as date)) as PRV50MA
FROM tcs1 t
Where `20 Day MA` IS NOT NULL AND `50 Day MA` IS NOT NULL 
) A;



Insert into tvs2(`Date`,`Close Price`,`Signal`)
SELECT
	`Date`,
	`Close Price`,
    IF(
		(CUR20MA > CUR50MA AND PRV20MA < PRV50MA ), 
		'BUY', 
		IF (CUR20MA < CUR50MA AND PRV20MA > PRV50MA, 'SELL' , 'HOLD')
        ) as Indicator
FROM
(
SELECT 
	t.`date`,
	t.`Close Price`,
    t.`20 Day MA` as CUR20MA,
	t.`50 Day MA` as CUR50MA,
	lag(t.`20 Day MA`) over(order by cast(`date` as date)) as PRV20MA,
	lag(t.`50 Day MA`) over(order by cast(`date` as date)) as PRV50MA
FROM tvs1 t
Where `20 Day MA` IS NOT NULL AND `50 Day MA` IS NOT NULL 
) A;




#########################################################################################################################
# Step 13: Verify the table data for buy/sell/hold calculations
#########################################################################################################################

#desc bajaj2;
#desc eicher2;
#desc hero2;
#desc infosys2;
#desc tcs2;
#desc tvs2;

#Select * from bajaj2;
#Select * from eicher2;
#Select * from hero2;
#Select * from infosys2;
#Select * from tcs2;
#Select * from tvs2;


SELECT `signal`, COUNT(*) FROM bajaj2 GROUP BY `signal` ORDER BY 1; 	#B-12/H-817/S-11
SELECT `signal`, COUNT(*) FROM eicher2 GROUP BY `signal` ORDER BY 1;	#B-6/H-827/S-7
SELECT `signal`, COUNT(*) FROM hero2 GROUP BY `signal` ORDER BY 1;		#B-9/H-822/S-9
SELECT `signal`, COUNT(*) FROM infosys2 GROUP BY `signal` ORDER BY 1;	#B-9/H-822/S-9
SELECT `signal`, COUNT(*) FROM tcs2 GROUP BY `signal` ORDER BY 1;		#B-12/H-5/S-13
SELECT `signal`, COUNT(*) FROM tvs2 GROUP BY `signal` ORDER BY 1;		#B-8/H-824/S-8



###########################################################################################################################
#Step 14. Create a User defined function, that takes the date as input and 
#		 returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
###########################################################################################################################

DELIMITER $$

CREATE FUNCTION fn_getStockSignal (inputDate date)

 RETURNS VARCHAR(50) DETERMINISTIC
	BEGIN
        
        DECLARE result varchar(50);
        
        SET result = (SELECT `Signal` FROM Bajaj2 WHERE `Date` = inputDate);
        
        RETURN result;

	END 
$$


###########################################################################################################################
#Step 15. testing the function with passing some random date values
###########################################################################################################################

SELECT fn_getStockSignal('2015-03-27'); -- HOLD
SELECT fn_getStockSignal('2015-05-18'); -- BUY
SELECT fn_getStockSignal('2015-12-11'); -- SELL
SELECT fn_getStockSignal('2015-12-17'); -- BUY
SELECT fn_getStockSignal('2017-11-13'); -- HOLD





###########################################################################################################################
#****************************************END OF FILE**********************************************************************#
###########################################################################################################################











