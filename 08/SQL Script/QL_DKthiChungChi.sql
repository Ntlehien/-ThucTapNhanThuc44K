Create database QL_DangKiThiChungChi
Use QL_DangKiThiChungChi
--Tao bang KI_THI
Create table KI_THI
(
  MaKT varchar(50) not null primary key,
  PhongThi varchar(5) not null,
  NgayThi date not null,
  GioThi time not null,
  SoLuongToiDa int not null,
  SoLuongDK int not null
)
--Tao bang THI_SINH
Create table THI_SINH
(
  SoDT varchar(15) not null primary key,
  HoTen nvarchar(100) not null,
  SoCMT varchar(10) not null,
  NgaySinh date not null
)
--Tao bang DANG_KI
Create table DANG_KI
(
  SoDT varchar(15) not null,
  MaKT varchar(50) not null,
  NgayDK date not null,
  LePhi int not null,
  Primary key (sodt, makt)
)

--
Alter table DANG_KI
Add constraint FK_THI_SINH foreign key (SoDT) references THI_SINH (SoDT)

Alter table DANG_KI
Add constraint FK_KI_THI foreign key (MaKT) references KI_THI (MaKT)
--
Insert into KI_THI(MaKT,PhongThi,NgayThi,GioThi,SoLuongToiDa,SoLuongDK)
values ('TO001', 'C205', '2020-10-10','07:00',10, 10),
       ('IE002', 'C201', '2020-10-15','07:00',10,8),
	   ('MO003', 'C202', '2020-10-15','07:00',10,7),
	   ('IC004', 'C201', '2020-10-20','07:00',10,5),
	   ('IE005', 'C204', '2020-10-20','09:00',10,6) 
--
Insert into THI_SINH(SoDT,HoTen,SoCMT,NgaySinh)
values ('0935302639', 'Pham Thi Thanh Quy', 197386255, '2000-12-03'),
       ('0935395333', 'Nguyen Quoc Thien ', 197292333, '2000-10-01'),
	   ('0905202133', 'Nguyen Van An'     , 192326155, '2000-11-13'),
	   ('0934773733', 'Nguyen Duc Duy'    , 192326155, '1990-02-23'),
	   ('0935121620', 'Le Ngoc Ha Nhi'    , 192326155, '1998-10-12'),
	   ('0914591619', 'Duong Duc Huy'     , 197101233, '2000-05-15'),
	   ('0915202012', 'Nguyen Anh Ngoc'   , 191303415, '1997-11-18'),
	   ('0935074074', 'Nguyen Hai Dang'   , 191233309, '1999-04-22'),
	   ('0915215123', 'Nguyen Huyen My'   , 191388235, '2000-03-25'),
	   ('0915111234', 'Le Ngoc Anh Tu'    , 197388445, '2000-12-22'),
	   ('0905012111', 'Tran Ngoc Anh'     , 197556257, '1999-08-16'),
	   ('0935241008', 'Nguyen Anh Huy'    , 192323211, '1999-12-20'),
	   ('0915312777', 'Le Khanh Vy'       , 192221113, '1998-07-04'),
	   ('0935123444', 'Tran Anh Khoa'     , 191235698, '1999-02-09'),
	   ('0935112223', 'Nguyen Quynh Anh'  , 192099234, '1995-06-23'),
	   ('0905255409', 'Tran Quang Dai'    , 197112346, '2000-10-09'),
	   ('0946743234', 'Nguyen Hai Anh'    , 195237887, '1998-12-23'),
	   ('0903332158', 'Nguyen Xuan Hai'   , 197123455, '2000-10-16'),
	   ('0905075705', 'Le Thi Huyen Trang', 196209090, '1999-12-19'),
	   ('0915034756', 'Le Thi Huyen'      , 192203430, '1999-12-19'),
	   ('0905125688', 'Le Thi Trang'      , 191789888, '1999-12-19'),
	   ('0903234666', 'Le Thi Huyen Anh'  , 197090998, '1999-12-19'),
	   ('0915567555', 'Nguyen Minh Duc'   , 196453544, '1999-12-19'),
	   ('0914543232', 'Nguyen Ngoc Chi'   , 191560098, '1999-12-19'),
	   ('0935343333', 'Duong Phuong Anh'  , 193326390, '1999-12-19'),
	   ('0914474745', 'Ho Minh Nhan'      , 196720979, '1999-12-19'),
	   ('0905022211', 'Le Quynh Nhi'	  , 196200010, '1999-12-19'),
	   ('0935044433', 'Le Thao Van'		  , 196123700, '1999-12-19'),
	   ('0905009999', 'Nguyen Mai Ngan'	  , 196209003, '1999-12-19'),
	   ('0914323444', 'Tran Thu Uyen'	  , 196009878, '1999-12-19'),
	   ('0905125705', 'Nguyen Hoang Huy'  , 196059122, '1999-12-19'),
	   ('0915222345', 'Tran Quang Dai'    , 196323039, '1999-12-19'),
	   ('0905234574', 'Le Kim Phu'		  , 196204950, '1999-12-19'),
	   ('0935035335', 'Ngo Thanh Nhat'    , 196230333, '1999-12-19'),
	   ('0905033432', 'Le Thanh Hang'	  , 196239330, '1999-12-19'),
	   ('0934335235', 'Nguyen An Nguyen'  , 196678930, '1999-12-19')
