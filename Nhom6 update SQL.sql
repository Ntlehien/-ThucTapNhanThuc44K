create database KD_GAMEONLINE
use KD_GAMEONLINE
--
Create table MAY
(
	MaMay int not null,
	MoTa nvarchar (100) default N'kich co man hinh, cauhinh,...' not null,
	TrangThai varchar (10) default N'Hong,Dang thue, san co' not null,
	DonGiaThue int
	primary key (MaMay)
)
--
create table KHACH
( 
	SoDT varchar (15) not null,
	TenK nvarchar (100) not null,
	DiaChi nvarchar (100) not null
	primary key (SoDT)
	)
--
Create table THUE
(
	MaMay int not null,
	SoDT varchar (15) not null,
	NgayVao date,
	GioVao time,
	NgayRa date,
	GioRa time,
	ThanhTien int
	foreign Key (MaMay) References MAY (MaMay),
	foreign key (SoDT) References KHACH (SoDT)
)
--
insert into MAY 
values  ('001','corei3,15.6inch','hong',2500),
		('002','corei5,17inch','dangthue',2000),
		('003','corei8,18.5inch','dangthue',2100),
		('004','corei3,15inch','sanco',3000),
		('005','corei5,15.6inch','hong',1700)
select*from MAY
--
insert into KHACH
values  ('0866750241','Nguyễn Thị Thảo Nguyên','NguHanhSon'),
		('0356778905','Hồ Phương Bao Nhi','HoaKhanh'),
		('0558228435','Nguyễn Phước Trung','NguHanhSon'),
		('0866755469','Nguyễn Đăng Hưng','LienChieu'),
		('0355960436','Lê Huỳnh Đan','HoaVang')
select*from KHACH
--
insert into THUE (MaMay,SoDT,NgayVao,GioVao,NgayRa,GioRa)
values  ('003','0356778905','2019-10-20','15:22:31','2019-10-20','18:40:07'),
		('002','0866755469','2019-01-15','10:30:00','2019-01-15','14:30:09'),
		('004','0355960436','2019-04-16','08:25:08','2019-04-16','15:20:05'),
		('001','0558228435','2019-07-18','23:30:00','2019-07-19','11:01:45'),
		('005','0866750241','2019-03-15','08:22:00','2019-03-15','21:30:00')
select*from THUE
--




	


