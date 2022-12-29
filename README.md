# Pewlett Hackard Analysis


## Overview 

This analysis was executed for Pewlett Hackard, a large company with long history and many employees throughout the years. 

Due to the huge number of people working for them, and the fact that several of them are getting retired soon, they need to have answers to the questions:
- Who of the employees appply to the retirement package?
- Which positions need to be filled in the near future?

In this way, they are going to be able to get ready to prepare new coworkers for these vacancies. 

The task will work with the following criteria over the data:
- Get the exact amount of people and which job positions are leaving for the next few years.

The best option to perform the results is using the existing database to create  tables and present the required information, and because of this, we decided to export the CSV (Comma Separated Values) archives from the company to build the new database with SQL (Structured Query Language).


## Results

1. First, we made a join between the employees and the titles table to get the employees name, title and working dates. The output showed almost 134,000 rows because the employer numbers were repeated, that is why we decided to made a second one filtering this column so the output only shows the most recent title of each employee.
2. After performing this, we got less rows, this represents the quantity of employees retiring soon. The next figure shows the table head.  
<img width="337" alt="Screen Shot 2022-11-23 at 4 11 38 PM" src="https://user-images.githubusercontent.com/113856917/203654729-4b4d08bc-bbd8-46b2-b7e7-ee2520d85e05.png">
 3. The next table provides the results divided by title; being "Senior Enginner", "Senior Staff" and "Engineer" at the top of the count, with many positions that need to be filled. 
 <img width="174" alt="Screen Shot 2022-11-23 at 4 21 36 PM" src="https://user-images.githubusercontent.com/113856917/203655841-1cccd264-0872-4e20-ad1f-8805fa1373ee.png">
4. Finally, we added another table with the employees elegible for the Mentorship who were born between January 1, 1965 and December 31, 1965. The output showed 1,549 workers that apply in this program.
<img width="562" alt="Screen Shot 2022-11-23 at 4 24 59 PM" src="https://user-images.githubusercontent.com/113856917/203656295-5d0384cf-cebc-481d-9c65-4938798519ae.png">


## Summary

 In total 72,458 roles will need to be filled as the "silver tsunami" begins to make an impact, analyzing that number versus the employees that are listed in the mentorship program, in my opinion there are not enough people to help the upcoming co-workers. In order to prevent the lack of mentors, I would provide two additional tables.
 
 The figure 1 shows that would be more convenient implementing the mentorship program to those who were born not only in the 1965, but in the 1963 and 1964 as well. Giving us a total of 38,400 instead of 1,549.
 
<img width="773" alt="Screen Shot 2022-11-24 at 7 58 36 AM" src="https://user-images.githubusercontent.com/113856917/203802248-292d184e-6b8f-4754-9d8b-98852967ac94.png">

Lastly, we would add a table that displays how many employees of each area could be available in the mentorship program.

<img width="246" alt="Screen Shot 2022-11-24 at 8 01 49 AM" src="https://user-images.githubusercontent.com/113856917/203803074-b0227e7d-1b7a-4715-b4bd-24aaa1a8bd1e.png">
