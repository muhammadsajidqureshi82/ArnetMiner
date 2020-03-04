SELECT	
ID, 
PaperCount, 
CitationCount, 
Hindex, 
CAST(ROUND( PaperCount/(SELECT MAX(PaperCount)	FROM Aminer_Author2017), 2) AS NUMERIC(36, 2))		AS [NPC],
CAST(ROUND( CitationCount/(SELECT MAX(CitationCount)	FROM Aminer_Author2017), 2) AS NUMERIC(36, 2))		AS [NCC],
CAST(ROUND( Hindex/(SELECT MAX(Hindex)		FROM Aminer_Author2017), 2) AS NUMERIC(36, 2))		AS [NHI]
INTO	InfoGain
FROM	Aminer_Author2017
ORDER BY ID
