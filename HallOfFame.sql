Create table joined_hof as 
Select hof.*, master.playerid as masterplayerid, master.namefirst, master.namelast, master.weight, master.height, master.birthyear from hof left join master on 
hof.playerid = master.playerid where hof.inducted = 'Y';

# Note: must differentiate the key column (i.e. playerid) by renaming it for one of the tables being joined

# What if we want to look at just hall-of-famers who were born after 1950?

select * from joined_hof where inducted = 'Y' and birthyear > 1950 order by birthyear desc;
