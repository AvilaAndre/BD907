.mode columns
.headers on
.nullvalue NULL
select distinct sportName, cast(julianday(endDate) - julianday(startDate) as int) from Competition, Sport WHERE Sport.idSport = Competition.idSport ORDER BY cast(julianday(endDate) - julianday(startDate) as int) DESC;