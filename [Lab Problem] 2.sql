/*markdown
Practice Exercises
*/

/*markdown
3.1 Write the following queries in SQL, using the university schema. (We suggest you actually run these queries on a database, using the sample data that we provide on the web site of the book, db-book.com. Instructions for setting up a database, and loading sample data, are provided on the above web site.)
*/

/*markdown
a. Find the titles of courses in the Comp. Sci. department that have 3 credits.
*/

select title from course where dept_name = 'Comp. Sci.' and credits > 3;

/*markdown
b. Find the IDs of all students who were taught by an instructor named Shuming; make sure there are no duplicates in the result.
*/

SELECT DISTINCT takes.ID FROM takes, instructor, teaches 
WHERE takes.course_id = teaches.course_id AND takes.sec_id = teaches.sec_id 
AND takes.semester = teaches.semester AND takes.year= teaches.year 
AND teaches.id = instructor.id AND instructor.name ='Shuming';

/*markdown
c. Find the highest salary of any instructor.
*/

SELECT * FROM instructor WHERE instructor.salary = (SELECT MAX(salary) FROM instructor);

/*markdown
d. Find all instructors earning the highest salary (there may be more than one with the same salary).
*/

SELECT name FROM instructor WHERE instructor.salary = (SELECT MAX(salary) FROM instructor);

/*markdown
e. Find the enrollment of each section that was offered in Fall 2010.
*/

/*markdown
f. Find the maximum enrollment, across all sections, in Fall 2017.
*/

/*markdown
g. Find the sections that had the maximum enrollment in Fall 2017.
*/

/*markdown
3.2 Suppose you are given a relation grade_points(grade, points) that provides a conversion from letter grades in the takes relation to numeric scores; for example, an “A” grade could be specified to correspond to 4 points, an “A−” to 3.7 points, a “B+” to 3.3 points, a “B” to 3 points, and so on. The grade points earned by a student for a course offering (section) is defined as the number of credits for the course multiplied by the numeric points for the grade that the student received. Given the preceding relation, and our university schema, write each of the following queries in SQL. You may assume for simplicity that no takes tuple has the null value for grade.
*/

/*markdown
a. Find the total grade points earned by the student with ID '12345', across all courses taken by the student.
*/

/*markdown
b. Find the grade point average (GPA) for the above student, that is, the total grade points divided by the total credits for the associated courses.
*/

/*markdown
c. Find the ID and the grade-point average of each student.
*/

/*markdown
d. Now reconsider your answers to the earlier parts of this exercise under the assumption that some grades might be null. Explain whether your solutions still work and, if not, provide versions that handle nulls properly.
*/

/*markdown
3.3 Write the following inserts, deletes, or updates in SQL, using the university schema.
*/

/*markdown
a. Increase the salary of each instructor in the Comp. Sci. department by 10%.
*/

/*markdown
b. Delete all courses that have never been offered (i.e., do not occur in the section relation).
*/

/*markdown
c. Insert every student whose tot cred attribute is greater than 100 as an instructor in the same department, with a salary of $10,000.
*/

/*markdown
3.4 Consider the insurance database of Figure 3.17, where the primary keys are underlined. Construct the following SQL queries for this relational database.
*/

/*markdown
person (driver_id, name, address)
car (license_plate, model, year)
accident (report_number, year, location)
owns (driver_id, license_plate)
participated (report_number, license_plate, driver_id, damage_amount)
Figure 3.17 Insurance database
*/

/*markdown
a. Find the total number of people who owned cars that were involved in accidents in 2017.
*/

/*markdown
b. Delete all year-2010 cars belonging to the person whose ID is '12345'.
*/

/*markdown
3.5 Suppose that we have a relation marks(ID, score) and we wish to assign grades to students based on the score as follows: grade F if score < 40, grade C if 40 ≤ score < 60, grade B if 60 ≤ score < 80, and grade A if 80 ≤ score. Write SQL queries to do the following:
*/

/*markdown
a. Display the grade for each student, based on the marks relation.
*/

/*markdown
b. Find the number of students with each grade.
*/

/*markdown
3.6 The SQL like operator is case sensitive (in most systems), but the lower() function on strings can be used to perform case-insensitive matching. To show how, write a query that finds departments whose names contain the string “sci” as a substring, regardless of the case.
*/

