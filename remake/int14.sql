.mode columns
.headers on
.nullvalue NULL
select name, count(*) as NumberOfCompetitions from CompetitionLocation, Location WHERE CompetitionLocation.idLocation = Location.idLocation group by Location.idLocation order by count(*) desc;