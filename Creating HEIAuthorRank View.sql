Create view [dbo].[HEI_AuthorRank]
AS
Select AM.ID, AM.Name, AM.Affiliation, AR.ARANK
FROM AMiner_Author2017 AM, AuthorRank AR
Where AM.ID = AR.ID
AND AR.ARank > 30