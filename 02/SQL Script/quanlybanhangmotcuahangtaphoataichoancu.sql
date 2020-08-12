
Create Database QuanLyBanHang
Use QuanLyBanHang 
-- Tao bang HANG
Create table HANG
(
MaH int not null primary key,
TenH nvarchar(100) not null,
SoLuongTon int not null,
DonGiaNhap int not null,
DonGiaBan int not null
)
go
-- Tao bang HOA_DON_BAN
create table HOA_DON_BAN
(
MaHDB int not null primary key,
NgayBan date not null,
GioBan time not null,
TongTien int 
)
go
-- Tao bang HDBAN_CHI_TIET
create table HDBAN_CHI_TIET
(
MaHDB int not null,
MaH int not null,
SoLuongBan int not null,
ThanhTien int ,
primary key (MAHDB,MaH)
)
go
--Insert data
Insert into HANG
Values ('000011','Beer Sai Gon',23,240,260),
       ('000012','Mi tom Hao Hao',17,80,95),
	   ('000013','Kem danh rang P/S',7,25.5,28),
	   ('000014','nuoc ngot pesi',31,16,20),
	   ('00015','dau goi dau Dove',9,98,125)

Insert into  HOA_DON_BAN(MaHDB,NgayBan,GioBan)
Values ('000001','2020/8/11','07:00'),
       ('000002','2020/8/8','16:00'),
	   ('000003','2020/8/1','09:20'),
	   ('000004','2020/7/30','07:30'),
	   ('000005','2020/7/30','08:00')

Insert into HDBAN_CHI_TIET(MaHDB,MaH,SoLuongBan)
Values ('000001','000011',1),
       ('000002','000012',2),
	   ('000003','000013',1),
	   ('000004','000014',3),
	   ('000005','000015',1)
