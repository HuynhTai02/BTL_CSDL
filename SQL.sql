
--Tao database 

create database [QuanLyThuvien]

--Tao bang doc gia

CREATE TABLE [dbo].[DOCGIA](
	[MADG] [char](10) NOT NULL,
	[TENDG] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	PRIMARY KEY ([MADG])
)	

--Tao bang Nhan vien

CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [char](10) NOT NULL,
	[TENNV] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[CHUCVU] [nvarchar](20) NULL,
	PRIMARY KEY ([MANV])
) 
--Tao TABLE Phieu
CREATE TABLE [dbo].[PHIEU](
	[MASACH] [char](10) NOT NULL,
	[MAPHIEU] [char](10) NOT NULL,
	[MADG] [char](10) NULL,
	[NGAYMUON] [date] NULL,
	[NGAYTRA] [date] NULL,
	[LOAIPHIEU] [nvarchar](20) NULL,
	[SL] [int] NULL,
	CHECK (NGAYMUON < NGAYTRA),
	PRIMARY KEY ([MAPHIEU])
)

--Tao table quan ly phieu 
CREATE TABLE [dbo].[QUANLYPHIEU](
	[MANV] [char](10) NULL,
	[MAPHIEU] [char](10) NULL
)

--Tao table quan ly sach 
CREATE TABLE [dbo].[QUANLYSACH](
	[MANV] [char](10) NULL,
	[MASACH] [char](10) NULL
) 
--Tao bang   sach
CREATE TABLE [dbo].[SACH](
	[MASACH] [char](10) NOT NULL,
	[TENSACH] [nvarchar](100) NULL,
	[MATL] [char](10) NULL,
	[NXB] [nvarchar](50) NULL,
	[NGAYNHAP] [date] NULL,
	[NOIDUNG] [nvarchar](max) NULL,
	PRIMARY KEY ([MASACH])
) 

--Tao bang  tac gia
CREATE TABLE [dbo].[TACGIA](
	[MATG] [char](10) NOT NULL,
	[TENTG] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	PRIMARY KEY ([MATG])
  )
 --Tao bang doc tac gia viet sach

CREATE TABLE [dbo].[VIET](
	[MASACH] [char](10) NULL,
	[MATG] [char](10) NULL
) 

--Tao bang Tai Khoan

CREATE TABLE [dbo].[TAIKHOAN](
	[MANV] [char](10) NULL,
	[MK] [nvarchar](10) NULL
)

--Tao bang  the loai


CREATE TABLE [dbo].[THELOAI](
	[MATL] [char](10) NOT NULL,
	[TENTL] [nvarchar](50) NULL,
	PRIMARY KEY ([MATL])
)

INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071083', N'Lê Thị Mỹ Trinh', N'Nữ', N'0965865458', CAST(N'2000-07-08' AS Date), N'Quận 9', N'Trinhml@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071121', N'Lê Hoài Anh', N'Nam', N'0956854858', CAST(N'2002-07-09' AS Date), N'Quận 9', N'Anhml@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071122', N'Nguyễn Tú Nữ', N'Nữ', N'0965865454', CAST(N'2002-07-10' AS Date), N'Quận 9', N'Numl@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071123', N'Trần Thị Tuyền', N'Nam', N'0356458547', CAST(N'2002-07-02' AS Date), N'Quận 10', N'Tuyenml@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071124', N'Nguyễn Thanh Nam', N'Nam', N'0366585474', CAST(N'2000-07-15' AS Date), N'Quận 7', N'Namml@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071125', N'Nguyễn Thành Long', N'Nam', N'0363636568', CAST(N'2002-07-03' AS Date), N'Quận 10', N'Longml@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071126', N'Hà Thị Tư', N'Nam', N'0356854857', CAST(N'2002-07-09' AS Date), N'Quận 8', N'Tuml@gmail.com')
INSERT [dbo].[DOCGIA] ([MADG], [TENDG], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL]) VALUES (N'6151071127', N'Nguyễn Văn A', N'Nam', N'0958654555', CAST(N'2002-07-02' AS Date), N'Quận 9', N'Aaaa@gmail.com')

