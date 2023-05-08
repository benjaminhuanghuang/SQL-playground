# Data Analysis: Investigate with SQL
By Walter Shields Released: 4/25/2023
https://www.linkedin.com/learning/data-analysis-investigate-with-sql

https://wsdalearning.ai/sqleditor/


## Query #1
```
--Query # 1
/*
Suspects Group 1: People we found who reside in New York City
*/
SELECT
    id AS [Customer Number],
    firstName AS [First Name],
    LastName AS [Last Name],
    city AS City,
    age AS Age
FROM
    customer_details
ORDER BY city
LIMIT 100
```

## Query #2
```
--Query # 2
/*
    Fine people who flew to NY BEFORE the date of the crime in the flight_details table
*/
SELECT
    customer_id AS [Customer Num],
    cusfName AS [First Name],
    cuslname AS [Last Name],
    start_city AS [Departure City],
    dest_city AS [Arrival City],
    flightdate AS [Flight Date]
FROM
    flight_details
WHERE
    dest_city = 'New York City' AND flightdate <= '2021-10-23'
```

## Query #3
```
--Query # 3
/*
   Fine people who flew from NY AFTER the date of the crime in the flight_details table
*/
SELECT
    customer_id AS [Customer Num],
    cusfName AS [First Name],
    cuslname AS [Last Name],
    start_city AS [Departure City],
    dest_city AS [Arrival City],
    flightdate AS [Flight Date]
FROM
    flight_details
WHERE
    start_city = 'New York City' AND flightdate >= '2021-10-23'
```

Suspects Group 2: People who flew to New York City before the date of the theft and left New York City after the date of the theft


## Query #4
```
--Query # 4
/*
   Fine the conversion that were sent back and forth around the date of the crime(2021-10-23).
*/
SELECT
    sender_id AS [Sender ID],
    senderfname AS [Sender First Name],
    senderlname AS [Sender Last Name],
    receiver_id AS [Recipient ID],
    recieverfname AS [Recipient First Name],
    recieverlname AS [Recipient Last Name],
    message AS [Text Message],
    sent AS [Date Sent]
FROM
    text_messages
WHERE
    sent BETWEEN '2021-10-20' AND '2021-10-25'
ORDER BY
    sent
```

## Query #5
```
-- Query # 5
/*
   Fine the conversion that were sent back and forth around the date of the crime by the suspects.
*/
SELECT
    sender_id AS [Sender ID],
    senderfname AS [Sender First Name],
    senderlname AS [Sender Last Name],
    receiver_id AS [Recipient ID],
    recieverfname AS [Recipient First Name],
    recieverlname AS [Recipient Last Name],
    message AS [Text Message],
    sent AS [Sent Date]
FROM
    text_messages
WHERE
    sent BETWEEN '2021-10-20' AND '2021-10-25' AND
    sender_id IN (32,38,100,105,106)
ORDER BY
    sent
```
