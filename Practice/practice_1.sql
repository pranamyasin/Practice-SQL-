create database practice;
use practice;

CREATE TABLE Class(
Name varchar(100) NOT NULL PRIMARY KEY,
Age int(100)check (Age>5),                #Warning Occured
Overall_Score int(100),
)

Drop table class 

CREATE TABLE Class(
Name varchar(100) NOT NULL PRIMARY KEY,
Age int,
Overall_Score int,
check (Age>5))

desc class;