/*M��teriler: M��teri bilgileri (id, ad, soyad, telefon, e-posta, adres)
Rezervasyonlar: Rezervasyon bilgileri (id, m��teri id, tarih, saat, ki�i say�s�, durum)
Men� �r�nleri: �r�n bilgileri (id, �r�n ad�, fiyat, kategori, a��klama)
Sipari�ler: Sipari� bilgileri (id, m��teri id, �r�n id, adet, toplam tutar, sipari� tarihi)
�deme: �deme bilgileri (id, sipari� id, �deme t�r�, �deme tarihi, tutar)*/
create database rezervasayonSistemi
use rezervasayonSistemi


--M��teriler: M��teri bilgileri (id, ad, soyad, telefon, e-posta, adres)
create table M��teriler(
id int primary key identity(1,1),
ad varchar(20),
soy_ad varchar(20),
telefon varchar(11),
[e-posta] varchar(50),
adres varchar(100)
)
--Rezervasyonlar: Rezervasyon bilgileri 
--(id, m��teri id, tarih, ki�i say�s�, durum)
create table Rezervasyonlar(
id int primary key identity(1,1),
m��teri_id int foreign key references M��teriler(id),
tarih date,
[ki�i say�s�] int ,
durum varchar(10)
)
--Men� �r�nleri: �r�n bilgileri (id, �r�n ad�, fiyat, kategori, a��klama)
create table Men�(
id int primary key identity(1,1),
[�r�n ad�] varchar(20),
fiyat int ,
kategory varchar(20),
a��klama varchar(50)
)
--Sipari�ler: Sipari� bilgileri 
--(id, m��teri id, �r�n id, adet, toplam tutar, sipari� tarihi)
create table Sipari�ler(
id int primary key identity(1,1),
m��teri_id int foreign key references M��teriler(id),
�r�n_id int foreign key references Men�(id),
adet int,
toplam_tutar int ,
sipari�_tarihi date
)
--�deme: �deme bilgileri (id, sipari� id, �deme t�r�, �deme tarihi, tutar)

create table �deme(
id int primary key identity(1,1),
sipari�_id int foreign key references Sipari�ler(id),
�deme_t�r� varchar(10),
�deme_tarihi date,
tutar int
)

