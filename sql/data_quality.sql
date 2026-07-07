USE fifa_project;

select *
from matches_1930
where Attendance IS NULL;

select *
from matches_1930
where home_xg is NULL;

select *
from matches_1930
where away_xg is NULL;

# home team missing
select *
from matches_1930
where home_team is NULL;

select *
from matches_1930
where away_team is NULL;

select Date,
       home_score,
       away_score,
       Round,
       Attendance,
       home_xg,
       away_xg
from matches_1930
where Date is NULL
or home_score is NULL
or away_score is NULL
or Round is NULL
or Attendance is NULL
or home_xg is NULL
or away_xg is NULL;

select count(*) as total_matches
from matches_1930;

select count(*) as matches_with_home_xg
from matches_1930
where home_xg is not null;

select count(*) as matches_without_home_xg
from matches_1930
where home_xg is null;

select count(*) as total_matches
from matches_1930;

select count(*) as matches_with_away_xg
from matches_1930
where away_xg is not null;

select count(*) as matches_without_away_xg
from matches_1930
where away_xg is null;

SELECT
    Year,
    COUNT(*) AS matches_without_xg
FROM matches_1930
WHERE home_xg IS NULL
GROUP BY Year
ORDER BY Year;

SELECT
    Year,
    COUNT(*) AS matches_with_xg
FROM matches_1930
WHERE home_xg IS NOT NULL
GROUP BY Year
ORDER BY Year;

SELECT *
FROM matches_1930
WHERE home_xg IS NULL
AND away_xg IS NOT NULL;

SELECT *
FROM matches_1930
WHERE home_xg IS NOT NULL
AND away_xg IS NULL;

SELECT
    Year,
    Date,
    home_team,
    away_team,
    home_xg,
    away_xg
FROM matches_1930
WHERE home_xg IS NULL
LIMIT 20;

SELECT DISTINCT Year
FROM matches_1930
WHERE home_xg IS NOT NULL
ORDER BY Year;

/*  Data Quality Assessment

Column: home_xg
Status: PASS (Expected Missing Data)

Reason:
Expected goals (xG) are only available for the 2018 and 2022 FIFA World Cups.
Historical tournaments do not contain xG measurements.
No cleaning required. */

# negative number of goals home and away
select
    Year,
    Date,
    home_score,
    away_score
from matches_1930
where home_score < 0
or away_score < 0;

# negative attendance / attendance = 0
# 2.2, 2.3, 2.4, 2.5, 2.6
select
    Attendance
from matches_1930
where Attendance < 0
OR Attendance = 0;

# negative xg and
select
    home_xg,
    away_xg
    from matches_1930
where home_xg < 0
or away_xg < 0;

# negative penalty
select
    home_penalty,
    away_penalty
from matches_1930
where home_penalty < 0
or away_penalty < 0;

# high scores
select score
       from matches_1930
where score > 15;

# home team names
select distinct home_team
from matches_1930
order by home_team;

select distinct away_team
from matches_1930
order by away_team;

select distinct round
from matches_1930
order by round;

select distinct Host
from matches_1930
order by host;

select distinct home_team
from matches_1930
order by home_team;

# any duplicates based on date, home and away teams
select
    Date,
    home_team,
    away_team,
    count(*)
from matches_1930
group by Date, home_team, away_team;

# aggregate functions, returns all rows.
select count(*)
from matches_1930

# comment