/*markdown
3.7 Consider the SQL query
select p.a1
from p, r1, r2
where p.a1 = r1.a1 or p.a1 = r2.a1

Under what conditions does the preceding query select values of p.a1 that are either in r1 or in r2? Examine carefully the cases where either r1 or r2 may be empty.
*/

/*markdown
branch(branch_name, branch_city, assets)
customer (ID, customer_name, customer_street, customer_city)
loan (loan_number, branch_name, amount)
borrower (ID, loan_number)
account (account_number, branch_name, balance )
depositor (ID, account_number)
Figure 3.18 Banking database.
*/

/*markdown
3.8 Consider the bank database of Figure 3.18, where the primary keys are underlined. Construct the following SQL queries for this relational database.
*/

/*markdown
a. Find the ID of each customer of the bank who has an account but not a loan.
*/

/*markdown
b. Find the ID of each customer who lives on the same street and in the same city as customer '12345'.
*/

/*markdown
c. Find the name of each branch that has at least one customer who has an account in the bank and who lives in “Harrison”.
*/

/*markdown
employee (ID, person_name, street, city)
works (ID, company_name, salary)
company (company_name, city)
manages (ID, manager_id)
Figure 3.19 Employee database.
*/

/*markdown
3.9 Consider the relational database of Figure 3.19, where the primary keys are underlined. Give an expression in SQL for each of the following queries.
*/

/*markdown
a. Find the ID, name, and city of residence of each employee who works for “First Bank Corporation”.
*/

/*markdown
b. Find the ID, name, and city of residence of each employee who works for “First Bank Corporation” and earns more than $10000.
*/

/*markdown
c. Find the ID of each employee who does not work for “First Bank Corporation”.
*/

/*markdown
d. Find the ID of each employee who earns more than every employee of “Small Bank Corporation”.
*/

/*markdown
e. Assume that companies may be located in several cities. Find the name of each company that is located in every city in which “Small Bank Corporation” is located.
*/

/*markdown
f. Find the name of the company that has the most employees (or companies, in the case where there is a tie for the most).
*/

/*markdown
g. Find the name of each company whose employees earn a higher salary, on average, than the average salary at “First Bank Corporation”.
*/

/*markdown
3.10 Consider the relational database of Figure 3.19. Give an expression in SQL for each of the following:
*/

/*markdown
a. Modify the database so that the employee whose ID is '12345' now lives in “Newtown”.
*/

/*markdown
b. Give each manager of “First Bank Corporation” a 10 percent raise unless the salary becomes greater than $100000; in such cases, give only a 3 percent raise.
*/

/*markdown
Exercises
*/

/*markdown
3.11 Write the following queries in SQL, using the university schema.
*/

/*markdown
a. Find the ID and name of each student who has taken at least one Comp. Sci. course; make sure there are no duplicate names in the result.
*/

/*markdown
b. Find the ID and name of each student who has not taken any course offered before 2017.
*/

/*markdown
c. For each department, find the maximum salary of instructors in that department. You may assume that every department has at least one instructor.
*/

/*markdown
d. Find the lowest, across all departments, of the per-department maximum salary computed by the preceding query.
*/

/*markdown
3.12 Write the SQL statements using the university schema to perform the following operations:
*/

/*markdown
a. Create a new course “CS-001”, titled “Weekly Seminar”, with 0 credits.
*/

/*markdown
b. Create a section of this course in Fall 2017, with sec_id of 1, and with the location of this section not yet specified.
*/

/*markdown
c. Enroll every student in the Comp. Sci. department in the above section.
*/

/*markdown
d. Delete enrollments in the above section where the student’s ID is 12345.
*/

/*markdown
e. Delete the course CS-001. What will happen if you run this delete statement without first deleting offerings (sections) of this course?
*/

/*markdown
f. Delete all takes tuples corresponding to any section of any course with the word “advanced” as a part of the title; ignore case when matching the word with the title.
*/

/*markdown
3.13 Write SQL DDL corresponding to the schema in Figure 3.17. Make any reasonable assumptions about data types and be sure to declare primary and foreign keys.
*/

/*markdown
3.14 Consider the insurance database of Figure 3.17, where the primary keys are underlined. Construct the following SQL queries for this relational database.
a. Find the number of accidents involving a car belonging to a person named “John Smith”.
*/

