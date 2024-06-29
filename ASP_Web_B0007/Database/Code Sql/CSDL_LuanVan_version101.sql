--========== CREATE TABLE ===========
CREATE TABLE TrungTam (
    maTrungTam INT PRIMARY KEY IDENTITY,
    tenTrungTam NVARCHAR(255),
    diaChi NVARCHAR(255),
    email NVARCHAR(255),
	maSoThue NVARCHAR(255),
    soDienThoai NVARCHAR(11),
    dienTich NVARCHAR(20),
    nganHang NVARCHAR(255),
    soTaiKhoan NVARCHAR(20),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
);

CREATE TABLE NhanVien (
    maNhanVien INT PRIMARY KEY IDENTITY,
    tenNhanVien NVARCHAR(255),
    CCCD NVARCHAR(20),
    ngaySinh NVARCHAR(20),
    gioiTinh NVARCHAR(10),
    diaChi NVARCHAR(255),
    soDienThoai NVARCHAR(20),
    email NVARCHAR(255),
    thongTin NVARCHAR(1000),
    hinhAnh NVARCHAR(MAX),
    maTrungTam INT,
    maTaiKhoan NVARCHAR(450),
    loaiNhanVien NVARCHAR(50),
	phongBan NVARCHAR(50),
    luong NVARCHAR(15),
    nganHang NVARCHAR(255),
    soTaiKhoan NVARCHAR(20),
    danToc NVARCHAR(50),
    tonGiao NVARCHAR(50),
    ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
    FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam),
    FOREIGN KEY (maTaiKhoan) REFERENCES AspNetUsers(Id)
);

CREATE TABLE Lop (
    maLop INT PRIMARY KEY IDENTITY,
    tenLop NVARCHAR(255),
    maNhanVien INT,
    maTrungTam INT,
	namHoc INT,
	hocPhi NVARCHAR(15), 
	lichHoc NVARCHAR(100),
    thongTin NVARCHAR(1000),
    ngayBatDau NVARCHAR(20),
    ngayKetThuc NVARCHAR(20),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
    FOREIGN KEY (maNhanVien) REFERENCES NhanVien(maNhanVien),
    FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam)
);

CREATE TABLE PhieuThuChi (
    maPhieu INT PRIMARY KEY IDENTITY,
    ngayTao NVARCHAR(20),
	ngayThanhToan NVARCHAR(20),
    loaiPhieu NVARCHAR(50),
    tongTien NVARCHAR(15),
    ghiChu NVARCHAR(1000),
    maTrungTam INT,
    trangThai NVARCHAR(100),
	hinhThucThanhToan NVARCHAR(100),
    maNhanVien INT,
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
    FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam),
    FOREIGN KEY (maNhanVien) REFERENCES NhanVien(maNhanVien)
);

CREATE TABLE chiTietThuChi (
    maChiTiet INT PRIMARY KEY IDENTITY,
    tenChiTiet NVARCHAR(255),
    donVi NVARCHAR(50),
    soLuong NVARCHAR(10),
    tongTien NVARCHAR(10),
    maPhieu INT,
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
    FOREIGN KEY (maPhieu) REFERENCES PhieuThuChi(maPhieu)
);

CREATE TABLE HocSinh (
    maHocSinh INT PRIMARY KEY IDENTITY,
    tenHocSinh NVARCHAR(255),
    ngaySinh NVARCHAR(20),
    gioiTinh NVARCHAR(20),
    maLop INT,
    maTrungTam INT,
    thongTin NVARCHAR(1000),
    hinhAnh NVARCHAR(MAX),
	diaChi  NVARCHAR(255),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
	-- Thông tin sức khỏe
    chieuCao NVARCHAR(20),
    canNang NVARCHAR(20),
    tinhTrangRang NVARCHAR(255),
    tinhTrangMat NVARCHAR(255),
    BMI NVARCHAR(10),
    tinhTrangTamLy NVARCHAR(500),
    chucNangCoThe NVARCHAR(500),
    danhGiaSucKhoe NVARCHAR(1000),
	-- Thông tin phụ huynh
	CCCDCha NVARCHAR(20),
	CCCDMe NVARCHAR(20),
	tenCha NVARCHAR(255),
	tenMe NVARCHAR(255),
	ngaySinhCha  NVARCHAR(20),
	ngaySinhMe  NVARCHAR(20),
	soDienThoaiCha  NVARCHAR(11),
	soDienThoaiMe  NVARCHAR(11),
	emailCha  NVARCHAR(255),
	emailMe  NVARCHAR(255),
	ngheNghiepCha  NVARCHAR(255),
	ngheNghiepMe  NVARCHAR(255),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop),
    FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam)
);

