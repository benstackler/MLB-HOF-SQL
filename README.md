  # :heavy_plus_sign: Combining Names Using CONCAT
  
  ## Now let's combine our name columns using the CONCAT function

````sql
select CONCAT(namefirst, ' ', namelast) as fullname, yearid, votedby  from hof left join master on 
hof.playerid = master.playerid where hof.inducted = 'Y' and yearid > 1990 order by yearid desc;
````
### Old Player Table Before Alterations
![Old Player Table](https://github.com/benstackler/MLB-HOF-SQL/blob/main/output1.png)

### New Table with Combined Player Names
![New Table with Combined Player Names](https://github.com/benstackler/MLB-HOF-SQL/blob/main/FullName.png)
