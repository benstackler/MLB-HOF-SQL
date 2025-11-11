# :handshake: Creating New Tables from Joined Queries

## Can we create a new table that permanently combines our joined tables?

````sql
Create table joined_hof as 
Select hof.*, master.playerid as masterplayerid, master.namefirst, master.namelast,
master.weight, master.height, master.birthyear from hof left join master on 
hof.playerid = master.playerid where hof.inducted = 'Y';
````

#### Note: must differentiate the key column (i.e. playerid) by renaming it for one of the tables being joined

## What if we want to look at just hall-of-famers who were born after 1950?

````sql
select CONCAT(namefirst, ' ', namelast) as fullname, birthyear,
inducted, yearid, votedby from joined_hof where inducted = 'Y' and birthyear > 1950 order by birthyear desc;
````
### Joined Table Query Result
![joinedquery](https://github.com/benstackler/MLB-HOF-SQL/blob/main/Screen%20Shot%202025-11-11%20at%204.02.39%20PM.png)