CREATE TABLE MonHoc (
    maMonHoc INT PRIMARY KEY IDENTITY,
    tenMonHoc NVARCHAR(255),
	gia NVARCHAR(20),
    thongTin NVARCHAR(1000),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
);

CREATE TABLE KetQua (
    maKetQua INT PRIMARY KEY IDENTITY,
    tenKetQua NVARCHAR(255),
    maHocSinh INT,
    maMonHoc INT,
    diem NVARCHAR(5),
    xepLoai NVARCHAR(20),
    ngayKiemTra NVARCHAR(20),
	trangThai NVARCHAR(50),
    maNhanVien INT,
	maTrungTam INT,
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
    FOREIGN KEY (maHocSinh) REFERENCES HocSinh(maHocSinh),
    FOREIGN KEY (maMonHoc) REFERENCES MonHoc(maMonHoc),
    FOREIGN KEY (maNhanVien) REFERENCES NhanVien(maNhanVien),
	FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam),
);

CREATE TABLE DichVu (
    maDichVu INT PRIMARY KEY IDENTITY,
    tenDichVu NVARCHAR(255),
    thongTin NVARCHAR(1000),
    gia NVARCHAR(15),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
	post NVARCHAR(max),
);

CREATE TABLE SuDungDichVu (
    maSuDungDichVu INT PRIMARY KEY IDENTITY,
    tenSuDungDichVu NVARCHAR(255),
    maDichVu INT,
    maHocSinh INT,
	maTrungTam INT,
	trangThai NVARCHAR(50),
	ngayBatDau NVARCHAR(20),
	ngayKetThuc NVARCHAR(20),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
	FOREIGN KEY (maDichVu) REFERENCES DichVu(maDichVu),
    FOREIGN KEY (maHocSinh) REFERENCES HocSinh(maHocSinh),
	FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam)
);

CREATE TABLE NhaCungCap (
    maNhaCungCap INT PRIMARY KEY IDENTITY,
    tenNhaCungCap NVARCHAR(255),
    gioiThieu NVARCHAR(1000),
	email NVARCHAR(255),
	soDienThoai NVARCHAR(11),
    nganHang NVARCHAR(255),
    soTaiKhoan NVARCHAR(20),
    maSoThue NVARCHAR(15),
	maTrungTam INT,
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
	FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam)
);

CREATE TABLE SanPham (
    maSanPham INT PRIMARY KEY IDENTITY,
    tenSanPham NVARCHAR(255),
    thongTin NVARCHAR(1000),
	loaiSanPham NVARCHAR(50),
	hanSuDung NVARCHAR(10),
	maNhaCungCap INT,
	maTrungTam INT,
    gia NVARCHAR(15),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
	FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam),
	FOREIGN KEY (maNhaCungCap) REFERENCES NhaCungCap(maNhaCungCap),
);

CREATE TABLE LoSanPham (
    maLoSanPham INT PRIMARY KEY IDENTITY,
    tenLoSanPham NVARCHAR(255),
	trangThai NVARCHAR(50),
	maSanPham INT,
	soLuong NVARCHAR(10),
	donVi NVARCHAR(10),
	ngayNhap NVARCHAR(20),
	ngayHetHan NVARCHAR(20),
	maNhanVien INT,
	maTrungTam INT,
	ghiChu NVARCHAR(255),
	ngayXoa NVARCHAR(20),
	nguoiXoa NVARCHAR(50),
	FOREIGN KEY (maTrungTam) REFERENCES TrungTam(maTrungTam),
	FOREIGN KEY (maNhanVien) REFERENCES NhanVien(maNhanVien),
	FOREIGN KEY (maSanPham) REFERENCES SanPham(maSanPham),
);
ALTER TABLE AspNetUsers
ADD CONSTRAINT FK_AspNetUsers_TrungTam FOREIGN KEY (MaTrungTam) REFERENCES TrungTam(maTrungTam);


