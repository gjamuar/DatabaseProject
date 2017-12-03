--Problem 2
-----------
Select t.TeamName,sum(p.NumGoals) as Goals 
from teams t left outer join players p
on p.TeamID=t.TeamID
group by p.TeamID
having Goals >= 30
order by Goals desc;

TeamName Goals
--------------
Pirates 	38
Saints 		32
Warriors 	30

------------------------------------------------------------------

--Bonus Problem
---------------
select  t.TeamName, p1.FirstName, p1.LastName,p1.NumGoals from 
(select * from 
(select * from players order by TeamId, NumGoals desc) p
group by p.TeamId) p1 inner join teams t 
on t.TeamId = p1.TeamId 
order by p1.NumGoals desc;

TeamName	FirstName	LastName	  NumGoals
----------------------------------------
Pirates	  Bill	    Compton	    18
Warriors	Harry		  Callahan	  15
Ravens		John		  Dunbar		  15
Saints		Jason		  Bourne		  12
Mighty 		Ducks		  Ben	Grimm	  12
Wildcats	Austin	  Powers		  11
