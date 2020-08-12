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
Insert into CONG_TAC_VIEN
Values ('CTV001','Mai Phong','Da Nang','1'),
       ('CTV002','Tran Tu','Da Nang','1'),
	   ('CTV003','Phong Nam','Ho Chi Minh','0'),
	   ('CTV004','Pham Huong','Ho Chi Minh','1'),
	   ('CTV005','Nha Uyen','Ha Noi','1'),
	   ('CTV006','Tran Mai','Ho Chi Minh','0'),
	   ('CTV007','Bich Thuy','Kon Tum','1'),
	   ('CTV008','Phu Truong','Dak Lak','1'),
	   ('CTV009','Mai Thuy','Da Lat','0'),
	   ('CTVT0010','Phuong Hai','Ho Chi Minh','0')
--
Insert into LOAI_SAN_PHAM
Values ('001','Nuoc suoi','200','VND'),
       ('002','Nuoc co gas','300','VND'),
	   ('003','Nuoc trai cay','300000','VND'),
	   ('004','Banh ngot','500000','VND'),
	   ('005','Banh man','600000','VND'),
	   ('006','Vai thong thuong','300000','VND'),
	   ('007','Vai thong dung','500000','VND'),
	   ('008','Vai xuat khau','900000','VND'),
	   ('009','Muc trung','100000','VND'),
	   ('0010','Muc tot','200000','VND')
--
insert into HOA_DON 
values ('001','CTV001','2','100000'),
       ('002','CTV002','3','900000'),
	   ('003','CTV003','2','600000'),
	   ('004','CTV004','2','1000000'),
	   ('005','CTV005','6','1200000'),
	   ('006','CTV006','8','2100000'),
	   ('007','CTV007','2','1000000'),
	   ('008','CTV008','1','100000'),
	   ('009','CTV009','1','100000'),
	   ('0010','CTV0010','1','200000')
