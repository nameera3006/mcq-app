# mcq_app
This is an online assessment platform web application made using ```JSP-Servlet``` microframework along with ```MySQL```(MySQL Workbench) database in backend and in frontend ```Jinja``` templating along with ```Html,css``` and a bit of ```javascript``` is used.







# Required functionality is statisfied

1.Assessment shall be MCQ pattern.:heavy_check_mark:

2.There must be a question pool for the assessment:heavy_check_mark:```we have made a question pool in database.```

3.The questions displayed in the assessment shall be only from that pool:heavy_check_mark:```Fetching question only from that question pool(database).```

4.Number of questions in the pool shall be more than questions displayed:heavy_check_mark:

5.Set a time limit for the assessment (individual timer for a question/optional):heavy_check_mark:```Individual timer for each question.```

6.Question order shall be shuffled for each candidate appearing:heavy_check_mark:```Questions appering on the test are different for each user```

# Additional functionality

1.```Login page``` - To take user's data.

2.```user table``` - To store the data and scores of the user and the time of test submission.

#Admin Panel

1. ```Login Page``` and ```OTP-Verification``` - An otp will be sent to mail-id which admin had used upon login.:heavy_check_mark:

2. ```Dashboard``` - A dashboard is provided to admin only:heavy_check_mark: ``` functionalities such as create test, add questions , options and their respective answers. Also can view the result of all candidate ```.

# Getting Started

Clone the source code in your local machine and install the requirements by running

```load the .war file in eclipse ide 
```
Load ```mcq-app.sql``` on your data base by running
```sql
source mcq-app.sql
```
on your command line client or simply import ```mcq-app.sql``` in your MySQL Workbench

Then edit ```ConnectionProvider.java``` file
```
//create a connection

			String url = "jdbc:mysql://localhost:port/mcq_app";
			String username = "username";
			String pwd = "password";


```
replace ```username``` and ```password```  with username,password and name of your localhost and database name, 
replace ```port``` with port of your MySQL server.

Connect server and start (```apache-tomcat-v9```)

Finally, save and run the application on the configured server.

If everything is in order, a tomcat server  should be running in your local machine and you should be able to point your browser to ```https://localhost:8080/Mcq-App```.
