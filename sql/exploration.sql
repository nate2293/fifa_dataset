USE fifa_project;

-- challenge one
-- what tables exist in the database
show tables;

-- challenge two
-- what inside each table
describe matches_1930;
select *
from matches_1930
limit 5;

describe schedule;
select *
from schedule
limit 5;

describe world_cup;
select *
from world_cup
limit 10;

describe fifa_ranking_2022_10;
select *
from fifa_ranking_2022_10
limit 10;

describe fifa_ranking_2026_06;
select *
from fifa_ranking_2026_06
limit 5;

-- challenge three
-- preview the data
select * from matches_1930
limit 10;

-- challenge four
-- how big is the dataset
select count(*)
from matches_1930;

-- challenge five
-- show every unique home team
select distinct home_team
from matches_1930;

-- challenge six
-- List all unique away teams in alphabetical order
select distinct away_team
from matches_1930
order by away_team;

-- challenge seven
-- which tournaments are represented
select distinct round
from matches_1930
order by round;

-- challenge eight
-- high scoring matches find every match where 6 goals or more
SELECT
    Date,
    home_team,
    away_team,
    home_score,
    away_score
FROM matches_1930
WHERE home_score + away_score >= 6;

-- challenge nine
-- expected goals
-- show every match where both teams had an xg above 2
select
    home_team,
    away_team
FROM matches_1930
where home_xg > 2
and away_xg > 2;

-- challenge 10
-- biggest home wins and show 10 matches
select
    home_team,
    away_team,
    home_score,
    away_score,
    home_score - away_score AS winning_margin
from matches_1930
where home_score > away_score
order by winning_margin DESC
limit 10;

-- Question 1
-- show every match where home team
select
    home_team,
    away_team,
    home_score,
    away_score
from matches_1930
where home_score > away_score
order by home_team;

-- Question 2
-- show every match where away team won
select
    home_team,
    away_team,
    home_score,
    away_score
from matches_1930
where away_score > home_score
order by away_team;






