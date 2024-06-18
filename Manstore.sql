use master;
drop database Man_Store;
create database Man_Store;
use Man_Store;

CREATE TABLE [ChatLieu] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [KieuDang] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [DuoiAo] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [CoAo] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [ThuongHieu] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [HinhAnh] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [Url] nvarchar(500)
)
GO

CREATE TABLE [DanhMuc] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [SanPham] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [SoLuong] int,
  [NgayTao] date,
  [Gia] decimal,
  [GiaSale] decimal,
  [MoTa] nvarchar(500),
  [idDanhMuc] integer,
  [idHinhAnh] integer,
  [idThuongHieu] integer,
  [idCoAo] integer,
  [idDuoiAo] integer,
  [idKieuDang] integer,
  [idChatLieu] integer,
  [TrangThai] int
)
GO

CREATE TABLE [ChiTietSanPham] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [NgayTao] date,
  [Soluong] int,
  [idSize] integer,
  [idSanPham] integer,
  [idMauSac] integer,
  [TrangThai] int
)
GO

CREATE TABLE [Size] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [MauSac] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100)
)
GO

CREATE TABLE [TaiKhoan] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [TenTaiKhoan] varchar(20),
  [MatKhau] varchar(20),
  [Email] varchar(100),
  [NgayTao] date,
  [TrangThai] int
)
GO

CREATE TABLE [ChoPhep] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idTaiKhoan] integer,
  [idPhanQuyen] integer,
  [TrangThai] int
)
GO

CREATE TABLE [PhanQuyen] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ten] nvarchar(100),
  [MoTa] nvarchar(200)
)
GO

CREATE TABLE [GioHang] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [NgayTao] date,
  [idTaiKhoan] integer,
  [idKhachHang] integer
)
GO

CREATE TABLE [GioHangChiTiet] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [SoLuong] int,
  [DonGia] decimal,
  [TongTien] decimal,
  [idSanPhamChiTiet] integer,
  [idGioHang] integer
)
GO

CREATE TABLE [DotGiamGia] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [NgayTao] date,
  [NgayBatDau] date,
  [NgayKetThuc] date,
  [LoaiGiamGia] bit,
  [GiaTriGiam] int,
  [GiaTriDonHang] float,
  [TrangThai] int
)
GO

CREATE TABLE [DiaChi] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idKhachHang] integer,
  [Ma] varchar(50),
  [Tinh_TP] nvarchar(50),
  [Quan_Huyen] nvarchar(50),
  [Xa_Phuong_ThiTran] nvarchar(50),
  [MoTa] nvarchar(500)
)
GO

CREATE TABLE [KhachHang] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [UserName] varchar(50),
  [PassWord] varchar(100),
  [SDT] varchar(10),
  [Email] varchar(50),
  [NgaySinh] date,
  [GioiTinh] int
)
GO

CREATE TABLE [PhieuGiamGia] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [TieuDe] nvarchar(100),
  [NgayMo] date,
  [NgayDong] date,
  [SoLuong] int,
  [LoaiGiamGia] bit,
  [GiaTriGiam] int,
  [PhuongThucThanhToan] nvarchar(100),
  [DieuKien] nvarchar(300),
  [TrangThai] int
)
GO

CREATE TABLE [KhahHang_PhieuGiam] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idPhieuGiamGia] integer,
  [idKhachHang] integer,
  [SoLuong] int,
  [TrangThai] int
)
GO

CREATE TABLE [HoaDon_PhieuGiam] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idPhieuGiamGia] integer,
  [idHoaDon] integer,
  [TrangThai] int
)
GO

CREATE TABLE [Lich_Su] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idKhahHang_PhieuGiam] integer,
  [idHoaDon_PhieuGiam] integer,
  [SoLuong] int,
  [TrangThai] int
)
GO

CREATE TABLE [NhanVien] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [Ma] varchar(50),
  [Ten] nvarchar(100),
  [SDT] varchar(10),
  [DiaChi] varchar(300),
  [NgaySinh] date,
  [Email] varchar(50),
  [GioiTinh] int,
  [idTaiKhoan] integer,
  [TrangThai] int
)
GO

CREATE TABLE [HoaDon] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idDotGiamGia] integer,
  [idKhachHang] integer,
  [idNhanVien] integer,
  [idTaiKhoan] integer,
  [Ma] varchar(50),
  [NgayTao] date,
  [VAT] decimal,
  [PhuongThucThanhToan] int,
  [TongTien] decimal,
  [TrangThai] int
)
GO

