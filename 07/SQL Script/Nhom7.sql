create database THUCTAP
use THUCTAP
create table XE( MaX varchar(5) not null primary key, TinhTrang nvarchar(50) not null,
MoTa nvarchar(50) not null, Loai nvarchar(50) not null, DonGiaTHue int)
create table KHACH( SoDT varchar(15) not null primary key, Ten nvarchar(100) not null, 
DiaChi nvarchar(50) not null)
alter table THUE
Add constraint FK_XE foreign key(MaX) references XE(MaX)
 alter table THUE
 add constraint FK_KHACH foreign key(SoDT) references KHACH(SoDT)
----
insert into XE value 
('M01', 'Dang thue', 'Mau den', 'Sirius', '2trieu'),
('M02', 'Hong', 'Mau xanh', 'Vison', '4trieu'),
('M03', 'San co', 'Mau vang', 'Air Blade', '3trieu'),
('M04', 'Hong', 'Mau trang', 'SH', '3tr5'),
('M05', 'San co', 'Mau xam', 'SH', '3tr5'),
('D01', 'Dang thue', 'Mau den', 'Giant', '1tr5'),
('D02', 'Hong', 'Mau trang', 'GT', '1tr3'),
('D03', 'Hong', 'Mau vang', 'Marin', '1tr2'),
('D04', 'San co', 'Mau do', 'GT','1tr3'),
('D05', 'San co', 'Mau xanh', 'Marin', '1tr2')

insert into KHACH value
('0795797686', 'Van Minh', 'P401 Vinpearl Hotel'),
('0123456789', 'Thu Phuong', 'P401 Rojal Hotel'),
('0223456789', 'Quoc Thien', 'P302 MuongThanh Hotel'),
('0333456789', 'Quang Thanh', 'P302 MuongThanh Hotel'),
('0444456789', 'Thanh Tam', 'P303 Lotus Hotel'),
('0555678999', 'Thuy Linh', 'P303 Lotus Hotel'),
('0666667777', 'Thuc Minh', 'P202 SongCong Hotel'),
('0777778888', 'Khac Thanh', 'P202 SongCong Hotel'),
('0888899999', 'Van Nhat', 'P101 Metal Hotel'),
('0111111222', 'Nhat Linh', 'P101 Metal Hotel')
 