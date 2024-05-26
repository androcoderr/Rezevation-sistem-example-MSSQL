use rezervasayonSistemi
--INDEX
--Amaç: Rezervasyonlarý tarih bilgisine göre hýzlý bir þekilde aramak.,
CREATE INDEX IDX_Rezervasyonlar_Tarih ON Rezervasyonlar (tarih)
  

--Amaç: Sipariþleri ürün bilgisine göre hýzlý bir þekilde aramak.
CREATE INDEX IDX_Sipariþler_ürün on [dbo].[Sipariþler]([ürün_id])