/*markdown
b. Update the damage amount for the car with license plate “AABB2000” in the accident with report number “AR2197” to $3000.
*/

/*markdown
3.15 Consider the bank database of Figure 3.18, where the primary keys are underlined. Construct the following SQL queries for this relational database.
a. Find each customer who has an account at every branch located in “Brooklyn”.
*/

/*markdown
b. Find the total sum of all loan amounts in the bank.
*/

/*markdown
c. Find the names of all branches that have assets greater than those of at least one branch located in “Brooklyn”.
*/

/*markdown
employee (ID, person_name, street, city)
works (ID, company_name, salary)
company (company_name, city)
manages (ID, manager_id)
Figure 3.19 Employee database.

3.16 Consider the employee database of Figure 3.19, where the primary keys are underlined. Give an expression in SQL for each of the following queries.
*/

/*markdown
a. Find ID and name of each employee who lives in the same city as the location of the company for which the employee works.
*/

/*markdown
b. Find ID and name of each employee who lives in the same city and on the same street as does her or his manager.
*/

/*markdown

c. Find ID and name of each employee who earns more than the average salary of all employees of her or his company.
*/

/*markdown
d. Find the company that has the smallest payroll.
*/

/*markdown
3.17 Consider the employee database of Figure 3.19. Give an expression in SQL for each of the following queries.
*/

/*markdown
a. Give all employees of “First Bank Corporation” a 10 percent raise.
*/

/*markdown
b. Give all managers of “First Bank Corporation” a 10 percent raise.
*/

/*markdown
c. Delete all tuples in the works relation for employees of “Small Bank Corporation”.
*/

/*markdown
3.18 Give an SQL schema definition for the employee database of Figure 3.19. Choose an appropriate domain for each attribute and an appropriate primary key for each relation schema. Include any foreign-key constraints that might be appropriate.
*/

/*markdown
3.19 List two reasons why null values might be introduced into the database.
*/

/*markdown
3.20 Show that, in SQL, <> all is identical to not in.
*/

/*markdown
member(memb_no, name)
book(isbn, title, authors, publisher)
borrowed(memb_no, isbn, date)
Figure 3.20 Library database.

3.21 Consider the library database of Figure 3.20. Write the following queries in SQL.
*/

/*markdown
a. Find the member number and name of each member who has borrowed at least one book published by “McGraw-Hill”.
*/

/*markdown
b. Find the member number and name of each member who has borrowed every book published by “McGraw-Hill”.
*/

/*markdown
c. For each publisher, find the member number and name of each member who has borrowed more than five books of that publisher.
*/

/*markdown
d. Find the average number of books borrowed per member. Take into account that if a member does not borrow any books, then that member does not appear in the borrowed relation at all, but that member still counts in the average.
*/

/*markdown
3.22 Rewrite the where clause where unique (select title from course) without using the unique construct.
*/

/*markdown
3.23 Consider the query:
with dept_total (dept_name, value) as
(select dept_name, sum(salary)
from instructor
group by dept_name),
dept_total avg(value) as
(select avg(value)
from dept_total)
select dept_name
from dept_total, dept_total_avg
where dept_total.value >= dept_total_avg.value;

Rewrite this query without using the with construct.
*/

/*markdown
3.24 Using the university schema, write an SQL query to find the name and ID of those Accounting students advised by an instructor in the Physics department.
*/

/*markdown
3.25 Using the university schema, write an SQL query to find the names of those departments whose budget is higher than that of Philosophy. List them in alphabetic order.
*/

/*markdown
3.26 Using the university schema, use SQL to do the following: For each student who has retaken a course at least twice (i.e., the student has taken the course at least three times), show the course ID and the student’s ID. 
Please display your results in order of course ID and do not display duplicate rows.
*/

/*markdown
3.27 Using the university schema, write an SQL query to find the IDs of those students who have retaken at least three distinct courses at least once (i.e, the student has taken the course at least two times).
*/

/*markdown
3.28 Using the university schema, write an SQL query to find the names and IDs of those instructors who teach every course taught in his or her department (i.e., every course that appears in the course relation with the instructor’s department name). Order result by name.
*/