CREATE TABLE [ChiTietHoaDon] (
  [id] integer PRIMARY KEY IDENTITY(1, 1),
  [idChiTietSanPham] integer NOT NULL,
  [idHoaDon] integer,
  [DonGia] decimal,
  [SoLuong] int,
  [TrangThai] int
)
GO

ALTER TABLE [HoaDon] ADD FOREIGN KEY ([idTaiKhoan]) REFERENCES [TaiKhoan] ([id])
GO

ALTER TABLE [ChoPhep] ADD FOREIGN KEY ([idTaiKhoan]) REFERENCES [TaiKhoan] ([id])
GO

ALTER TABLE [ChoPhep] ADD FOREIGN KEY ([idPhanQuyen]) REFERENCES [PhanQuyen] ([id])
GO

ALTER TABLE [GioHang] ADD FOREIGN KEY ([idKhachHang]) REFERENCES [KhachHang] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idDanhMuc]) REFERENCES [DanhMuc] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idChatLieu]) REFERENCES [ChatLieu] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idCoAo]) REFERENCES [CoAo] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idDuoiAo]) REFERENCES [DuoiAo] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idHinhAnh]) REFERENCES [HinhAnh] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idKieuDang]) REFERENCES [KieuDang] ([id])
GO

ALTER TABLE [SanPham] ADD FOREIGN KEY ([idThuongHieu]) REFERENCES [ThuongHieu] ([id])
GO

ALTER TABLE [ChiTietSanPham] ADD FOREIGN KEY ([idSanPham]) REFERENCES [SanPham] ([id])
GO

ALTER TABLE [ChiTietSanPham] ADD FOREIGN KEY ([idSize]) REFERENCES [Size] ([id])
GO

ALTER TABLE [ChiTietSanPham] ADD FOREIGN KEY ([idMauSac]) REFERENCES [MauSac] ([id])
GO

ALTER TABLE [ChiTietHoaDon] ADD FOREIGN KEY ([idChiTietSanPham]) REFERENCES [ChiTietSanPham] ([id])
GO

ALTER TABLE [ChiTietHoaDon] ADD FOREIGN KEY ([idHoaDon]) REFERENCES [HoaDon] ([id])
GO

ALTER TABLE [GioHangChiTiet] ADD FOREIGN KEY ([idSanPhamChiTiet]) REFERENCES [ChiTietSanPham] ([id])
GO

ALTER TABLE [GioHangChiTiet] ADD FOREIGN KEY ([idGioHang]) REFERENCES [GioHang] ([id])
GO

ALTER TABLE [GioHang] ADD FOREIGN KEY ([idTaiKhoan]) REFERENCES [TaiKhoan] ([id])
GO

ALTER TABLE [NhanVien] ADD FOREIGN KEY ([idTaiKhoan]) REFERENCES [TaiKhoan] ([id])
GO

ALTER TABLE [DiaChi] ADD FOREIGN KEY ([idKhachHang]) REFERENCES [KhachHang] ([id])
GO

ALTER TABLE [KhahHang_PhieuGiam] ADD FOREIGN KEY ([idKhachHang]) REFERENCES [KhachHang] ([id])
GO

ALTER TABLE [KhahHang_PhieuGiam] ADD FOREIGN KEY ([idPhieuGiamGia]) REFERENCES [PhieuGiamGia] ([id])
GO

ALTER TABLE [HoaDon_PhieuGiam] ADD FOREIGN KEY ([idHoaDon]) REFERENCES [HoaDon] ([id])
GO

ALTER TABLE [HoaDon_PhieuGiam] ADD FOREIGN KEY ([idPhieuGiamGia]) REFERENCES [PhieuGiamGia] ([id])
GO

ALTER TABLE [Lich_Su] ADD FOREIGN KEY ([idHoaDon_PhieuGiam]) REFERENCES [HoaDon_PhieuGiam] ([id])
GO

ALTER TABLE [Lich_Su] ADD FOREIGN KEY ([idKhahHang_PhieuGiam]) REFERENCES [KhahHang_PhieuGiam] ([id])
GO

ALTER TABLE [HoaDon] ADD FOREIGN KEY ([idKhachHang]) REFERENCES [KhachHang] ([id])
GO

ALTER TABLE [HoaDon] ADD FOREIGN KEY ([idNhanVien]) REFERENCES [NhanVien] ([id])
GO

ALTER TABLE [HoaDon] ADD FOREIGN KEY ([idDotGiamGia]) REFERENCES [DotGiamGia] ([id])
GO

