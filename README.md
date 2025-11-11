**MLB Hall of Fame SQL Codes**

Using both the Hall of Fame and Master databases on Kaggle's Baseball Databank, we've created a table in which we can filter for specific HOF baseball players up to 2016.

Files utilized: https://www.kaggle.com/datasets/open-source-sports/baseball-databank/data?select=Master.csv & https://www.kaggle.com/datasets/open-source-sports/baseball-databank/data?select=HallOfFame.csv

**Creating Necessary Table - Master**

``` Create table master (playerID text, birthyear int, birthmonth int, birthday int, birthcountry text, birthstate text, birthcity text, deathyear int, deathmonth int, deathday int, deathcountry text, deathstate text, deathcity text, namefirst text, namelast text, namegiven text, weight int, height int, bats text, throws text, debut date, finalgame date, retroid text, bbrefid text);```

**Import Master File to Postgres**

1. Tables
2. "Master"
3. Import/Export data
4. "Master.csv"
5. "Header" - checked
6. "Delimiter" - comma

**Review Content**

```Select * from master```
