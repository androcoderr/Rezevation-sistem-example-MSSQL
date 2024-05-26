use rezervasayonSistemi
--TRIGGER
/*Tetiklenen Olay: Yeni bir rezervasyon kaydedildiðinde
Amaç: Rezervasyon tarihinin uygun olup olmadýðýný kontrol etmek 
ve rezervasyon durumunu "Onay Bekliyor" olarak güncellemek.*/

CREATE TRIGGER RezervasyonDurumControl
ON Rezervasyonlar
AFTER INSERT
AS
BEGIN
    UPDATE Rezervasyonlar
    SET durum = 'Onay Bekliyor'
    FROM Rezervasyonlar R
    INNER JOIN inserted I ON R.id = I.id
    WHERE R.tarih < GETDATE()
END

