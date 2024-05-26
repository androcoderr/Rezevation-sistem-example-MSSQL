--stored procedure
use rezervasayonSistemi
--Amaç: Yeni bir müþteri kaydý oluþturmak.
CREATE PROCEDURE MüþteriOluþtur
@ad varchar(20), 
@soy_ad varchar(20), 
@telefon varchar(20), 
@eposta varchar(20), 
@adres varchar(20)
as 
begin
insert into [dbo].[Müþteriler]( ad, soy_ad, telefon, [e-posta], adres)
values(@ad,@soy_ad,@telefon,@eposta,@adres)
end
---------------------------------------------------------
--Amaç: Menü ürünlerini belirli kriterlere göre aramak.
CREATE PROCEDURE ÜRÜN_ARA
@URUN_ADI VARCHAR(20),
@KATEGORY VARCHAR(20),
@MAX_FIYAT INT,
@MIN_FIYAT INT
AS
BEGIN 
SELECT * FROM [dbo].[Menü]
WHERE [ürün adý] LIKE CONCAT('%',@URUN_ADI,'%')
AND [kategory] LIKE CONCAT('%',@KATEGORY,'%')
AND [fiyat] BETWEEN @MAX_FIYAT AND @MIN_FIYAT 
END
