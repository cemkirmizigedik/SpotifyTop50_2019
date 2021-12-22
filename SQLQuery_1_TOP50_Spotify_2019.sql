--Cleansed Data set
SELECT [Column1] AS Placement
	,[Track#Name]
	,LEFT(Artist#Name,CHARINDEX(' ',Artist#Name,1)) as Name
	,RIGHT(Artist#Name,CHARINDEX(' ',REVERSE(Artist#Name))) as Surname
	,[Artist#Name]
	,REPLACE(Genre, ' ', ' - ') AS Genre
	,[Beats#Per#Minute]
	,[Beats#Per#Minute] / 60 AS BeatsPerSeconds
	,[Energy]
	,[Danceability]
	,[Loudness##dB##]
	--,[Liveness]
	,[Valence#] AS [Musical Positiveness Percentage]
	--,[Length#]
	,[Acousticness##]
	,[Speechiness#] AS SpeechinessPercentage
	,[Popularity] AS PopularityPercentage
FROM [SpotifyProject].[dbo].[Spotifytop50_2019]
ORDER BY Placement