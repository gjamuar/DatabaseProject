## Database Problems 

#### Problem 2:

First SQL query compute sum of goals for each teams, and display top scoring teams in descending order of goals. It only displays teams with atleast 30 goals. Query joins Teams and Players table using left outer join, so that goals for all the teams can get computed.

#### Bonus Problem:

Second SQL query finds top scoring players from each team. It first uses inner most query to order the players based on TeamId and number of goals. Then 2nd inner query group them based on TeamId.The 2nd inner query picks top row in each group(in MySQL group by without aggregate function returns Top 1 row in the group). Outer most query joins result from the inner query on TeamID to get the team name from Team table and orders result based on numbers of goals.  

#### Developed By
* Gunjan Jamuar


#### License
    MIT
    Copyright 2017 Gunjan Jamuar
