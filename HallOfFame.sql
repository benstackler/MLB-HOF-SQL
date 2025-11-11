

# Let's add the percentage of votes received by each HOF inductee (approval percentage) by converting our integers into decimals, rounding, and ensuring zero ballot cases do not cause errors

select CONCAT(namefirst, ' ', namelast) as fullname, yearid, votedby, 
 ROUND(CAST(votes AS DECIMAL(10,2)) / NULLIF(ballots, 0) * 100, 2) AS approval_percentage  from hof left join master on 
hof.playerid = master.playerid where hof.inducted = 'Y' and yearid > 1990 order by yearid desc;


