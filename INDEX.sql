use rezervasayonSistemi
--INDEX
--Ama�: Rezervasyonlar� tarih bilgisine g�re h�zl� bir �ekilde aramak.,
CREATE INDEX IDX_Rezervasyonlar_Tarih ON Rezervasyonlar (tarih)
  

--Ama�: Sipari�leri �r�n bilgisine g�re h�zl� bir �ekilde aramak.
CREATE INDEX IDX_Sipari�ler_�r�n on [dbo].[Sipari�ler]([�r�n_id])
