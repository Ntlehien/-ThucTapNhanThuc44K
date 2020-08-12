Create database QUAN_LY_DON_DAT_MAY
Use QUAN_LY_DON_DAT_MAY

Create table KHACH(MaKhach varchar(15) not null primary key, TenKhach nvarchar(100) not null, ThanThiet int not null)
Insert into KHACH(MaKhach, TenKhach, ThanThiet)
Values('0123456789', 'Nguyen Van Tuan', 1),
('0123456788', 'Truong Thi Thuy Vy', 2),
('0123456787', 'Le Duc Tam', 1),
('0123456786', 'Tran Tinh Yen', 3),
('0123456785', 'Do Hung Cuong', 3)
Select * from KHACH

Create table HOA_DON( MaHoaDon int not null , MaKhach varchar(15)  not null, NgayDat Date not null, 
TongTien int not null, constraint PK_HOA_DON Primary key(MaHoaDon, MaKhach))
Alter table HOA_DON
Add constraint CHK_MaHoaDon CHECK (MaHoaDon >=1);
Insert into HOA_DON( MaHoaDon, MaKhach, NgayDat, TongTien)
Values(1, '0123456789', '2020/01/01', 200000),
(2, '0123456788', '2020/01/06', 400000),
(3, '0123456787', '2020/02/24', 600000),
(4, '0123456786', '2020/02/26', 800000),
(5, '0123456785', '2020/03/05', 1000000)
Select * from HOA_DON

Create table HD_CHI_TIET( MaHoaDon int not null primary key,  TenSanPham nvarchar(50) not null, NoiDung nvarchar(500), 
NgayHenTra Date not null, NgayTra Date not null)
Alter table HD_CHI_TIET
Add ThanhTien int not null
Insert into HD_CHI_TIET( MaHoaDon, TenSanPham, NoiDung, NgayHenTra, NgayTra, ThanhTien)
Values(1, 'Quan', 'Ong loe', '2020/06/01', '2020/06/01', 200000),
(2, 'Ao dai', 'Hinh hoa sen', '2020/06/06', '2020/06/06', 400000),
(3, 'Dam', 'Dang duoi ca', '2020/07/24', '2020/07/22', 600000),
(4, 'Ao so mi', 'Tay dai', '2020/07/26', '2020/07/26', 800000),
(5, 'Ao phong', 'Hinh mat cuoi', '2020/08/05', '2020/08/05', 1000000)
Select * from HD_CHI_TIET

Alter table HOA_DON
Add constraint FK_KHACH Foreign key(MaKhach) References KHACH(MaKhach)
Alter table HOA_DON
Add constraint FK_HD_CHI_TIET Foreign key(MaHoaDon) References HD_CHI_TIET(MaHoaDon)
