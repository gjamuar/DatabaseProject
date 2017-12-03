## Database Problems 

#### Problem 2:

First SQL query compute sum of goals for each teams, and display top scoring teams in descending order of goals. It only displays teams with atleast 30 goals. Query joins Teams and Players table using left outer join, so that goals for all the teams can get computed.

```sql
Select t.TeamName,sum(p.NumGoals) as Goals 
from teams t left outer join players p
on p.TeamID=t.TeamID
group by p.TeamID
having Goals >= 30
order by Goals desc;

TeamName Goals
--------------
Pirates   38
Saints    32
Warriors  30
```

#### Bonus Problem:

Second SQL query finds top scoring players from each team. It first uses inner most query to order the players based on TeamId and number of goals. Then 2nd inner query group them based on TeamId.The 2nd inner query picks top row in each group(in MySQL group by without aggregate function returns Top 1 row in the group). Outer most query joins result from the inner query on TeamID to get the team name from Team table and orders result based on numbers of goals.  

```sql

select  t.TeamName, p1.FirstName, p1.LastName,p1.NumGoals from 
(select * from 
(select * from players order by TeamId, NumGoals desc) p
group by p.TeamId) p1 inner join teams t 
on t.TeamId = p1.TeamId 
order by p1.NumGoals desc;

TeamName  FirstName LastName  NumGoals
----------------------------------------
Pirates   Bill    Compton     18
Warriors  Harry   Callahan    15
Ravens    John    Dunbar      15
Saints    Jason   Bourne      12
Mighty    Ducks   Ben Grimm   12
Wildcats  Austin  Powers      11
```

#### Developed By
* Gunjan Jamuar


#### License
    MIT
    Copyright 2017 Gunjan Jamuar