--
Insert into DANG_KI(SoDT,MaKT,NgayDK,LePhi)
values ('0935302639', 'TO001','2020-08-01',500),
       ('0935395333', 'TO001','2020-08-02',500),
	   ('0905202133', 'TO001','2020-08-02',500),
	   ('0934773733', 'TO001','2020-08-04',500),
	   ('0935121620', 'TO001','2020-08-04',500),
	   ('0914591619', 'TO001','2020-08-07',500),
	   ('0915202012', 'TO001','2020-08-10',500),
	   ('0935074074', 'TO001','2020-08-10',500),
	   ('0915215123', 'TO001','2020-08-10',500),
	   ('0915111234', 'TO001','2020-08-11',500),
	   ('0905012111', 'IE002','2020-08-02',7000),
	   ('0935241008', 'IE002','2020-08-02',7000),
	   ('0915312777', 'IE002','2020-08-03',7000),
	   ('0935123444', 'IE002','2020-08-05',7000),
	   ('0935112223', 'IE002','2020-08-05',7000),
	   ('0905255409', 'IE002','2020-08-06',7000),
	   ('0946743234', 'IE002','2020-08-07',7000),
	   ('0903332158', 'IE002','2020-08-07',7000),
	   ('0905075705', 'MO003','2020-08-08',800),
	   ('0915034756', 'MO003','2020-08-08',800),
	   ('0905125688', 'MO003','2020-08-10',800),
	   ('0903234666', 'MO003','2020-08-10',800),
	   ('0915567555', 'MO003','2020-08-10',800),
	   ('0914543232', 'MO003','2020-08-11',800),
	   ('0935343333', 'MO003','2020-08-11',800),
	   ('0914474745', 'IC004','2020-08-05',600),
	   ('0905022211', 'IC004','2020-08-05',600),
	   ('0935044433', 'IC004','2020-08-07',600),
	   ('0905009999', 'IC004','2020-08-07',600),
	   ('0914323444', 'IC004','2020-08-07',600),
	   ('0905125705', 'IE005','2020-08-10',7000),
	   ('0915222345', 'IE005','2020-08-10',7000),
	   ('0905234574', 'IE005','2020-08-11',7000),
	   ('0935035335', 'IE005','2020-08-11',7000),
	   ('0905033432', 'IE005','2020-08-11',7000),
	   ('0934335235', 'IE005','2020-08-11',7000)
--
Select*from KI_THI
Select*from THI_SINH
Select*from DANG_KI
