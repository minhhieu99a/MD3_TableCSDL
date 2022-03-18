CREATE Database QuanLyDiemThi;
Use
    QuanLyDiemThi;
CREATE TABLE HocSinh
(
    MaHS     Varchar(20) PRIMARY KEY,
    TenHS    VARCHAR(20),
    NgaySinh DATETIME,
    Lop      VARCHAR(20),
    GT       VARCHAR(20)
);
CREATE TABLE MonHoc
(
    MaMH  VARCHAR(20) PRIMARY KEY,
    TenMH VARCHAR(20)
);
CREATE TABLE BangDiem
(
    MaHS    VARCHAR(20),
    MaMH    VARCHAR(20),
    DiemThi INT,
    NgayKT  DATETIME,
    PRIMARY KEY (MaHS, MaMH),
    FOREIGN KEY (MaHS) REFERENCES HocSinh (MaHS),
    FOREIGN KEY (MaMH) REFERENCES MonHoc (MaMH)
);
CREATE TABLE GiaoVien
(
    MaGV  VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT   VARCHAR(10)
);
ALTER TABLE MonHoc ADD MaGV VARCHAR(20);
ALTER TABLE MonHoc ADD CONSTRAINT FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);
SELECT*FROM GiaoVien;
SELECT *FROM MonHoc;
INSERT INTO MonHoc (`MaMH`,`TenMH`,quanlydiemthi.MonHoc.`MaGV`)values ('TA2','Tiếng Anh 2','KA1');
INSERT INTO GiaoVien(`MaGV`,`TenGV`,`SDT`) values ('KA1','Kiều Anh','29');