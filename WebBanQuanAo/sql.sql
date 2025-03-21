USE [master]
GO
/****** Object:  Database [ShopQuanAo]    Script Date: 20/12/2023 7:41:05 CH ******/
CREATE DATABASE [ShopQuanAo]
 
USE [ShopQuanAo]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 20/12/2023 7:41:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [bigint] NOT NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [decimal](18, 3) NOT NULL,
	[Size] [nchar](10) NULL,
	[Mau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 20/12/2023 7:41:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 20/12/2023 7:41:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [bigint] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[NgayDatHang] [date] NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
	[DiaChiGiaoHang] [varchar](255) NOT NULL,
	[TrangThai] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 20/12/2023 7:41:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[TenSanPham] [varchar](255) NOT NULL,
	[Gia] [decimal](18, 3) NOT NULL,
	[ThanhTien] [decimal](18, 3) NOT NULL,
	[KichThuoc] [nchar](10) NULL,
	[Mau] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 20/12/2023 7:41:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](255) NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[DiaChi] [varchar](255) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[ChucVu] [varchar](50) NULL,
	[HoVaTen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 20/12/2023 7:41:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [decimal](18, 0) NULL,
	[SoLuongTon] [int] NOT NULL,
	[MaDanhMuc] [int] NULL,
	[HinhAnh] [varchar](255) NULL,
	[ThuVienChuaHinh] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (2, 638361983430446905, 2, 1, CAST(110000.000 AS Decimal(18, 3)), N'M         ', N'Trắng     ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (3, 638361983430446905, 2, 1, CAST(110000.000 AS Decimal(18, 3)), N'S         ', N'Xám       ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (4, 638361984035331506, 2, 1, CAST(110000.000 AS Decimal(18, 3)), N'M         ', N'Đen       ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (5, 638361986341234585, 3, 1, CAST(150000.000 AS Decimal(18, 3)), N'M         ', N'Đen       ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (6, 638361989975346741, 2, 2, CAST(110000.000 AS Decimal(18, 3)), N'M         ', N'Đen       ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (7, 638361990135369983, 2, 1, CAST(110000.000 AS Decimal(18, 3)), N'M         ', N'Đen       ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (8, 638362892442228530, 2, 3, CAST(110000.000 AS Decimal(18, 3)), N'M         ', N'Trắng     ')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia], [Size], [Mau]) VALUES (9, 638386975580849313, 2, 1, CAST(110000.000 AS Decimal(18, 3)), N'M         ', N'Trắng     ')
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [HinhAnh]) VALUES (1, N'Áo1', N'th2.jpg')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [HinhAnh]) VALUES (2, N'Quần', N'18acc3cb3d01ec28ca03dd2a7279d57d.jpg')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [HinhAnh]) VALUES (8, N'giày', N'1.jpg')
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (1, 1, CAST(N'2023-11-21' AS Date), CAST(300000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Ðã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (2, 2, CAST(N'2023-11-20' AS Date), CAST(600000.00 AS Decimal(18, 2)), N'H? Chí Minh', N'Ðã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361975266775965, 1, CAST(N'2023-11-21' AS Date), CAST(440000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Ðang giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361978073515770, 1, CAST(N'2023-11-21' AS Date), CAST(440000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Thanh toán online')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361983430446905, 1, CAST(N'2023-11-21' AS Date), CAST(220000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Thanh toán online')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361984035331506, 1, CAST(N'2023-11-21' AS Date), CAST(110000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Thanh toán online')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361986341234585, 1, CAST(N'2023-11-21' AS Date), CAST(150000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Thanh toán khi nh?n hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361989975346741, 1, CAST(N'2023-11-21' AS Date), CAST(220000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Thanh toán khi nh?n hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638361990135369983, 1, CAST(N'2023-11-21' AS Date), CAST(110000.00 AS Decimal(18, 2)), N'Ðà N?ng', N'Thanh toán online')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638362892442228530, 1, CAST(N'2023-11-22' AS Date), CAST(330000.00 AS Decimal(18, 2)), N'TP HCM', N'Thanh toán khi nh?n hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638386975580849313, 4, CAST(N'2023-12-20' AS Date), CAST(110000.00 AS Decimal(18, 2)), N'abc', N'Thanh toán khi nh?n hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [DiaChiGiaoHang], [TrangThai]) VALUES (638386975724094378, 4, CAST(N'2023-12-20' AS Date), CAST(0.00 AS Decimal(18, 2)), N'abc', N'Thanh toán online')
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Email], [DiaChi], [SoDienThoai], [ChucVu], [HoVaTen]) VALUES (1, N'user1', N'pass1', N'user1@gmail.com', N'TP HCM1', N'0123456789', N'Khách hàng', N'khach1')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Email], [DiaChi], [SoDienThoai], [ChucVu], [HoVaTen]) VALUES (2, N'user2', N'pass2', N'user2@gmail.com', N'H? Chí Minh', N'0987654321', N'Khách hàng', N'khach2')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Email], [DiaChi], [SoDienThoai], [ChucVu], [HoVaTen]) VALUES (3, N'test', N'Tranduc123@', N'1@gmail.com', N'dddd', N'0377450981', N'Qu?n lý', N'duc')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Email], [DiaChi], [SoDienThoai], [ChucVu], [HoVaTen]) VALUES (4, N'duc0', N'Tranduc123@', N'k@gmail.com', N'abc', N'123456789', NULL, N'tran dang duc')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (2, N'Áo blazer', N'👑Tập trung vào Thiết kế Quần áo Nam Chất lượng Cao, Cửa hàng 2 tuổi, Trung tâm thương mại Với Tỷ lệ Khen ngợi Siêu cao. Bạn có thể chói lóa như một ngôi sao.



💖Hãy Chú Ý Đến Cửa Hàng Để Tìm Kiếm Các Phong Cách Mới Nhất Và Đi Dưới Mặt Trước Xu hướng



-----------------------------------------------------------------------------------------



Thử báo cáo



A: Chiều cao = 172 CM Trọng lượng = 52KG Kích thước phù hợp = M



B: Chiều cao = 176 CM Trọng lượng = 65KG Kích thước phù hợp = L



C: Chiều cao = 180CM Trọng lượng = 80KG Kích thước phù hợp = XL







✔Nếu bạn có bất kỳ nghi ngờ nào về kích thước, vui lòng trò chuyện với chúng tôi để được tư vấn



-----------------------------------------------------------------------------------------



❤ Thương hiệu: YD - cửa hàng



Kích thước: ML XL



Mô hình: khác / khác



Loại cổ áo: Cổ áo có hoa văn phẳng



Túi quần áo: Hai nút một bên ngực



Màu sắc: Trắng đen



Phong cách phân khu: Tide



Phong cách cơ bản: Giới trẻ ưa chuộng



Mùa áp dụng: Mùa thu



Chiều dài tay áo: Dài tay



Độ dày: Bình thường



Cảnh áp dụng: Giải trí khác



Chiều dài: bình thường



Phiên bản phiên bản: Tiêu chuẩn



Công nghệ quần áo: Điều trị không dùng sắt



Đối tượng áp dụng: Thanh thiếu niên



Phong cách: Quần áo bình thường Rừng đơn



Thiết kế đường viền: Đường viền thẳng



Phương pháp có khe phía sau: Không có khe



Chiều rộng cổ áo: Loại cổ áo hẹp (Dưới 7cm)



Thời gian niêm yết: 2022 ❤



--------------------------------------------------------------------------------------------------------



Thích hợp cho nhiều dịp: Rạp hát, Sân khấu, Câu lạc bộ đêm, Studio ảnh, Bữa tiệc, Đi làm, Du lịch.



Thích hợp cho nhiều ngành nghề: Công nhân nghệ thuật, Người sáng tạo văn học, Nhà thiết kế, Máy chủ, Máy chủ, Nhà tạo mẫu



--------------------------------------------------------------------------------------------------------



❤Chúng tôi sẽ nghe kỹ mọi giọng nói của bạn bè, đầy đủ 5 sao🌟🌟🌟🌟🌟Đó là lực lượng lái xe của chúng ta để cổ vũ!Cảm ơn bạn bè của bạn đã tin tưởng', CAST(110000 AS Decimal(18, 0)), 46, 1, N'th.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (3, N'Áo thun', N'Ð?p', CAST(150000 AS Decimal(18, 0)), 30, 1, N'th2.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (4, N'Áo so mi', N'Ð?p', CAST(120000 AS Decimal(18, 0)), 20, 1, N'950dade253a8d2af0b3feee1a331cf93.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (5, N'Áo den', N'Thoáng mát', CAST(160000 AS Decimal(18, 0)), 15, 1, N'banner-mua-ao-so-mi-nam-burberry-hang-hieu-tai-ha-noi.png', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (6, N'Áo thun nam A', N'Mô t? cho áo thun nam A', CAST(150000 AS Decimal(18, 0)), 100, 1, N'Ao-So-Mi-Trang-Nga-Vien-Co-Den-Ao-So-Mi-Nam-Ao-So-Mi-Dai-Tay-SMD.1036.jpg', N'image1_1.jpg,image1_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (7, N'Áo thun nam B', N'👑Tập trung vào thiết kế quần áo nam chất lượng. Chúc bạn có thể rực rỡ như một ngôi sao, với sự đảm bảo chất lượng, Trung tâm mua sắm với tỷ lệ khen ngợi cao

💖Hãy chú ý đến các cửa hàng, tìm hiểu về các phong cách mới nhất và đứng trước xu hướng 【Bạn tỏa sáng quá】

-----------------------------------------------------------------------------------------

Báo cáo kinh nghiệm

A: chiều cao = 172 CM trọng lượng = 52KG Kích thước phù hợp = M

B: chiều cao = 176 CM trọng lượng = 65KG Kích thước phù hợp = L

C: chiều cao = 180CM trọng lượng = 80KG Kích thước phù hợp = XL



✔Nếu bạn có bất kỳ nghi ngờ nào về kích thước, vui lòng trò chuyện với chúng tôi và chúng tôi sẽ gợi ý cho bạn

-----------------------------------------------------------------------------------------

 Thương hiệu: YD-store

Kích thước: S M L XL 2XL 3XL

Loại cổ áo: Cổ tròn

Màu: trắng xám đen

Thời gian đưa ra thị trường: 2022 năm

Phong cách phân khu: tide

Phong cách cơ bản: thời trang trẻ

Mùa áp dụng: mùa xuân

Chiều dài tay áo: Dài tay

Độ dày: thói quen

Sử dụng cho dịp: thời trang thường ngày

Loại tấm: dễ dàng

Đối tượng áp dụng: Thanh thiếu niên ❤

--------------------------------------------------------------------------------------------------------

Các dịp thích hợp: rạp hát, sân khấu, câu lạc bộ đêm, studio chụp ảnh, tiệc tùng, đi làm, du lịch.

Những ngành nghề thích hợp: Nghệ sĩ, người sáng tạo văn học, nhà thiết kế, người thuyết trình, diễn viên

--------------------------------------------------------------------------------------------------------

❤Chúng tôi sẽ nghe kỹ giọng nói của từng người bạn. Đầy đủ 5 sao 🌟🌟🌟🌟🌟 Là động lực của chúng tôi để vui vẻ! Cảm ơn bạn đã tin tưởng

', CAST(120000 AS Decimal(18, 0)), 80, 1, N'th3.jpg', N'image2_1.jpg,image2_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (8, N'Qu?n jeans nam A', N'Mô t? cho qu?n jeans nam A', CAST(300000 AS Decimal(18, 0)), 50, 2, N'th4.jpg', N'image3_1.jpg,image3_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (9, N'Qu?n jeans nam B', N'Mô t? cho qu?n jeans nam B', CAST(250000 AS Decimal(18, 0)), 60, 2, N'th5.jpg', N'image4_1.jpg,image4_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (14, N'Áo thun nam A', N'Thoáng', CAST(120000 AS Decimal(18, 0)), 30, 1, N'th.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (15, N'áo bà ba', N'đẹp', CAST(60000 AS Decimal(18, 0)), 50, 1, N'System.Web.HttpPostedFileWrapper', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (16, N'áo bà ba', N'đẹp', CAST(50000 AS Decimal(18, 0)), 50, 1, N'385321792_6496938847022649_285193050795611245_n', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (17, N'áo bà ba', N'dep', CAST(50000 AS Decimal(18, 0)), 10, 1, N'System.Web.HttpPostedFileWrapper', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (18, N'áo bà ba', N'd', CAST(50000 AS Decimal(18, 0)), 10, 1, N'System.Web.HttpPostedFileWrapper', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (19, N'áo bà ba', N'1', CAST(50000 AS Decimal(18, 0)), 10, 1, N'System.Web.HttpPostedFileWrapper', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (20, N'áo bà ba', N'1', CAST(10000 AS Decimal(18, 0)), 10, 1, N'System.Web.HttpPostedFileWrapper', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (21, N'áo bà ba', N'1', CAST(100 AS Decimal(18, 0)), 20, 1, N'System.Web.HttpPostedFileWrapper', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (23, N'áo bà ba', N'1', CAST(20000 AS Decimal(18, 0)), 10, 1, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (24, N'áo bà ba', N'12', CAST(1111 AS Decimal(18, 0)), 11, 1, N'1.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaDanhMuc], [HinhAnh], [ThuVienChuaHinh]) VALUES (26, N'áo bà ba', N'1', CAST(100 AS Decimal(18, 0)), 1, 1, N'1.jpg', NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucSanPham] ([MaDanhMuc])
GO
USE [master]
GO
ALTER DATABASE [ShopQuanAo] SET  READ_WRITE 
GO
