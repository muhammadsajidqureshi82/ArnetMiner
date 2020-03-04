Create view PaperPerYear
as
SELECT AR.ID, (MAX(AP.p_year) - MIN(AP.p_year)) [Longevity], COUNT(A2P.pid)/(MAX(AP.p_year) - MIN(AP.p_year)) [PaperPerYear] 
FROM aminer_paper AP, HEI_AR AR,  aminer_author2paper A2P
WHERE hr.ID   = A2P.aid  
AND
	A2P.pid = AP.pid  
AND	
AP.pid  IN 
(
	SELECT A2P.pid FROM aminer_author2paper AP
	WHERE A2P.aid IN (SELECT ID FROM HEI_AR)
 )
GROUP BY AR.ID