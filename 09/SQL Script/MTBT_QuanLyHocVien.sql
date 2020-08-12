create database QuanLyHocVien
use QuanLyHocVien
--
create table LOP
(
	MaLop int not null,
	SoLuongToiDa int not null,
	SoLuongDK int not null,
	PhongHoc varchar (5) not null,
	KhungGio varchar (10) not null,
	GiaoVien nvarchar (100) not null,
	NgayBD date not null,
	SoBuoiHoc int not null
	primary key (MaLop)
)
--
create table HOC_VIEN
(
	SoDT varchar (15) not null,
	HoTen nvarchar (100) not null,
	DiaChi nvarchar (100) not null
	primary key (SoDT)
)
--
create table DANG_KI
(
	SoDT varchar (15) not null,
	MaLop int not null,
	NgayDK date not null,
	HocPhi int not null,
	TrangThai varchar (10) not null
	primary key (SoDT, MaLop)
	foreign Key (SoDT) References HOC_VIEN (SoDT),
	foreign Key (MaLop) References LOP (MaLop) 
)
--
insert into LOP
values	(901,15,10,'P02','7PM 246','Nguyễn Thị Xuân','2020-08-01',40),
		(902,15,10,'P01','7AM 357','Nguyễn Hồng Anh','2020-07-15',40),
		(903,15,10,'P03','5PM 246','Nguyễn Thị Xuân','2020-08-01',40),
		(904,15,10,'P02','7PM 246','Nguyễn Thị Xuân','2020-08-01',40),
		(905,15,10,'P04','5PM 246','Nguyễn Hoài Xuân','2020-08-01',40),
		(906,15,10,'P05','7PM 357','Đặng Ngọc Lâm','2020-07-15',40),
		(907,15,10,'P02','9AM 357','Nguyễn Hồng Anh','2020-07-15',40),
		(908,15,10,'P07','7AM 246','Nguyễn Thị Xuân','2020-08-01',40),
		(909,15,10,'P01','7PM 357','Nguyễn Hồng Anh','2020-07-15',40),
		(910,15,10,'P06','9AM 246','Nguyễn Thị Xuân','2020-08-01',40)
--
insert into HOC_VIEN
values	('0997258123','Lê Thị Anh','155 Ngũ Hành Sơn, Đà Nẵng'),
		('0985456369','Trần Văn Đạo','Tam Kỳ, Quảng Nam'),
		('0977963123','Nguyễn Hồng Lê','71 Ngũ Hành Sơn, Đà Nẵng'),
		('0969874565','Phan Thị Thắm','30 Bùi Tá Hán, Đà Nẵng'),
		('0957896741','Lê Hoàng Hà','277 Núi Thành, Đà Nẵng'),
		('0945821654','Võ Mai Hương','30 Đa Mặn 7, Đà Nẵng'),
		('0936547895','Phan Lê Hân','Quế Sơn, Quảng Nam'),
		('0924568794','Nguyễn Ngọc','Thăng Bình, Quảng Nam'),
		('0915846734','Trần Tuyết','78 Lê Văn Hưu, Đà Nẵng'),
		('0996951753','Phạm Anh','Hội An, Quảng Nam')
--
insert into DANG_KI
values	('0997258123',901,'2020-07-25',3000,'Dang hoc'),
		('0985456369',902,'2020-06-01',3000,'Dang hoc'),
		('0977963123',903,'2020-07-20',3000,'Dang hoc'),
		('0969874565',904,'2020-07-15',3000,'Bao luu'),
		('0957896741',905,'2020-07-30',3000,'Rut tien'),
		('0945821654',906,'2020-06-30',3000,'Dang hoc'),
		('0936547895',907,'2020-06-15',3000,'Dang hoc'),
		('0924568794',908,'2020-07-05',3000,'Dang hoc'),
		('0915846734',909,'2020-05-30',3000,'Dang hoc'),
		('0996951753',910,'2020-07-15',3000,'Bao luu')