GO
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [CHUCVU]) VALUES (N'NV100000  ', N'Pham Trí Hùng', N'Nam', N'0353573467', CAST(N'2002-07-10' AS Date), N'Quận 9', N'hung@gmail.com', N'Nhân Viên')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [CHUCVU]) VALUES (N'NV100002  ', N'Văn Công Hào', N'Nam', N'0369696896', CAST(N'2002-07-14' AS Date), N'Quận 9', N'hao@gmail.com', N'Nhân Viên')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [CHUCVU]) VALUES (N'NV100004  ', N'Trần Hoàng Triều', N'Nam', N'0369696896', CAST(N'2002-03-14' AS Date), N'Quận 9', N'trieu@gmail.com', N'Nhân Viên')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [CHUCVU]) VALUES (N'NV100005  ', N'Nguyễn Tấn Tài', N'Nam', N'0365868584', CAST(N'2002-04-12' AS Date), N'Quận 9', N'tai@gmail.com', N'Qua?n Ly?')
GO
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100000  ',N'SG100000  ', N'6151071083', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-08' AS Date), N'Phieu Tra', 1)
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100001  ', N'SG100001  ',N'6151071121', CAST(N'2022-04-12' AS Date), CAST(N'2022-04-22' AS Date), N'Phieu Tra', 5)
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100002  ', N'SG100002  ',N'6151071122', CAST(N'2022-02-20' AS Date), CAST(N'2022-03-02' AS Date), N'Phieu Tra', 6)
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100003  ',N'SG100003  ', N'6151071123', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-08' AS Date), N'Phieu Muon', 4)
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100004  ', N'SG100004  ',N'6151071124', CAST(N'2022-03-12' AS Date), CAST(N'2022-03-22' AS Date), N'Phieu Muon', 1)
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100005  ',N'SG100005  ', N'6151071125', CAST(N'2022-02-20' AS Date), CAST(N'2022-03-02' AS Date), N'Phieu Muon', 1)
INSERT [dbo].[PHIEU] ([MAPHIEU],[MASACH], [MADG], [NGAYMUON], [NGAYTRA], [LOAIPHIEU], [SL]) VALUES (N'PM100006  ', N'SG100006  ',N'6151071126', CAST(N'2022-04-12' AS Date), CAST(N'2022-04-22' AS Date), N'Phieu Muon', 1)
GO
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100000  ', N'PM100001  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100005  ', N'PM100001  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100002  ', N'PM100001  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100004  ', N'PM100001  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100000  ', N'PM100002  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100005  ', N'PM100002  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100004  ', N'PM100002  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100000  ', N'PM100004  ')
INSERT [dbo].[QUANLYPHIEU] ([MANV], [MAPHIEU]) VALUES (N'NV100005  ', N'PM100004  ')
GO
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100000  ', N'SG100000  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100005  ', N'SG100000  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100002  ', N'SG100000  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100004  ', N'SG100000  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100000  ', N'SG100001  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100005  ', N'SG100001  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100000  ', N'SG100005  ')
INSERT [dbo].[QUANLYSACH] ([MANV], [MASACH]) VALUES (N'NV100005  ', N'SG100005  ')
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100000  ', N'Lập trình và cuộc sống	', N'TL100004  ', N'NXB Thanh Niên', CAST(N'2020-07-07' AS Date), N'Anh cần một cách để theo dõi sự phát triển của phần mềm theo thời gian-bất cứ điều gì anh ta nghĩ đến hoặc làm việc trên nó. Jeff đã nghiên cứu các chủ đề mà anh cảm thấy thú vị, sau đó ghi lại nghiên cứu của mình bằng một bài đăng trên blog mà anh có thể dễ dàng tìm lại và tham khải sau này.')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100001  ', N'Giáo Trình C++ & Lập Trình Hướng Đối Tượng	', N'TL100004  ', N'NXB Hùng Châu', CAST(N'2020-07-07' AS Date), N'Giáo trình C++ & lập trình hướng đối tượng” trình bày một cách hệ thống các khái niệm của lập trình hướng đối tượng được cài đặt trong C++ như lớp, đối tượng, sự thừa kế, tính tương ứng bội và các khả năng mới trong xây dựng.')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100002  ', N'Lập Trình Với C# ', N'TL100004  ', N'NXB Thanh Niên', CAST(N'2020-07-07' AS Date), N'Trình bày các khái niệm và xây dựng ứng dụng bằng ngôn ngữ c#')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100003  ', N'Những Câu Hỏi Lớn', N'TL100006	 ', N'NXB Dân Trí', CAST(N'2020-07-07' AS Date), N'Anh cần một cách để theo dõi sự phát triển của phần mềm theo thời gian-bất cứ điều gì anh ta nghĩ đến hoặc làm việc trên nó.')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100004  ', N'Một Thiên Tiểu Thuyết', N'TL100006	 ', N'Nxb Thế giới', CAST(N'2020-07-07' AS Date), N'đề cập đến những vấn đề cơ bản trong khoa học tự nhiên và xã hội, nhưng vẫn khiến những bộ óc vĩ đại trong lịch sử đau đầu')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100005  ', N'A Mind For Numbers - Cách Chinh Ph?c Toán Và Khoa Học', N'TL100006  ', N'Nxb Thế giới', CAST(N'2020-07-07' AS Date), N'A Mind for Numbers- Cách chinh phục Toán và Khoa học..')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100006  ', N'Những Điều Tưởng Chừng Bất Khả', N'TL100007  ', N'Nxb Thế giới', CAST(N'2020-07-07' AS Date), N'trong Vật lý của những điều tưởng chừng bất khả, nhà vật lý Michio Kaku khám phá khả năng đưa những công nghệ và thiết bị.')
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [MATL], [NXB], [NGAYNHAP], [NOIDUNG]) VALUES (N'SG100007  ', N'Vật Lý Của Những Điều Tưởng Chừng Bất Khả	', N'TL100007  ', N'Nxb Thế giới', CAST(N'2020-10-07' AS Date), N'Trong Vật lý của những điều tưởng chừng bất khả, nhà vật lý Michio Kaku khám phá khả năng đưa những công nghệ và thiết bị từ lãnh địa của khoa học viễn tưởng vào cuộc sống thường nhật trong tương lai.')
GO
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100000  ', N'Jeff Atwood', CAST(N'1960-09-07' AS Date))
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100001  ', N'Tony Crilly', CAST(N'1965-10-07' AS Date))
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100002  ', N'Michio Kaku', CAST(N'1970-02-07' AS Date))
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100003  ', N'S. Keoki Sears Glenn', CAST(N'1970-10-07' AS Date))
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100004  ', N'Nguyễn Bá Đô', CAST(N'1989-02-07' AS Date))
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100006  ', N'Bunpei Yorifuji', CAST(N'1975-07-06' AS Date))
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [NGAYSINH]) VALUES (N'TG100007  ', N'Nguyễn Hữu Thái', CAST(N'1987-08-07' AS Date))
GO
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100011  ', N'TG100025  ')
INSERT [dbo].[VIET] ([MASACH], [MaTG]) VALUES (N'SG100010  ', N'TG100024  ')
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100006  ', N'TG100002  ')
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100005  ', N'TG100003  ')
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100004  ', N'TG100023  ')
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100000  ', N'TG100000  ')
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100014  ', N'TG100026  ')
INSERT [dbo].[VIET] ([MASACH], [MATG]) VALUES (N'SG100014  ', N'TG100027  ')
GO
INSERT [dbo].[TAIKHOAN] ([MANV], [MK]) VALUES (N'NV100000  ', N'123')
INSERT [dbo].[TAIKHOAN] ([MANV], [MK]) VALUES (N'NV100005  ', N'12345')
INSERT [dbo].[TAIKHOAN] ([MANV], [MK]) VALUES (N'NV100002  ', N'123')
INSERT [dbo].[TAIKHOAN] ([MANV], [MK]) VALUES (N'NV100004  ', N'123')
GO
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100000  ', N'Điện , Điện Tử , Tự Động Hóa')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100001  ', N'Khoa Học')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100003  ', N'Tham Khảo')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100004  ', N'CNTT')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100006  ', N'Toán')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100007  ', N'Vật Lý')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100008  ', N'Kiến Trúc')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100009  ', N'Hóa Học')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'TL100010  ', N'Xây Dựng')
GO
ALTER TABLE [dbo].[PHIEU]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[PHIEU]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_DOCGIA] FOREIGN KEY([MADG])
REFERENCES [dbo].[DOCGIA] ([MADG])
GO
ALTER TABLE [dbo].[PHIEU] CHECK CONSTRAINT [FK_PHIEU_DOCGIA]
GO
ALTER TABLE [dbo].[QUANLYPHIEU]  WITH CHECK ADD  CONSTRAINT [FK_QUANLYPHIEU_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[QUANLYPHIEU] CHECK CONSTRAINT [FK_QUANLYPHIEU_NHANVIEN]
GO
ALTER TABLE [dbo].[QUANLYPHIEU]  WITH CHECK ADD  CONSTRAINT [FK_QUANLYPHIEU_PHIEU] FOREIGN KEY([MAPHIEU])
REFERENCES [dbo].[PHIEU] ([MAPHIEU])
GO
ALTER TABLE [dbo].[QUANLYPHIEU] CHECK CONSTRAINT [FK_QUANLYPHIEU_PHIEU]
GO
ALTER TABLE [dbo].[QUANLYSACH]  WITH CHECK ADD  CONSTRAINT [FK_QUANLYSACH_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[QUANLYSACH] CHECK CONSTRAINT [FK_QUANLYSACH_NHANVIEN]
GO
ALTER TABLE [dbo].[QUANLYSACH]  WITH CHECK ADD  CONSTRAINT [FK_QUANLYSACH_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[QUANLYSACH] CHECK CONSTRAINT [FK_QUANLYSACH_SACH]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_THELOAI] FOREIGN KEY([MATL])
REFERENCES [dbo].[THELOAI] ([MATL])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_THELOAI]
GO
ALTER TABLE [dbo].[VIET]  WITH CHECK ADD  CONSTRAINT [FK_VIET_TACGIA] FOREIGN KEY([MATG])
REFERENCES [dbo].[TACGIA] ([MATG])
GO
ALTER TABLE [dbo].[VIET] CHECK CONSTRAINT [FK_VIET_TACGIA]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHANVIEN]
GO


