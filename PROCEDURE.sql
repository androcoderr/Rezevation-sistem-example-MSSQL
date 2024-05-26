--stored procedure
use rezervasayonSistemi
--Ama�: Yeni bir m��teri kayd� olu�turmak.
CREATE PROCEDURE M��teriOlu�tur
@ad varchar(20), 
@soy_ad varchar(20), 
@telefon varchar(20), 
@eposta varchar(20), 
@adres varchar(20)
as 
begin
insert into [dbo].[M��teriler]( ad, soy_ad, telefon, [e-posta], adres)
values(@ad,@soy_ad,@telefon,@eposta,@adres)
end
---------------------------------------------------------
--Ama�: Men� �r�nlerini belirli kriterlere g�re aramak.
CREATE PROCEDURE �R�N_ARA
@URUN_ADI VARCHAR(20),
@KATEGORY VARCHAR(20),
@MAX_FIYAT INT,
@MIN_FIYAT INT
AS
BEGIN 
SELECT * FROM [dbo].[Men�]
WHERE [�r�n ad�] LIKE CONCAT('%',@URUN_ADI,'%')
AND [kategory] LIKE CONCAT('%',@KATEGORY,'%')
AND [fiyat] BETWEEN @MAX_FIYAT AND @MIN_FIYAT 
END
