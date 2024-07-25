USE [Man_Store]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 25/07/2024 3:00:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ChiTietHoaDon](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [idChiTietSanPham] [int] NOT NULL,
    [idHoaDon] [int] NULL,
    [DonGia] [decimal](18, 0) NULL,
    [SoLuong] [int] NULL,
    [TrangThai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ChiTietSanPham](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [NgayTao] [date] NULL,
    [Soluong] [int] NULL,
    [idSize] [int] NULL,
    [idSanPham] [int] NULL,
    [idMauSac] [int] NULL,
    [TrangThai] [int] NULL,
    [duongDan] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[CoAo]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[CoAo](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DanhMuc](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DiaChi](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [idKhachHang] [int] NULL,
    [Tinh_ThanhPho] [nvarchar](50) NULL,
    [Quan_Huyen] [nvarchar](50) NULL,
    [Xa_Phuong_ThiTran] [nvarchar](50) NULL,
    [SDT] [nchar](10) NULL,
    [MoTa] [nvarchar](500) NULL,
    CONSTRAINT [PK__DiaChi__3213E83FCB6D3C3C] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[DotGiamGia]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DotGiamGia](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [NgayTao] [date] NULL,
    [NgayBatDau] [date] NULL,
    [NgayKetThuc] [date] NULL,
    [LoaiGiamGia] [bit] NULL,
    [GiaTriGiam] [int] NULL,
    [GiaTriDonHang] [float] NULL,
    [TrangThai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[DuoiAo]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DuoiAo](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[GioHang](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [NgayTao] [date] NULL,
    [idKhachHang] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[GioHangChiTiet]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[GioHangChiTiet](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [SoLuong] [int] NULL,
    [DonGia] [decimal](18, 0) NULL,
    [TongTien] [decimal](18, 0) NULL,
    [idSanPhamChiTiet] [int] NULL,
    [idGioHang] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[HoaDon](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [idDotGiamGia] [int] NULL,
    [idKhachHang] [int] NULL,
    [idNhanVien] [int] NULL,
    [Ma] [varchar](50) NULL,
    [NgayTao] [date] NULL,
    [VAT] [decimal](18, 0) NULL,
    [PhuongThucThanhToan] [int] NULL,
    [TongTien] [decimal](18, 0) NULL,
    [TrangThai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[KhachHang](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MatKhau] [varchar](250) NULL,
    [MaHoaMatKhau] [nvarchar](250) NULL,
    [SDT] [varchar](10) NULL,
    [Email] [varchar](50) NULL,
    [NgaySinh] [date] NULL,
    [GioiTinh] [int] NULL,
    CONSTRAINT [PK__KhachHan__3213E83FAD8ED6B5] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[KieuDang]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[KieuDang](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[MauSac](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[NhanVien](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [SDT] [varchar](10) NULL,
    [DiaChi] [varchar](300) NULL,
    [NgaySinh] [date] NULL,
    [Email] [varchar](50) NULL,
    [GioiTinh] [int] NULL,
    [idPhanQuyen] [int] NOT NULL,
    [MatKhau] [varchar](250) NULL,
    [MaHoaMatKhau] [varchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK__NhanVien__3213E83F752B0957] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[PhanQuyen](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ten] [nvarchar](100) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[SanPham](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [SoLuong] [int] NULL,
    [NgayTao] [date] NULL,
    [Gia] [decimal](18, 0) NULL,
    [GiaSale] [decimal](18, 0) NULL,
    [MoTa] [nvarchar](500) NULL,
    [idDanhMuc] [int] NULL,
    [idThuongHieu] [int] NULL,
    [idCoAo] [int] NULL,
    [idDuoiAo] [int] NULL,
    [idKieuDang] [int] NULL,
    [idChatLieu] [int] NULL,
    [TrangThai] [int] NULL,
    [DuongDan] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Size]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Size](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 25/07/2024 3:00:22 CH ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ThuongHieu](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [Ma] [varchar](50) NULL,
    [Ten] [nvarchar](100) NULL,
    [MoTa] [nvarchar](500) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    SET IDENTITY_INSERT [dbo].[ChatLieu] ON

    INSERT [dbo].[ChatLieu] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'cottonnnn', N'Áo làm từ vải cotton co dãnnnn')
    INSERT [dbo].[ChatLieu] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'Nhung tằm', N'Áo chất vải dày và mượt')
    INSERT [dbo].[ChatLieu] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'testqZ123', N'qqq')
    INSERT [dbo].[ChatLieu] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'tahn', N'LMMMMMM')
    SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
    GO
    SET IDENTITY_INSERT [dbo].[ChiTietSanPham] ON

    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (1, CAST(N'2024-07-24' AS Date), 1, 1, 1, 3, 1, N'RED-MS-scaled.jpg,RED-MT-1-scaled.jpg')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (2, CAST(N'2024-07-24' AS Date), 1, 1, 2, 1, 1, N'z4740516616222_59cae362231b3025116ed720f7f6adc7-2048x2048.jpg,z4740516607500_666e8138e41971a54099a9f204dc1a99-2048x2048.jpg,z4740516591176_04434026b9ccc138982303d6166c1935-2048x2048.jpg')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (3, CAST(N'2024-07-24' AS Date), 2, 2, 1, 1, 1, N'POLO-TEE-W2-scaled.jpg,POLO-TEE-W3-1-scaled.jpg')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (4, CAST(N'2024-07-24' AS Date), 30, 1, 3, 1, 1, N'POLO-TEE-D1-scaled.jpg,POLO-TEE-D2-scaled.jpg')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (5, CAST(N'2024-07-24' AS Date), 22, 1, 2, 6, 1, N'img-34.png,img-31.png,img-32.png')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (6, CAST(N'2024-07-24' AS Date), 33, 1, 1, 1, 1, N'MT-2048x2048.jpg,MS-2048x2048.jpg')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (7, CAST(N'2024-07-24' AS Date), 111, 1, 1, 7, 1, N'img-2.png')
    INSERT [dbo].[ChiTietSanPham] ([id], [NgayTao], [Soluong], [idSize], [idSanPham], [idMauSac], [TrangThai], [duongDan]) VALUES (8, CAST(N'2024-07-24' AS Date), 1, 1, 4, 1, 1, N'z3784666220506_08f4bb2c6ededb91f9a0467c2ce3cb53-2048x2048.jpg,z3784666228609_f90c408f5e608152990978a1df8c7011-2048x2048.jpg,z3784666226508_4354ac786cc9704afd453c4eb8f6420f-2048x2048.jpg')
    SET IDENTITY_INSERT [dbo].[ChiTietSanPham] OFF
    GO
    SET IDENTITY_INSERT [dbo].[CoAo] ON

    INSERT [dbo].[CoAo] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'Cổ to', N'Áo có cổ to hơn bình thường')
    INSERT [dbo].[CoAo] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'Không cổ', N'Áo không có cổ')
    INSERT [dbo].[CoAo] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'Cổ tay', N'nỏ ')
    INSERT [dbo].[CoAo] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'test', N'1111')
    INSERT [dbo].[CoAo] ([id], [Ma], [Ten], [MoTa]) VALUES (5, N'5', N'tttt', N'111')
    SET IDENTITY_INSERT [dbo].[CoAo] OFF
    GO
    SET IDENTITY_INSERT [dbo].[DanhMuc] ON

    INSERT [dbo].[DanhMuc] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'Trắng basic', N'Chỉ màu trắng')
    INSERT [dbo].[DanhMuc] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'Kẻ sọc', N'Chi tiết kẻ sọc')
    INSERT [dbo].[DanhMuc] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'Tay ngắn', N'Áo có ống tay ngắn')
    INSERT [dbo].[DanhMuc] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'Limit123', N'qqq')
    SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
    GO
    SET IDENTITY_INSERT [dbo].[DuoiAo] ON

    INSERT [dbo].[DuoiAo] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'Xẻ tà', N'Rộng từ phần hông trở xuống')
    INSERT [dbo].[DuoiAo] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'Regular', N'From áo bình thường ')
    INSERT [dbo].[DuoiAo] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'Lim', N'ádfg')
    INSERT [dbo].[DuoiAo] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'111111111111111', N'zzzzzzzzzzzzz')
    SET IDENTITY_INSERT [dbo].[DuoiAo] OFF
    GO
    SET IDENTITY_INSERT [dbo].[KieuDang] ON

    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'SlimFit', N'Ôm sát body')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'Boxy', N'Hơi ngắn và rộng')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'Straight', N'Áo có dáng thẳng đứng')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'FlLL123', N'1')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (5, N'5', N'Boxy111', N'qqqq')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (6, N'6', N'Boo', N'qq')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (7, N'7', N'Bobui1', N'aaaa')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (8, N'8', N'update11111', N'adsadds')
    INSERT [dbo].[KieuDang] ([id], [Ma], [Ten], [MoTa]) VALUES (9, N'9', N'LIZ1', N'dang liz')
    SET IDENTITY_INSERT [dbo].[KieuDang] OFF
    GO
    SET IDENTITY_INSERT [dbo].[MauSac] ON

    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (1, N'1', N'Đen')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (2, N'2', N'Trắng')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (3, N'3', N'Đỏ')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (4, N'4', N'Xám')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (5, N'5', N'Xanh Lục')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (6, N'6', N'Tím Xanh')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (7, N'7', N'Xanh Da Trời')
    INSERT [dbo].[MauSac] ([id], [Ma], [Ten]) VALUES (8, N'8', N'Vàng')
    SET IDENTITY_INSERT [dbo].[MauSac] OFF
    GO
    SET IDENTITY_INSERT [dbo].[SanPham] ON

    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (1, N'1', N'UpdateTenSPtesst', 555, CAST(N'2024-06-19' AS Date), CAST(650000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), N'Áo phù hợp dân văn phòng', 3, 3, 1, 1, 1, 1, 1, N'img-4.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (2, N'2', N'Shirt trơn', 51, CAST(N'2024-06-19' AS Date), CAST(500000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), N'Áo công sở', 3, 4, 4, 2, 3, 2, 1, N'img-5.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (3, N'SP1', N'TestUpdate1', 51, CAST(N'2024-07-05' AS Date), CAST(70000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'123qqq', 1, 1, 2, 2, 2, 2, 1, N'img-6 - Copy.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (4, N'SP2', N'testAD1', 5, CAST(N'2024-07-05' AS Date), CAST(200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), N'1111qqq', 2, 3, 1, 2, 3, 2, 1, N'img-7.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (5, N'SP3', N'Yodiazy1', 10, CAST(N'2024-07-05' AS Date), CAST(250000 AS Decimal(18, 0)), CAST(170000 AS Decimal(18, 0)), N'tssss1111', 2, 1, 2, 3, 2, 2, 1, N'img-8.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (6, N'SP4', N'G5izz', 5, CAST(N'2024-07-05' AS Date), CAST(100000 AS Decimal(18, 0)), CAST(70000 AS Decimal(18, 0)), N'qqq', 3, 4, 1, 1, 2, 2, 1, N'img-6 - Copy.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (7, N'SP5', N'ao1q', 5, CAST(N'2024-07-05' AS Date), CAST(150000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'test', 1, 1, 3, 1, 1, 1, 1, N'img-9.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (8, N'SP6', N'NikeX1', 15, CAST(N'2024-07-06' AS Date), CAST(160000 AS Decimal(18, 0)), CAST(140000 AS Decimal(18, 0)), N'tesst', 1, 2, 1, 1, 1, 1, 1, N'z4740516591176_04434026b9ccc138982303d6166c1935-2048x2048.jpg')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (9, N'SP7', N'new1', 17, CAST(N'2024-07-07' AS Date), CAST(160000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), N'test', 1, 2, 1, 2, 3, 3, 1, N'z3784666226508_4354ac786cc9704afd453c4eb8f6420f-2048x2048.jpg,z3784666228609_f90c408f5e608152990978a1df8c7011-2048x2048.jpg')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (10, N'SP8', N'ProStatus', 3, CAST(N'2024-07-07' AS Date), CAST(170000 AS Decimal(18, 0)), CAST(110000 AS Decimal(18, 0)), N'123', 1, 1, 1, 3, 4, 1, 1, N'img-6 - Copy.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (11, N'SP9', N'Shirtq', 2, CAST(N'2024-07-07' AS Date), CAST(140000 AS Decimal(18, 0)), CAST(80000 AS Decimal(18, 0)), N'ttt', 3, 3, 2, 1, 1, 1, 1, N'z4740516616222_59cae362231b3025116ed720f7f6adc7-2048x2048.jpg')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (12, N'SP10', N'zzzz', 123, CAST(N'2024-07-07' AS Date), CAST(130000 AS Decimal(18, 0)), CAST(80000 AS Decimal(18, 0)), N'222', 1, 2, 3, 3, 4, 3, 1, N'img-5.png,img-6 - Copy.png,img-6.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (13, N'SP11', N'Acizzy', 125, CAST(N'2024-07-08' AS Date), CAST(270000 AS Decimal(18, 0)), NULL, N'123', 1, 1, 1, 2, 3, 1, 0, N'z3784666226508_4354ac786cc9704afd453c4eb8f6420f-2048x2048.jpg,z3784666228609_f90c408f5e608152990978a1df8c7011-2048x2048.jpg')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (17, N'SP12', N'Shirtpppppppp', 60, CAST(N'2024-07-19' AS Date), CAST(300000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), N'aaaaaa', 3, 3, 3, 4, 5, 3, 0, N'img-31.png,img-32.png,img-33.png')
    INSERT [dbo].[SanPham] ([id], [Ma], [Ten], [SoLuong], [NgayTao], [Gia], [GiaSale], [MoTa], [idDanhMuc], [idThuongHieu], [idCoAo], [idDuoiAo], [idKieuDang], [idChatLieu], [TrangThai], [DuongDan]) VALUES (18, N'SP13', N'sanpham123', 50, CAST(N'2024-07-22' AS Date), CAST(250000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), N'adsd123', 1, 4, 1, 1, 1, 1, 1, N'MS-2048x2048.jpg,MT-2048x2048.jpg,POLO-TEE-D1-scaled.jpg')
    SET IDENTITY_INSERT [dbo].[SanPham] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Size] ON

    INSERT [dbo].[Size] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'S', N's')
    INSERT [dbo].[Size] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'M', N'm')
    INSERT [dbo].[Size] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'L', N'l')
    INSERT [dbo].[Size] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'XL', N'xl')
    INSERT [dbo].[Size] ([id], [Ma], [Ten], [MoTa]) VALUES (5, N'5', N'XXL', N'xxl')
    INSERT [dbo].[Size] ([id], [Ma], [Ten], [MoTa]) VALUES (6, N'6', N'2XL', N'2xl')
    SET IDENTITY_INSERT [dbo].[Size] OFF
    GO
    SET IDENTITY_INSERT [dbo].[ThuongHieu] ON

    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (1, N'1', N'Yody12', N'old brand from
')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (2, N'2', N'Len1n', N'form VN')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (3, N'3', N'Junk', N'Chin')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (4, N'4', N'Karzcq', N'Brazil')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (5, N'5', N'LoL', N'qqqweq')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (6, N'6', N'QQQQ', N'mmmmmmm')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (7, N'5', N'123qqq', N'123123qqq')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (8, N'7', N'test', N'1111')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (10, N'8', N'q11111111111', N'1eesss')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (11, N'9', N'Leninnnnn1', N'12345')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (12, N'10', N'updateThuonghieu', N'123441qqqq')
    INSERT [dbo].[ThuongHieu] ([id], [Ma], [Ten], [MoTa]) VALUES (13, N'11', N'chinhSuaTH', N'mota123')
    SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
    GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([idChiTietSanPham])
    REFERENCES [dbo].[ChiTietSanPham] ([id])
    GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([idHoaDon])
    REFERENCES [dbo].[HoaDon] ([id])
    GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idMauSac])
    REFERENCES [dbo].[MauSac] ([id])
    GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idSanPham])
    REFERENCES [dbo].[SanPham] ([id])
    GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idSize])
    REFERENCES [dbo].[Size] ([id])
    GO
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD  CONSTRAINT [FK__DiaChi__idKhachH__797309D9] FOREIGN KEY([idKhachHang])
    REFERENCES [dbo].[KhachHang] ([id])
    GO