--Câu truy vấn

--In ra thông tin TENNV, DIACHI, SDT của nhân viên
SELECT TENNV, DIACHI, SDT
FROM NHANVIEN

--In ra thông tin độc giả mượn sách vào ngày 29 tháng 5 năm 2022
SELECT *
FROM DOCGIA, PHIEU
WHERE DOCGIA.MADG = PHIEU.MADG AND NGAYMUON = '2022-05-29'

--In ra MAPHIEU,SOLUONG của những phiếu có số lượng sách mượn nhiều nhất
SELECT MAPHIEU, SL
FROM PHIEU	
WHERE SL = (
		SELECT TOP 1 SL
		FROM PHIEU
		ORDER BY SL DESC
)

--In ra thông tin phiếu có tên độc giả Lê Thị Mỹ Trinh
SELECT * 
FROM DOCGIA 
LEFT JOIN PHIEU 
ON DOCGIA.MADG= PHIEU.MADG
WHERE DOCGIA.TENDG = N'Lê Thị Mỹ Trinh'

-- Tổng số sách có thể loại có tên là CNTT
SELECT COUNT(MASACH) AS SLSach
FROM SACH, THELOAI
WHERE SACH.MATL = THELOAI.MATL AND THELOAI.TENTL = 'CNTT'
GROUP BY SACH.MATL


