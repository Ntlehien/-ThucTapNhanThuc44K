Create Database QUANLY_CTV
Use QUANLY_CTV
Create Table CONG_TAC_VIEN (MaCTV varchar (15) not null Primary Key, TenCTV nvarchar(100) not null,
DiaChi nvarchar (100) not null, TrangThai int not null)
Create Table LOAI_SAN_PHAM (MaLoaiSP int not null Primary Key, TenLoaiSP nvarchar(100) not null,
DonGiaThue int not null, DonViTinh nvarchar(50) not null)
Create Table HOA_DON (MaLoaiSP int not null, MaCTV varchar(15) not null,
SoLuong int not null, ThanhTien int, constraint PK_HOA_DON Primary Key (MaLoaiSP, MaCTV)) 
Alter Table HOA_DON
Add Constraint FK_CONG_TAC_VIEN Foreign Key (MaCTV) references CONG_TAC_VIEN (MaCTV)
Alter Table HOA_DON
Add Constraint FK_LOAI_SAN_PHAM Foreign Key (MaLoaiSP) references LOAI_SAN_PHAM (MaLoaiSP)
select * from CONG_TAC_VIEN
select * from LOAI_SAN_PHAM
select * from HOA_DON