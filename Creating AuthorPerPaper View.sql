CREATE VIEW AuthorPerPaper
AS
SELECT	A2P.aid, 	A2P.pid, 	MAX(A2P.rank) AS [Rank], 

	CAST(1.000/CAST(MAX(A2P.rank) AS DECIMAL(5, 3)) AS DECIMAL(5, 3)) AS [AuthorPerPaper]

FROM aminer_author2paper A2P,  HEI_AuthorRank   AR

WHERE A2P.aid = AR.ID

GROUP BY A2P.aid,  A2P.pid