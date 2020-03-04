Select AM.ID, AM.Name, AM.Affiliation, AM.PaperCount, AM.CitationCount, AM.Hindex, AM.ResearchInterest
From AMiner_Author2017 AM
Where AM.ID IN (Select ID from HEI_AuthorRank)
Order by AM.ID