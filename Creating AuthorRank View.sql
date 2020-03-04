CREATE VIEW 
AuthorRank AS
SELECT ID, ((25 * NPC) + (34 * NCC) + (41 * NHI))/100 AS [ARank]
FROM InfoGain