/*markdown
3.29 Using the university schema, write an SQL query to find the name and ID of each History student whose name begins with the letter ‘D’ and who has not taken at least five Music courses.
*/

/*markdown
3.30 Consider the following SQL query on the university schema:
select avg(salary) - (sum(salary) / count(*)) from instructor

We might expect that the result of this query is zero since the average of a set of numbers is defined to be the sum of the numbers divided by the number of numbers. Indeed this is true for the example instructor relation in Figure 2.1. However, there are other possible instances of that relation for which the result would not be zero. Give one such instance, and explain why the result would not be zero.
*/

/*markdown
3.31 Using the university schema, write an SQL query to find the ID and name of each instructor who has never given an A grade in any course she or he has taught. (Instructors who have never taught a course trivially satisfy this condition.)
*/

/*markdown
3.32 Rewrite the preceding query, but also ensure that you include only instructors who have given at least one other non-null grade in some course.
*/

/*markdown
3.33 Using the university schema, write an SQL query to find the ID and title of each course in Comp. Sci. that has had at least one section with afternoon hours (i.e., ends at or after 12:00). (You should eliminate duplicates if any.)
*/

/*markdown
3.34 Using the university schema, write an SQL query to find the number of students in each section. The result columns should appear in the order “courseid, secid, year, semester, num”. You do not need to output sections with 0 students.
*/

/*markdown
3.35 Using the university schema, write an SQL query to find section(s) with maximum enrollment. The result columns should appear in the order “courseid, secid, year, semester, num”. (It may be convenient to use the with construct.)
*/

/*markdown
List of Queries
*/

/*markdown
1. Find out the ID and salary of the instructors.
*/

SELECT id, salary FROM instructor;

/*markdown
2. Find out the ID and salary of the instructor who gets more than $85,000.
*/

/*markdown
3. Find out the department names and their budget at the university.
*/

/*markdown
4. List out the names of the instructors from Computer Science who have more than $70,000.
*/

/*markdown
5. For all instructors in the university who have taught some course, ﬁnd their names and the course ID of all courses they taught.
*/

/*markdown
6. Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.
*/

SELECT name FROM instructor WHERE salary > (SELECT MIN(salary) FROM instructor WHERE dept_name='Biology');

/*markdown
7. Find the advisor of the student with ID 12345
*/

/*markdown
8. Find the average salary of all instructors.
*/

/*markdown
9. Find the names of all departments whose building name includes the substring Watson.
*/

/*markdown
10. Find the names of instructors with salary amounts between $90,000 and $100,000.
*/

/*markdown
11. Find the instructor names and the courses they taught for all instructors in the Biology department who have taught some course.
*/

/*markdown
12. Find the courses taught in Fall-2009 semester.
*/

/*markdown
13. Find the set of all courses taught either in Fall-2009 or in Spring-2010.
*/

/*markdown
14. Find the set of all courses taught in the Fall-2009 as well as in Spring-2010.
*/

/*markdown
15. Find all courses taught in the Fall-2009 semester but not in the Spring-2010 semester.
*/

/*markdown
16. Find all instructors who appear in the instructor relation with null values for salary.
*/

/*markdown
17. Find the average salary of instructors in the Finance department.
*/

/*markdown
18. Find the total number of instructors who teach a course in the Spring-2010 semester.
*/

/*markdown
19. Find the average salary in each department.
*/

/*markdown
20. Find the number of instructors in each department who teach a course in the Spring-2010 semester.
*/

/*markdown
21. List out the departments where the average salary of the instructors is more than $42,000.
*/

/*markdown
22. For each course section offered in 2009, ﬁnd the average total credits (tot cred) of all students enrolled in the section, if the section had at least 2 students.
*/

/*markdown
23. Find all the courses taught in both the Fall-2009 and Spring-2010 semesters.
*/

/*markdown
24. Find all the courses taught in the Fall-2009 semester but not in the Spring-2010 semester.
*/

/*markdown
25. Select the names of instructors whose names are neither <Mozart= nor <Einstein=.
*/

/*markdown
26. Find the total number of (distinct) students who have taken course sections taught by the instructor with ID 110011.
*/

/*markdown
27. Find the ID and names of all instructors whose salary is greater than at least one instructor in the History department.
*/

/*markdown
28. Find the names of all instructors that have a salary value greater than that of each instructor in the Biology department.
*/

