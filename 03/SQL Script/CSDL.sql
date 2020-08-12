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
 
---
insert into HANG(MaH, TenH, SoLuongTon, DonGiaNhap, DonGiaBan)
values
('111','GaoNep','10','100000','120000'),
('112','MyTom','15','80000','90000'),
('113','DauAn','10','600000','700000'),
('114','Sua','5','150000','200000'),
('115','NuocMam','7','200000','220000'),
('116','But','20','50000','60000'),
('117','Vo','1','200000','250000'),
('118','BimBim','5','100000','120000'),
('119','XucXich','5','150000','180000'),
('120','MiChinh','3','100000','150000')
select * from HANG 
    ---
insert into CUNG_CAP
values
('0917987568','ABC','GaoNep','Khong'),
('0985123456','BCD','MyTom','Co'),
('0917895589','CDE','DauAn','Khong'),
('0985175895','EFD','Sua','Co'),
('0941557889','DIH','NuocMam','Co'),
('0986556558','HIK','But','Khong'),
('0857259048','THN','Vo','Khong'),
('0987789987','MIH','BimBim','Co'),
('0915887889','OLP','XucXich','Co'),
('0919889788','LIO','MiChinh','Co')
select * from CUNG_CAP
     ---
insert into HOA_DON_NHAP 
values
('001','2019-07-10','12:00','0917987568',''),
('002','2019-07-11','10:05','0985123456',''),
('003','2019-06-12','11:00','0917895589',''),
('004','2019-08-07','7:00','0985175895',''),
('005','2019-10-11','9:00','0941557889',''),
('006','2020-01-10','10:05','0986556558',''),
('007','2020-01-11','11:10','0857259048',''),
('008','2020-03-04','11:20','0987789987',''),
('009','2020-03-10','13:18','0915887889',''),
('010','2020-04-05','12:09','0919889788','')
select*from HOA_DON_NHAP
         ---
insert into HDNHAP_CHI_TIET
values
('001','111','20',''),
('002','112','10',''),
('003','113','15',''),
('004','114','10',''),
('005','115','5',''),
('006','116','5',''),
('007','117','10',''),
('008','118','15',''),
('009','119','10',''),
('010','120','10','')
select * from HDNHAP_CHI_TIET
---
Update HDNHAP_CHI_TIET
Set ThanhTien = DonGiaNhap * SoLuongNhap
From HDNHAP_CHI_TIET inner join HANG
on HDNHAP_CHI_TIET.MaH = HANG.MaH