-- In ra thông tin độc giả giới tính nam có tuổi nhỏ nhất 
SELECT MADG, TENDG,GIOITINH, (YEAR(CURRENT_TIMESTAMP) -YEAR(DOCGIA.NGAYSINH)) AS TUOI
FROM DOCGIA
WHERE GIOITINH = N'Nam' AND (YEAR(CURRENT_TIMESTAMP) - YEAR(DOCGIA.NGAYSINH)) IN(
	SELECT MIN(YEAR(CURRENT_TIMESTAMP) -YEAR(DOCGIA.NGAYSINH))
	FROM DOCGIA
)

--Đưa ra thông tin Họ tên, giới tính, địa các bạn sinh viên là Nữ, đến từ Quận 9.
SELECT DOCGIA.TENDG, GIOITINH, DIACHI
FROM DOCGIA
WHERE GIOITINH = N'Nữ'
AND DIACHI LIKE N'Quận 9'

--In ra tên sách được mượn nhiều nhất và ít nhất
SELECT TENSACH
FROM PHIEU,SACH
WHERE PHIEU.MASACH = SACH.MASACH AND SL = (
									SELECT TOP 1 SL
									FROM PHIEU
									ORDER BY SL DESC
)

SELECT TENSACH
FROM PHIEU,SACH
WHERE PHIEU.MASACH = SACH.MASACH AND SL = (
									SELECT TOP 1 SL
									FROM PHIEU
									ORDER BY SL
)

-- Các bạn có thể lấy ra thông tin của các đọc giả từ 1 cuốn sách được không ? SÁCH BẤT KỲ 
SELECT DOCGIA.MADG,TENDG,NGAYSINH,GIOITINH,EMAIL,DIACHI
FROM DOCGIA, PHIEU, SACH
WHERE DOCGIA.MADG = PHIEU.MADG AND PHIEU.MASACH = SACH.MASACH AND TENSACH = N'Lập Trình Với C# '

--In ra thông tin những độc giả đã đến hạn những chưa trả sách
SELECT DOCGIA.MADG,TENDG,NGAYSINH,GIOITINH,EMAIL,DIACHI
FROM DOCGIA, PHIEU
WHERE DOCGIA.MADG = PHIEU.MADG AND (DAY(PHIEU.NGAYTRA) - DAY(PHIEU.NGAYMUON)> 7)




