create database QuanLySinhVien
use QuanLySinhVien
create table NGUOI_PHAN_ANH 
(SoDT varchar(15) primary key not null, HoTen nvarchar(100) not null, DiaChi nvarchar(100) not null)
create table PHAN_ANH 
(SoDT varchar(15) primary key not null, Ngay date not null, Gio time not null, NoiDung nvarchar(500) not null,
NguoiTiepNhan int not null, NguoiGiaiQuyet int not null, TrangThai varchar(10) not null)
create table NHAN_VIEN 
(MaNV int primary key not null, HoTen nvarchar(100) not null, SoDT varchar(15) not null)

ALTER TABLE PHAN_ANH
ADD	CONSTRAINT FK_TIEPNHAN FOREIGN KEY (NguoiTiepNhan) REFERENCES NHAN_VIEN(MaNV)
ALTER TABLE PHAN_ANH
ADD CONSTRAINT FK_GIAIQUYET FOREIGN KEY (NguoiGiaiQuyet) REFERENCES NHAN_VIEN(MaNV)
ALTER TABLE NGUOI_PHAN_ANH
ADD	 CONSTRAINT FK_PHAN_ANH FOREIGN KEY (SoDT) REFERENCES PHAN_ANH(SoDT)

insert into NGUOI_PHAN_ANH values ('0935178487', 'Pham Thi Thuy Linh', '44K21.1'),
								  ('0168422569', 'Le Huu Tai', '44K14'),
								  ('0905545118', 'Do Trung Dat', '44K21.2'),
								  ('0913488519', 'Ngo Thuy Vy', '44K22.3'),
								  ('0966644445', 'Vo Hoang Thao Nhi', '44K21.1')
select*from NGUOI_PHAN_ANH

insert into PHAN_ANH values ('0935178487', '2020/07/26', '14:56:33', 'viec tang hoc phi cua nha truong', 1, 1, 'dang cho'),
							('0168422569', '2020/11/15', '07:32:11', 'can tin thieu co so vat chat', 2, 2, 'xong'),
							('0905545118', '2020/02/15', '12:00:31', 'thai do cua nhan vien giu xe trong nha truong', 3, 3, 'dang cho'),
							('0913488519', '2020/07/07', '17:35:45', 'viec mang trang phuc khong phu hop cua sinh vien', 4, 4, 'huy'),
							('0966644445', '2020/08/20', '14:20:59', 'viec nha ve sinh cua nha truong khong duoc don dep hang ngay', 5, 5, 'huy')
select*from PHAN_ANH

insert into NHAN_VIEN values (1, 'Huynh Nhat Minh Huyen', '014322285'),
							 (2, 'Pham Hua Ha Vy', '083621748'),
							 (3, 'Pham Nguyen Dang Khoa', '01264595406'),
							 (4, 'Pham Nguyen Cat Tuong', '0905839920'),
							 (5, 'Vo Hoang Yen', '0168845632')
select*from NHAN_VIEN