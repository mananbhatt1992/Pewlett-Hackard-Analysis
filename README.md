# Pewlett-Hackard-Analysis

## Overview

The purpose is to perform a analysis for Pewlitt-Hackard using Postgres SQL and identify the number of retring employees and the employess eligible for the mentorship
program. The criterion was based on the birth dates ranging from 1952 to 1955 and hired dates from 1985 to 1988.


## Results

From the data we had we were able to deduce the below ERD(Entity Relationship Diagram:

![QuickDBD-export](https://user-images.githubusercontent.com/99941484/165008487-f7771fce-3277-4f95-80fc-3be9d8287905.png)


1.) Employees Retiring along with Titles:

![image](https://user-images.githubusercontent.com/99941484/165008814-8628d1ce-a509-4177-b71e-1f8db36df545.png)

2.) As we just wanted the most recent title we used ditinct on function here and we got the below result:

![image](https://user-images.githubusercontent.com/99941484/165008980-cdb3fc49-ec32-4776-bd01-320768ef662e.png)

3.) Count by Title:

![image](https://user-images.githubusercontent.com/99941484/165009078-8fcc34ae-acec-4dd9-bd98-2250f019f7c8.png)

From the above table we can very well see that 50,842 senior employess are retring out 72458 employees which is around 70%.
So hirng will have to be done to fill in the senior positions also employees can be used from the Pewlitt Hackard Mentorship Intitiative

4.) Employees eligible for Mentorship Program:

![image](https://user-images.githubusercontent.com/99941484/165009734-73e22d16-a7be-4aa8-8b9d-c60296c568c1.png)

There are total 1549 employees eligible for mentorship program which is not sufficient to cover the retring employees.


## Results

1.) As seen above we can 70 percent of the staff retring are senior members so Pewlitt Hackard will have to extensive hiring to fill in those positions.

2.) Mentorship Initiative might help fill up some positons but the number of employees eligible for mentorship for each postion is less comapred to what is required.
Below screenshot shows number of employees in in each postion who are eligible for mentorship:

![image](https://user-images.githubusercontent.com/99941484/165015801-791cbd5f-de59-446c-ba76-0cd5926ad0e6.png)

3.) No. of employees eligible for retiremnt grouped by title and department name:

![image](https://user-images.githubusercontent.com/99941484/165016394-9138cfc7-d619-4420-9d30-1d9a49b0681d.png) ![image](https://user-images.githubusercontent.com/99941484/165016429-832f1426-dd2b-4c71-94a9-f6f9209ab4d7.png)




