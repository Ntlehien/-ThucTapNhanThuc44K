Create Database UNGDUNGQLGD
Use UNGDUNGQLGD

----
Create Table KHACH_HANG(MaKH varchar(15)not null Primary Key,
TenKH nvarchar(100) not null, DiaChi nvarchar(100) not null,
ThanThiet int not null)

Create Table NHAN_VIEN(MaNV int not null Primary Key,
TenNV nvarchar(100) not null, SoDT nvarchar(100) not null)

Create Table SUA_CHUA(MaKH varchar(15) not null Primary Key,
MaNV int not null, NgayNhan date not null, GioNhan Time not null,
NgayTra date not null, GioTra time not null, NoiDung nvarchar(500) not null,
TrangThai varchar(50) not null, Gia numeric(15,0) not null)

Alter Table SUA_CHUA
Add Constraint FK_KHACH_HANG Foreign Key (MaKH) References KHACH_HANG(MaKH)

Alter Table SUA_CHUA
Add Constraint FK_NHAN_VIEN Foreign Key (MaNV) References NHAN_VIEN(MaNV)

----
Insert into KHACH_HANG(MaKH,TenKH,DiaChi,ThanThiet)
values ('0123343434','Nguyen Thi Thao Anh','438 Nguyen Dinh Duong',10),
('0123454545','Dang Lam Oanh','71 Pasteur',80),
('0123565656','Ho Thi Thanh Uyen','423/43 Hai Phong',90),
('0987121212','Nguyen Linh Ngoc Huyen','12 Nguyen Chi Thanh',110),
('0987434343','Tang Huy Bao','7 Dien Bien Phu',40),
('0987141411','Pham Bui Cam Tu','675 Ngo Quyen',60),
('0432767776','Pham Nhat Tri','21 An Thuong 20',10),
('0432929211','Dang Ngoc Phuong Hao','173 Hoang Dieu',100),
('0432484844','Duong Thi Linh Tam','187 Ha Huy Tap',70),
('0123929292','Thai Thi Thanh Thuy','238 Nguyen Thi Minh Khai',20)
Select * from KHACH_HANG

Insert into NHAN_VIEN(MaNV,TenNV,SoDT)
values (1,'Duong Tran Dieu Hau','0123456789'),
(2,'Huynh Thi Thu Phuong','0123456778'),
(3,'Nguyen Thi Le Hien','0123456767'),
(4,'Nguyen Thuc Minh','0123456745'),
(5,'Cao Van Nhat','0123456799'),
(6,'Nguyen Duy Thong','0123456788')

Insert into SUA_CHUA(MaKH,MaNV,NgayNhan,GioNhan,NgayTra,GioTra,NoiDung,TrangThai,Gia)
values ('0123929292',5,'2020-5-12','07:00:23','2020-5-17','16:02:11','Ve sinh may','Dang sua',1300000),
('0432767776',1,'2020-3-3','09:25:02','2020-3-13','15:03:21','Thay ban phim','Xong',3100000),
('0123565656',3,'2020-7-21','10:11:40','2020-7-25','17:00:10','Thay man hinh','Dang sua',450000),
('0432484844',6,'2020-7-22','09:50:01','2020-8-1','17:14:31','Thay RAM','Xong',3400000),
('0123343434',4,'2020-2-11','08:41:44','2020-2-14','16:00:00','Thay o SSD','Huy sua',1700000),
('0987121212',1,'2020-1-4','07:25:11','2020-1-14','13:56:41','Ve sinh may','Xong',1300000),
('0123454545',2,'2020-5-30','08:30:55','2020-5-30','09:30:11','Thay man hinh','Xong',1200000),
('0432929211',4,'2020-7-12','11:00:23','2020-7-20','16:02:51','Thay RAM','Huy sua',3000000)
Select * from SUA_CHUA
