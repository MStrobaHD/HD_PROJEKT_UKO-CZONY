USE [HD_REPOZYTORIUM_GLOWNE]
GO
INSERT INTO KANAL 
SELECT DISTINCT dane.CHANNEL_TYM,kat.ID, grupy.ID
FROM [HD_REPOZYTORIUM_GLOWNE].[dbo].[DANE_GLOWNE_TYM2] dane
LEFT JOIN KATEGORIA kat ON dane.CHANNEL_TYM = kat.nazwa_kanalu LEFT JOIN
GRUPY_MEDIOWE grupy ON kat.nazwa_kanalu=grupy.nazwa_kanalu;