/*markdown
29. Find the departments that have the highest average salary.
*/

/*markdown
30. Find all courses taught in both the Fall 2009 semester and in the Spring-2010 semester.
*/

/*markdown
31. Find all students who have taken all the courses offered in the Biology department.
*/

/*markdown
32. Find all courses that were offered at most once in 2009.
*/

/*markdown
33. Find all courses that were offered at least twice in 2009.
*/

/*markdown
34. Find the average instructors9 salaries of those departments where the average salary is greater than $42,000.
*/

/*markdown
35. Find the maximum across all departments of the total salary at each department.
*/

/*markdown
36. List all departments along with the number of instructors in each department.
*/

/*markdown
37. Find the titles of courses in the Comp. Sci. department that has 3 credits.
*/

/*markdown
38. Find the IDs of all students who were taught by an instructor named Einstein; make sure there are no duplicates in the result.
*/

/*markdown
39. Find the highest salary of any instructor.
*/

/*markdown
40. Find all instructors earning the highest salary (there may be more than one with the same salary).
*/

/*markdown
41. Find the enrollment of each section that was offered in Autumn-2009.
*/

/*markdown
42. Find the maximum enrollment, across all sections, in Autumn-2009.
*/

/*markdown
43. Find the salaries after the following operation: Increase the salary of each instructor in the Comp. Sci. department by 10%.
*/

/*markdown
44. Find all students who have not taken a course.
*/

/*markdown
45. List all course sections offered by the Physics department in the Fall-2009 semester, with the building and room number of each section.
*/

/*markdown
46. Find the student names who take courses in Spring-2010 semester at Watson Building.
*/

/*markdown
47. List the students who take courses teaches by Brandt.
*/

/*markdown
48. Find out the average salary of the instructor in each department.
*/

/*markdown
49. Find the number of students who take the course titled 8Intro. To Computer Science.
*/

/*markdown
50. Find out the total salary of the instructors of the Computer Science department who take a course(s) in Watson building.
*/

/*markdown
51. Find out the course titles which starts between 10:00 to 12:00.
*/

/*markdown
52. List the course names where CS-1019 is the pre-requisite course.
*/

/*markdown
53. List the student names who get more than B+ grades in their respective courses.
*/

/*markdown
54. Find the student who takes the maximum credit from each department.
*/

/*markdown
55. Find out the student ID and grades who take a course(s) in Spring-2009 semester.
*/

/*markdown
56. Find the building(s) where the student takes the course titled Image Processing.
*/

/*markdown
57. Find the room no. and the building where the student from Fall-2009 semester can take a course(s).
*/

/*markdown
58. Find the names of those departments whose budget is higher than that of Astronomy. List them in alphabetic order.
*/

/*markdown
59. Display a list of all instructors, showing each instructor's ID and the number of sections taught. Make sure to show the number of sections as 0 for instructors who have not taught any section.
*/

/*markdown
60. For each student who has retaken a course at least twice (i.e., the student has taken the course at least three times), show the course ID and the student's ID. Please display your results in order of course ID and do not display duplicate rows.
*/

/*markdown
61. Find the names of Biology students who have taken at least 3 Accounting courses.
*/

/*markdown
62. Find the sections that had maximum enrollment in Fall 2010.
*/

/*markdown
63. Find student names and the number of law courses taken for students who have taken at least half of the available law courses. (These courses are named things like 'Tort Law' or 'Environmental Law'.
*/

/*markdown
64. Find the rank and name of the 10 students who earned the most A grades (A-, A, A+). Use alphabetical order by name to break ties.
*/

/*markdown
65. Find the titles of courses in the Comp. Sci. department that have 3 credits.
*/

/*markdown
66. Find the IDs of all students who were taught by an instructor named Einstein; make sure there are no duplicates in the result.
*/

/*markdown
67. Find the ID and name of each student who has taken at least one Comp. Sci. course; make sure there are no duplicate names in the result.
*/

/*markdown
68. Find the course id, section id, and building for each section of a Biology course.
*/

/*markdown
69. Output instructor names sorted by the ratio of their salary to their department's budget (in ascending order).
*/

/*markdown
70. Output instructor names and buildings for each building an instructor has taught in. Include instructor names who have not taught any classes (the building name should be NULL in this case).
*/