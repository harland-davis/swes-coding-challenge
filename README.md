# SWES Take-Home Challenge 

## Please Note

*This position will be working primarily on a Ruby on Rails stack, so while we prefer you complete this challenge in Rails, you are free to use a stack you are more comfortable with (e.g. Node, Python, etc), while still following the instructions here for the project. 

A few more notes: 

 - You will be starting with a boiler plate rails app (but remember, you are free to discard the Rails code and build this project in any stack). 
 - Please fork this repo and submit the URL via email to **dvance@ucar.edu** and **metzger@ucar.edu** 
 - If using Rails, use MySQL for the db. Make sure to have MySQL installed on your local machine or connect a docker instance of MySQL
 - If you have any questions about the project, please feel free to email: **metzger@ucar.edu** or **dvance@ucar.edu**
 
### Intro
---
Welcome, developer, to CoShared! 

We will be building a management app from the ground up! Execution of this project falls to you and your team, which, as of now, consists of only you! 
Here at CoShared, we have many buildings, and at every building, we have many companies. Of course, a company may have offices at any number of our buildings scattered across the globe! For security reasons, it is important that every company track their employees. This way, we know which employees have access to which buildings!

To this end, a route would look something like the following:
<domain>.com/building/office/company/employee


*HINT: You will probably need to add something(s) to the path for this route to work.*
 
### Schema

The schema should be as follows:

Building:
  name
  country
  address
  rent_per_floor
  number_of_floors
  
Office:
  building
  company
  floor
  
Company:
  name
  
Employee:
  name
  title
  company
  
For clarity, an office takes up an entire floor!


### Deliverables


SUMMARY: You will be rendering a UI with dummy data of your choice. Creating a simple table in each page will suffice. A user in this scenario would be an administrator of some sort but let’s just call the admin a “user.” FYI, no need to create permissions or roles for this either.

Building:

 - Users should be able to see a single building's details
 - On this page, a user should be able to see all of the companies that have offices in the building.
 - On this page, a user should be able to see how much total rent that building is making based on all the companies that have rented offices in that building. You can make rent whatever you want in your dummy data.
 - Users should be able to see a list of all buildings, as well as a list of all available floors for each building.
    *Hint this should be a list of the floor numbers that are available: 1, 3, 6, 8 etc.*

 - Each floor would only have one company but a company can rent out multiple floors.
Your dummy data should reflect floors that have occupancy and those that do not. Any order of your choosing.
 
 
Company:

 - Users should be able to create a new company and choose a floor that is available and update the availability of that floor.
 - Users should be able to see a show page for an individual company
 - On this page, a user should be able to see the location of their office in the building. (the floor they are located in)
 - On this page, a user should be able to add an employee to the company
 - On this page, a user should be able to see a list of all employees
 - On this page, a user should be able to remove an employee from the company
 - On this page, a user should be able to see how much total rent it is paying
 
Validations:

 - Don't mess up our database! Make sure that every value is filled in! If a user fails to enter details, please ensure that you remind them of this failure!
 - Please ensure that a user's name is longer than 5 characters!
 - Please ensure that an office's floor is an integer!

Bonus: (not required but if you have time)
 
 - Users should be able to see the number of employees in a building on the building's show page
 - Create some rspec any part of this project. 

 

