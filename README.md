# JPA C.R.U.D. Project

### Description:
This application allows a user to perform basic Create, Read, Update, Delete (CRUD) operations on a joke from a SQL database.

### Technologies Used:
<ul>
<li>Java 8</li>
<li>Spring</li>
<li>SpringBoot</li>
<li>JPA</li>
<li>Gradle</li>
<li>HTML & CSS</li>
<li>MYSQL Database</li>
<li>MYSQL WorkBench</li>
<li>Tomcat Server<li>
<li>CRUD: Create, Read, Update, Delete</li>
<li>JSP Files</li>
<li>Servlet Page</li>
<li>XML Files</li>
<li>DAO: Database Accessor Objects</li>
<li>Terminal</li>
</ul>

### Lessons Learned:
This project was extremely beneficial to expand my understanding, comprehension, and implementation of the technologies listed above. I had a lot of fun creating the user experience for this application. The key to success was upfront planning and organization. With all of the moving parts and so many files, it is easy to get off track, add logic in the wrong spot, or miss an important detail. With so many different functionalities that I wanted to implement it was important that I break the big tasks into little ones focusing only on a single method or JSP page and trusting that I will be able to pick up a page or method I have not seen in sometime and be able to interpret and interact with it later.

## How to utilize solution:
In order to download and utilize this website it is assumed you have the technologies above installed on the machine you plan to deploy to. first within the DB folder there is a dadjokedb.mwb file that will create and populate a dadjokedb for you otherwise there is a joke.csv file with over 1,000 jokes that you can populate the data on any database of your choice. Assuming that your Tomcat server is already installed it should be as simple as downloading the files and running the solution.

##Control Flow
- On every page the user is presented with 6 buttons the home button, create, read, update, delete, and show all.
- From the home page 21 random jokes are displayed with the option to look up any joke by id. Each joke displayed is a link that will bring the user to a page that displays all the information about the joke including its several ratings which are displayed as progress bars. Several other pages ultimately end up on this page. It is displayed after creation, reading, or updating of any joke.

- The create button will bring the user to a page with a form that allows the user to enter the specified information. When finished the user can press the save button and the information will get persisted into the database.

 - The read button will bring the user to a page where they can enter a joke id and then get routed to a page that displays all the information about the joke they entered.

- the update button will first make a user search for the joke they want to update and then show them the information about the joke. this is the same flow as the read button because when all the information is displayed there is a button at the bottom which a user can press to update. The user is first required to see the information to ensure they are editing the joke they originally intended to. this will protect the data in the database by adding one check before data is altered. once the save button is clicked the joke will be re-displayed with all changes if no change was made the information displayed will not reflect the changes.

- the delete button will first make a user search for the joke they want to delete. at which point all the information is displayed with a warning message and two links one which will route the user to the home page and another which will attempt to delete the data. if successful a success message is displayed otherwise a failure message is displayed.

- lastly the show all button will retrieve all jokes from the database and display it in a random order. 
