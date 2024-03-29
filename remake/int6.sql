.mode columns
.headers on
.nullvalue NULL
select title from OlympicCommittee, Participant WHERE cast(recognitionDate as Year) > 0 AND idParticipant in (select idParticipant from Athlete) AND birthYear > 0 AND Participant.abbreviation = OlympicCommittee.abbreviation GROUP BY OlympicCommittee.abbreviation HAVING cast(recognitionDate as Year) - min(birthYear) > 0 ORDER BY cast(recognitionDate as Year); 