ALTER TABLE [dbo].[DiaChi] CHECK CONSTRAINT [FK__DiaChi__idKhachH__797309D9]
    GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK__GioHang__idKhach__693CA210] FOREIGN KEY([idKhachHang])
    REFERENCES [dbo].[KhachHang] ([id])
    GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK__GioHang__idKhach__693CA210]
    GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD FOREIGN KEY([idGioHang])
    REFERENCES [dbo].[GioHang] ([id])
    GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD FOREIGN KEY([idSanPhamChiTiet])
    REFERENCES [dbo].[ChiTietSanPham] ([id])
    GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idDotGiamGia])
    REFERENCES [dbo].[DotGiamGia] ([id])
    GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__idKhachH__00200768] FOREIGN KEY([idKhachHang])
    REFERENCES [dbo].[KhachHang] ([id])
    GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__idKhachH__00200768]
    GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__idNhanVi__01142BA1] FOREIGN KEY([idNhanVien])
    REFERENCES [dbo].[NhanVien] ([id])
    GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__idNhanVi__01142BA1]
    GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhanQuyen] FOREIGN KEY([idPhanQuyen])
    REFERENCES [dbo].[PhanQuyen] ([id])
    GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhanQuyen]
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([idChatLieu])
    REFERENCES [dbo].[ChatLieu] ([id])
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([idCoAo])
    REFERENCES [dbo].[CoAo] ([id])
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([idDanhMuc])
    REFERENCES [dbo].[DanhMuc] ([id])
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([idDuoiAo])
    REFERENCES [dbo].[DuoiAo] ([id])
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([idKieuDang])
    REFERENCES [dbo].[KieuDang] ([id])
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([idThuongHieu])
    REFERENCES [dbo].[ThuongHieu] ([id])
    GO
