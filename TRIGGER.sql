use rezervasayonSistemi
--TRIGGER
/*Tetiklenen Olay: Yeni bir rezervasyon kaydedildi�inde
Ama�: Rezervasyon tarihinin uygun olup olmad���n� kontrol etmek 
ve rezervasyon durumunu "Onay Bekliyor" olarak g�ncellemek.*/

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

