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
--
Insert into CONG_TAC_VIEN
Values ('CTV001','Mai Phong','Da Nang','1'),
       ('CTV002','Tran Tu','Da Nang','1'),
	   ('a3','phong nam','ho chi minh','0'),
	   ('a4','pham huong','ho chi minh','1'),
	   ('a5','nha uyen','ha noi','1'),
	   ('a6','tran mai','ho chi minh','0'),
	   ('a7','bich thuy','kon tum','1'),
	   ('a8','phu truong','dak lak','1'),
	   ('a9','mai thuy','da lat','0'),
	   ('a10','phuong hai','ho chi minh','0')
--
Insert into LOAI_SAN_PHAM
Values ('SP001','Nuoc suoi','200','VND'),
       ('SP002','Nuoc co gas','300','VND'),
	   ('SP003','Nuoc trai cay','300','VND'),
	   ('04','banh ngot','500','dolar'),
	   ('05','banh man','600','dolar'),
	   ('06','vai thong thuong','300','dolar'),
	   ('07','vai thong dung','500','dolar'),
	   ('08','vai xuat khau','900','dolar'),
	   ('09','muc trung','100','vnd'),
	   ('010','muc tot','200','vnd')
--
insert into HOA_DON 
values ('01','a1','2','100'),
       ('02','a2','3','900'),
	   ('03','a3','2','600'),
	   ('04','a4','2','1000'),
	   ('05','a5','6','1200'),
	   ('07','a7','8','2100'),
	   ('08','a8','2','1000'),
	   ('09','a9','1','100'),
	   ('010 ','a10','1','100')
	