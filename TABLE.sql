/*Müþteriler: Müþteri bilgileri (id, ad, soyad, telefon, e-posta, adres)
Rezervasyonlar: Rezervasyon bilgileri (id, müþteri id, tarih, saat, kiþi sayýsý, durum)
Menü Ürünleri: Ürün bilgileri (id, ürün adý, fiyat, kategori, açýklama)
Sipariþler: Sipariþ bilgileri (id, müþteri id, ürün id, adet, toplam tutar, sipariþ tarihi)
Ödeme: Ödeme bilgileri (id, sipariþ id, ödeme türü, ödeme tarihi, tutar)*/
create database rezervasayonSistemi
use rezervasayonSistemi


--Müþteriler: Müþteri bilgileri (id, ad, soyad, telefon, e-posta, adres)
create table Müþteriler(
id int primary key identity(1,1),
ad varchar(20),
soy_ad varchar(20),
telefon varchar(11),
[e-posta] varchar(50),
adres varchar(100)
)
--Rezervasyonlar: Rezervasyon bilgileri 
--(id, müþteri id, tarih, kiþi sayýsý, durum)
create table Rezervasyonlar(
id int primary key identity(1,1),
müþteri_id int foreign key references Müþteriler(id),
tarih date,
[kiþi sayýsý] int ,
durum varchar(10)
)
--Menü Ürünleri: Ürün bilgileri (id, ürün adý, fiyat, kategori, açýklama)
create table Menü(
id int primary key identity(1,1),
[ürün adý] varchar(20),
fiyat int ,
kategory varchar(20),
açýklama varchar(50)
)
--Sipariþler: Sipariþ bilgileri 
--(id, müþteri id, ürün id, adet, toplam tutar, sipariþ tarihi)
create table Sipariþler(
id int primary key identity(1,1),
müþteri_id int foreign key references Müþteriler(id),
ürün_id int foreign key references Menü(id),
adet int,
toplam_tutar int ,
sipariþ_tarihi date
)
--Ödeme: Ödeme bilgileri (id, sipariþ id, ödeme türü, ödeme tarihi, tutar)

create table Ödeme(
id int primary key identity(1,1),
sipariþ_id int foreign key references Sipariþler(id),
ödeme_türü varchar(10),
ödeme_tarihi date,
tutar int
)

