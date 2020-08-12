Create Database QUANLY_CTV
Use QUANLY_CTV
---
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
---
Insert into CONG_TAC_VIEN
Values ('0793672769','Mai Phong','Da Nang','1'),
       ('0707097508','Tran Tu','Da Nang','1'),
	   ('0905507720','Phong Nam','Ho Chi Minh','0'),
	   ('0935854099','Pham Huong','Ho Chi Minh','1'),
	   ('0905454027','Nha Uyen','Ha Noi','1'),
	   ('0833333345','Tran Mai','Ho Chi Minh','0'),
	   ('0979970079','Bich Thuy','Kon Tum','1'),
	   ('0979790511','Phu Truong','Dak Lak','1'),
	   ('0905183783','Mai Thuy','Da Lat','0'),
	   ('0935557042','Phuong Hai','Ho Chi Minh','0')
Insert into LOAI_SAN_PHAM
Values ('001','Sach giao khoa','5000','VND'),
       ('002','Sach tham khao','8000','VND'),
	   ('003','Tieu thuyet','10000','VND'),
	   ('004','Truyen tranh','5000','VND'),
	   ('005','May tinh','20000','VND'),
	   ('006','Sach giao khoa','5000','VND'),
	   ('007','Tieu thuyet','8000','VND'),
	   ('008','Tieu thuyet','8000','VND'),
	   ('009','Tu dien','9000','VND'),
	   ('010','Sach tieng Anh','7000','VND')
Insert into HOA_DON (MaLoaiSP, MaCTV, SoLuong)
Values ('001','0793672769','2'),
       ('002','0707097508','3'),
	   ('003','0905507720','2'),
	   ('004','0935854099','2'),
	   ('005','0905454027','6'),
	   ('006','0833333345','8'),
	   ('007','0979970079','2'),
	   ('008','0979790511','1'),
	   ('009','0905183783','1'),
	   ('010','0935557042','1')
---
select * from CONG_TAC_VIEN
select * from LOAI_SAN_PHAM
select * from HOA_DON
<<<<<<< HEAD
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
=======
---
Update HOA_DON
Set ThanhTien = SoLuong * DonGiaThue
From HOA_DON inner join LOAI_SAN_PHAM
on HOA_DON.MaLoaiSP = LOAI_SAN_PHAM.MaLoaiSP
---
>>>>>>> e466d1e321a3eb2d518d45a1e649b563ed608de9
