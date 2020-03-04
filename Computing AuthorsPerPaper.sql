
CREATE VIEW  TotalAPP 
AS
SELECT		
	APP.aid,   SUM(APP.AuthorPerPaper)  [AuthorPerPaper]
FROM		
	AuthorPerPaper APP
GROUP BY	APP.aid