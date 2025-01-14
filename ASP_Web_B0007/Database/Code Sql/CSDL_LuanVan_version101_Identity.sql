Create Database ManagementCenters
GO
USE ManagementCenters
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/27/2024 12:11:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[RefreshToken] [nvarchar](max) NOT NULL,
	[RefreshTokenExpiry] [datetime2](7) NOT NULL,
	[Khoa] [bit] NOT NULL,
	[MaTrungTam] [int] NOT NULL,
	[NgayCapNhat] [nvarchar](max) NOT NULL,
	[NgayTao] [nvarchar](max) NOT NULL,
	[NgayXoa] [nvarchar](max) NOT NULL,
	[NguoiXoa] [nvarchar](max) NOT NULL,
	[SoDienThoai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietThuChi]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietThuChi](
	[maChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[tenChiTiet] [nvarchar](255) NULL,
	[donVi] [nvarchar](50) NULL,
	[soLuong] [nvarchar](10) NULL,
	[tongTien] [nvarchar](10) NULL,
	[maPhieu] [int] NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDichVu] [int] IDENTITY(1,1) NOT NULL,
	[tenDichVu] [nvarchar](255) NULL,
	[thongTin] [nvarchar](1000) NULL,
	[gia] [nvarchar](15) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
	[post] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[maHocSinh] [int] IDENTITY(1,1) NOT NULL,
	[tenHocSinh] [nvarchar](255) NULL,
	[ngaySinh] [nvarchar](20) NULL,
	[gioiTinh] [nvarchar](20) NULL,
	[maLop] [int] NULL,
	[maTrungTam] [int] NULL,
	[thongTin] [nvarchar](1000) NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[diaChi] [nvarchar](255) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
	[chieuCao] [nvarchar](20) NULL,
	[canNang] [nvarchar](20) NULL,
	[tinhTrangRang] [nvarchar](255) NULL,
	[tinhTrangMat] [nvarchar](255) NULL,
	[BMI] [nvarchar](10) NULL,
	[tinhTrangTamLy] [nvarchar](500) NULL,
	[chucNangCoThe] [nvarchar](500) NULL,
	[danhGiaSucKhoe] [nvarchar](1000) NULL,
	[CCCDCha] [nvarchar](20) NULL,
	[CCCDMe] [nvarchar](20) NULL,
	[tenCha] [nvarchar](255) NULL,
	[tenMe] [nvarchar](255) NULL,
	[ngaySinhCha] [nvarchar](20) NULL,
	[ngaySinhMe] [nvarchar](20) NULL,
	[soDienThoaiCha] [nvarchar](11) NULL,
	[soDienThoaiMe] [nvarchar](11) NULL,
	[emailCha] [nvarchar](255) NULL,
	[emailMe] [nvarchar](255) NULL,
	[ngheNghiepCha] [nvarchar](255) NULL,
	[ngheNghiepMe] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[maKetQua] [int] IDENTITY(1,1) NOT NULL,
	[tenKetQua] [nvarchar](255) NULL,
	[maHocSinh] [int] NULL,
	[maMonHoc] [int] NULL,
	[diem] [nvarchar](5) NULL,
	[xepLoai] [nvarchar](20) NULL,
	[ngayKiemTra] [nvarchar](20) NULL,
	[trangThai] [nvarchar](50) NULL,
	[maNhanVien] [int] NULL,
	[maTrungTam] [int] NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKetQua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [int] IDENTITY(1,1) NOT NULL,
	[tenLop] [nvarchar](255) NULL,
	[maNhanVien] [int] NULL,
	[maTrungTam] [int] NULL,
	[namHoc] [int] NULL,
	[hocPhi] [nvarchar](15) NULL,
	[lichHoc] [nvarchar](100) NULL,
	[thongTin] [nvarchar](1000) NULL,
	[ngayBatDau] [nvarchar](20) NULL,
	[ngayKetThuc] [nvarchar](20) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoSanPham]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoSanPham](
	[maLoSanPham] [int] IDENTITY(1,1) NOT NULL,
	[tenLoSanPham] [nvarchar](255) NULL,
	[trangThai] [nvarchar](50) NULL,
	[maSanPham] [int] NULL,
	[soLuong] [nvarchar](10) NULL,
	[donVi] [nvarchar](10) NULL,
	[ngayNhap] [nvarchar](20) NULL,
	[ngayHetHan] [nvarchar](20) NULL,
	[maNhanVien] [int] NULL,
	[maTrungTam] [int] NULL,
	[ghiChu] [nvarchar](255) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[tenMonHoc] [nvarchar](255) NULL,
	[gia] [nvarchar](20) NULL,
	[thongTin] [nvarchar](1000) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[tenNhaCungCap] [nvarchar](255) NULL,
	[gioiThieu] [nvarchar](1000) NULL,
	[email] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](11) NULL,
	[nganHang] [nvarchar](255) NULL,
	[soTaiKhoan] [nvarchar](20) NULL,
	[maSoThue] [nvarchar](15) NULL,
	[maTrungTam] [int] NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[tenNhanVien] [nvarchar](255) NULL,
	[CCCD] [nvarchar](20) NULL,
	[ngaySinh] [nvarchar](20) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[diaChi] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](20) NULL,
	[email] [nvarchar](255) NULL,
	[thongTin] [nvarchar](1000) NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[maTrungTam] [int] NULL,
	[maTaiKhoan] [nvarchar](450) NULL,
	[loaiNhanVien] [nvarchar](50) NULL,
	[phongBan] [nvarchar](50) NULL,
	[luong] [nvarchar](15) NULL,
	[nganHang] [nvarchar](255) NULL,
	[soTaiKhoan] [nvarchar](20) NULL,
	[danToc] [nvarchar](50) NULL,
	[tonGiao] [nvarchar](50) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThuChi]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuChi](
	[maPhieu] [int] IDENTITY(1,1) NOT NULL,
	[ngayTao] [nvarchar](20) NULL,
	[ngayThanhToan] [nvarchar](20) NULL,
	[loaiPhieu] [nvarchar](50) NULL,
	[tongTien] [nvarchar](15) NULL,
	[ghiChu] [nvarchar](1000) NULL,
	[maTrungTam] [int] NULL,
	[trangThai] [nvarchar](100) NULL,
	[hinhThucThanhToan] [nvarchar](100) NULL,
	[maNhanVien] [int] NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [int] IDENTITY(1,1) NOT NULL,
	[tenSanPham] [nvarchar](255) NULL,
	[thongTin] [nvarchar](1000) NULL,
	[loaiSanPham] [nvarchar](50) NULL,
	[hanSuDung] [nvarchar](10) NULL,
	[maNhaCungCap] [int] NULL,
	[maTrungTam] [int] NULL,
	[gia] [nvarchar](15) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuDungDichVu]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuDungDichVu](
	[maSuDungDichVu] [int] IDENTITY(1,1) NOT NULL,
	[tenSuDungDichVu] [nvarchar](255) NULL,
	[maDichVu] [int] NULL,
	[maHocSinh] [int] NULL,
	[maTrungTam] [int] NULL,
	[trangThai] [nvarchar](50) NULL,
	[ngayBatDau] [nvarchar](20) NULL,
	[ngayKetThuc] [nvarchar](20) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSuDungDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrungTam]    Script Date: 3/27/2024 12:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrungTam](
	[maTrungTam] [int] IDENTITY(1,1) NOT NULL,
	[tenTrungTam] [nvarchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[maSoThue] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](11) NULL,
	[dienTich] [nvarchar](20) NULL,
	[nganHang] [nvarchar](255) NULL,
	[soTaiKhoan] [nvarchar](20) NULL,
	[ngayXoa] [nvarchar](20) NULL,
	[nguoiXoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTrungTam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [RefreshToken]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [RefreshTokenExpiry]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Khoa]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [NgayTao]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [NgayXoa]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [NguoiXoa]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [SoDienThoai]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[chiTietThuChi]  WITH CHECK ADD FOREIGN KEY([maPhieu])
REFERENCES [dbo].[PhieuThuChi] ([maPhieu])
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD FOREIGN KEY([maHocSinh])
REFERENCES [dbo].[HocSinh] ([maHocSinh])
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[MonHoc] ([maMonHoc])
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[NhaCungCap]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[PhieuThuChi]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuThuChi]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([maNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([maNhaCungCap])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD FOREIGN KEY([maDichVu])
REFERENCES [dbo].[DichVu] ([maDichVu])
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD FOREIGN KEY([maHocSinh])
REFERENCES [dbo].[HocSinh] ([maHocSinh])
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD FOREIGN KEY([maTrungTam])
REFERENCES [dbo].[TrungTam] ([maTrungTam])
GO
