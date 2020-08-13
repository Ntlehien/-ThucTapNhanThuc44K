create database QL_THUEXE
use QL_THUEXE
create table XE
( MaX varchar(5) not null primary key,
TinhTrang nvarchar(50) not null,
MoTa nvarchar(50) not null, 
Loai nvarchar(50) not null, 
DonGiaTHue int )

create table KHACH
(SoDT varchar(15) not null primary key, 
Ten nvarchar(100) not null, 
DiaChi nvarchar(50) not null)

create table THUE
(SoDT varchar(15) primary key,
 MaX varchar(5) not null,
 DamBao nvarchar(50) not null,
 NgayThue date ,
 GioThue time ,
 NgayTra date ,
 GioTra time,
 ThanhTien int)

Alter table THUE
Add constraint FK_XE foreign key(MaX) references XE(MaX)
Alter table THUE
add constraint FK_KHACH foreign key(SoDT) references KHACH(SoDT)
----
insert into XE (MaX, TinhTrang, MoTa, Loai, DonGiaThue)
values ('M0011', 'Dang thue', 'Mau den', 'Sirius', 170),
       ('M0012', 'Hong', 'Mau xanh', 'Vison',250),
       ('M0013', 'San co', 'Mau vang', 'Air Blade', 300),
       ('M0014', 'Hong', 'Mau trang', 'SH', 350),
       ('M0015', 'San co', 'Mau xam', 'SH', 350),
       ('D0011', 'Dang thue', 'Mau den', 'Giant', 100),
       ('D0012', 'Hong', 'Mau trang', 'GT', 150),
       ('D0013', 'Hong', 'Mau vang', 'Marin', 130),
       ('D0014', 'San co', 'Mau do', 'GT',150),
       ('D0015', 'San co', 'Mau xanh', 'Marin', 130)
select*from XE

insert into KHACH ( SoDT, Ten, DiaChi)
values (0795797686, 'Van Minh', 'P401 Vinpearl Hotel'),
       (0123456789, 'Thu Phuong', 'P401 Rojal Hotel'),
       (0223456789, 'Quoc Thien', 'P302 MuongThanh Hotel'),
       (0333456789, 'Quang Thanh', 'P302 MuongThanh Hotel'),
       (0444456789, 'Thanh Tam', 'P303 Lotus Hotel'),
       (0555678999, 'Thuy Linh', 'P303 Lotus Hotel'),
       (0666667777, 'Thuc Minh', 'P202 SongCong Hotel'),
       (0777778888, 'Khac Thanh', 'P202 SongCong Hotel'),
       (0888899999, 'Van Nhat', 'P101 Metal Hotel'),
       (0111111222, 'Nhat Linh', 'P101 Metal Hotel')
 select*from KHACH
 
insert into THUE (SoDT, MaX, DamBao, NgayThue, GioThue, NgayTra, GioTra)
values ( 0795797686,'M0011','CMT','2020-01-01','9:30','2020-01-15','7:30'),
       ( 0123456789,'M0012','Thẻ căn cước','2020-01-01','9:30','2020-01-15','5:30'),
       ( 0223456789,'M0013','CMT','2020-02-01','7:30','2020-02-15','21:30'),
       ( 0333456789,'M0014','Tiền','2020-02-10','9:00','2020-02-15','20:30'),
       ( 0444456789,'M0015','CMT','2020-03-02','8:15','2020-03-20','21:00'),
       ( 0555678999,'D0011','Tiền','2020-01-31','9:30','2020-02-10','16:40'),
       ( 0666667777,'D0012','Thẻ căn cước','2020-05-15','7:00','2020-05-20','19:30'),
       ( 0777778888,'D0013','Tiền','2020-04-16','10:30','2020-04-26','22:30'),
       ( 0888899999,'D0014','Tiền','2020-06-15','8:00','2020-07-01','9:30'),
       ( 0111111222,'D0015','Thẻ căn cước','2020-01-01','10:00','2020-01-10','5:30')
select*from THUE