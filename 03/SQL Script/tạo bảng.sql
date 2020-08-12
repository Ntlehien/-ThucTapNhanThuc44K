Create database CUAHANG_TAPHOA 
use CUAHANG_TAPHOA 
Create table HANG(MaH int primary key not null, TenH nvarchar(100) not null, SoLuongTon int not null,
 DonGiaNhap int not null, DonGiaBan int not null )
Create table CUNG_CAP(MaCC int primary key not null, TenCC nvarchar(100) not null,
 LoaiHang nvarchar(100) not null, TrangThai varchar(50) not null ) 
Create table HOA_DON_NHAP(MaHDN int primary key not null, NgayBan date not null, GioBan time not null,MaCC int not null,
 TongTien int)
Create table HDNHAP_CHI_TIET(MaHDN int not null, MaH int not null, SoLuongNhap int not null,
 ThanhTien int, constraint PK_HDNHAP_CHI_TIET Primary key(MaHDN, MaH))
 ---
 Alter table HDNHAP_CHI_TIET 
 Add Constraint FK_HOA_DON_NHAP Foreign key(MaHDN) references HOA_DON_NHAP(MaHDN) 
 Alter table HDNHAP_CHI_TIET
 Add Constraint FK_HANG Foreign key(MaH) references HANG(MaH) 
 Alter table HOA_DON_NHAP
 Add Constraint FK_CUNG_CAP Foreign key(MaCC) references CUNG_CAP(MaCC)
 ---
 Update HDNHAP_CHI_TIET
Set ThanhTien = DonGiaNhap * SoLuongNhap
From HDNHAP_CHI_TIET inner join HANG
on HDNHAP_CHI_TIET.MaH = HANG.MaH
---
