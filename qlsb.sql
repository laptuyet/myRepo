USE [master]
GO
/****** Object:  Database [QUANLYSANBONG]    Script Date: 04/08/2022 11:12:34 PM ******/
CREATE DATABASE [QUANLYSANBONG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYSANBONG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANLYSANBONG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYSANBONG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANLYSANBONG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYSANBONG] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYSANBONG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYSANBONG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYSANBONG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYSANBONG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYSANBONG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYSANBONG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYSANBONG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYSANBONG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYSANBONG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYSANBONG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYSANBONG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYSANBONG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYSANBONG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLYSANBONG', N'ON'
GO
ALTER DATABASE [QUANLYSANBONG] SET QUERY_STORE = OFF
GO
USE [QUANLYSANBONG]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 04/08/2022 11:12:34 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Table [dbo].[CHITIET_DICHVU]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_DICHVU](
	[mapt] [varchar](10) NOT NULL,
	[madv] [varchar](10) NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_CHITIET_DICHVU] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC,
	[madv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_PHIEUDAT]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_PHIEUDAT](
	[mapd] [varchar](10) NOT NULL,
	[masan] [varchar](20) NOT NULL,
	[tg_dukienden] [smalldatetime] NULL,
	[tg_dukiendi] [smalldatetime] NULL,
	[tiendatcoc] [money] NULL,
 CONSTRAINT [PK_CHITIET_PHIEUDAT] PRIMARY KEY CLUSTERED 
(
	[mapd] ASC,
	[masan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_PHIEUTHUE]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_PHIEUTHUE](
	[mapt] [varchar](10) NOT NULL,
	[masan] [varchar](20) NOT NULL,
	[gioden] [smalldatetime] NULL,
	[gio_dukientra] [smalldatetime] NULL,
	[giotra] [smalldatetime] NULL,
	[thanhtien] [money] NULL,
	[makhunggio] [varchar](20) NULL,
 CONSTRAINT [PK_CHITIET_PHIEUTHUE] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC,
	[masan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_TRANGTHAISAN]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_TRANGTHAISAN](
	[masan] [varchar](20) NOT NULL,
	[matt] [varchar](10) NOT NULL,
	[ngaygio_bd] [smalldatetime] NOT NULL,
	[ngaygio_kt] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_CHITIET_TRANGTHAISAN] PRIMARY KEY CLUSTERED 
(
	[masan] ASC,
	[matt] ASC,
	[ngaygio_bd] ASC,
	[ngaygio_kt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[madv] [varchar](10) NOT NULL,
	[tendv] [nvarchar](50) NULL,
	[dvt] [nvarchar](20) NULL,
	[dongia] [money] NULL,
	[hinhanh] [text] NULL,
	[hethang] [bit] NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[madv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HESO_THEOGIO]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HESO_THEOGIO](
	[makhunggio] [varchar](20) NOT NULL,
	[tu] [time](0) NULL,
	[den] [time](0) NULL,
	[heso] [float] NULL,
 CONSTRAINT [PK_HESO_THEOGIO] PRIMARY KEY CLUSTERED 
(
	[makhunggio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahd] [varchar](10) NOT NULL,
	[ngaylap] [smalldatetime] NULL,
	[tongtien] [money] NULL,
	[mapt] [varchar](10) NULL,
	[manv] [varchar](10) NULL,
	[makh] [varchar](10) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[makh] [varchar](10) NOT NULL,
	[ho] [nvarchar](50) NOT NULL,
	[ten] [nvarchar](20) NOT NULL,
	[sdt] [varchar](11) NULL,
	[cmnd] [varchar](12) NULL,
	[solan_thuesan] [int] NULL,
	[taikhoan] [varchar](30) NULL,
	[maloaikhach] [varchar](10) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKHACH]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKHACH](
	[maloaikhach] [varchar](10) NOT NULL,
	[mota] [nvarchar](30) NULL,
	[tile_giamgia] [float] NULL,
 CONSTRAINT [PK_LOAIKHACH] PRIMARY KEY CLUSTERED 
(
	[maloaikhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISAN]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISAN](
	[maloaisan] [varchar](20) NOT NULL,
	[tenloaisan] [nvarchar](50) NULL,
	[giatien_motgio] [money] NOT NULL,
 CONSTRAINT [PK_LOAISAN] PRIMARY KEY CLUSTERED 
(
	[maloaisan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [varchar](10) NOT NULL,
	[ho] [nvarchar](50) NOT NULL,
	[ten] [nvarchar](20) NOT NULL,
	[sdt] [varchar](11) NULL,
	[cmnd] [varchar](12) NULL,
	[trangthainghi] [bit] NULL,
	[taikhoan] [varchar](30) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDAT]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDAT](
	[mapd] [varchar](10) NOT NULL,
	[ngaydat] [smalldatetime] NULL,
	[ghichu] [text] NULL,
	[makh] [varchar](10) NULL,
	[manv] [varchar](10) NULL,
	[sdt] [varchar](11) NULL,
 CONSTRAINT [PK_PHIEUDAT] PRIMARY KEY CLUSTERED 
(
	[mapd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUTHUE]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTHUE](
	[mapt] [varchar](10) NOT NULL,
	[ngaythue] [smalldatetime] NULL,
	[ghichu] [text] NULL,
	[makh] [varchar](10) NOT NULL,
	[manv] [varchar](10) NOT NULL,
	[mapd] [varchar](10) NULL,
	[sdt] [varchar](11) NULL,
 CONSTRAINT [PK_PHIEUTHUE] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANBONG]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANBONG](
	[masan] [varchar](20) NOT NULL,
	[tensan] [nvarchar](50) NULL,
	[maloaisan] [varchar](20) NULL,
 CONSTRAINT [PK_SANBONG] PRIMARY KEY CLUSTERED 
(
	[masan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[taikhoan] [varchar](30) NOT NULL,
	[matkhau] [varchar](50) NOT NULL,
	[vaitro] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANGTHAISAN]    Script Date: 04/08/2022 11:12:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAISAN](
	[matt] [varchar](10) NOT NULL,
	[tentt] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TRANGTHAISAN] PRIMARY KEY CLUSTERED 
(
	[matt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIET_DICHVU] ([mapt], [madv], [soluong]) VALUES (N'pt01', N'dv01', 10)
INSERT [dbo].[CHITIET_DICHVU] ([mapt], [madv], [soluong]) VALUES (N'pt01', N'dv02', 5)
GO
INSERT [dbo].[CHITIET_PHIEUDAT] ([mapd], [masan], [tg_dukienden], [tg_dukiendi], [tiendatcoc]) VALUES (N'pd01', N'san5a', CAST(N'2022-04-10T17:00:00' AS SmallDateTime), CAST(N'2022-04-10T18:00:00' AS SmallDateTime), 20000.0000)
INSERT [dbo].[CHITIET_PHIEUDAT] ([mapd], [masan], [tg_dukienden], [tg_dukiendi], [tiendatcoc]) VALUES (N'pd01', N'san7a', CAST(N'2022-04-10T19:00:00' AS SmallDateTime), CAST(N'2022-04-10T21:00:00' AS SmallDateTime), 25000.0000)
INSERT [dbo].[CHITIET_PHIEUDAT] ([mapd], [masan], [tg_dukienden], [tg_dukiendi], [tiendatcoc]) VALUES (N'PD02', N'san11a', CAST(N'2022-04-08T21:55:00' AS SmallDateTime), CAST(N'2022-04-08T22:55:00' AS SmallDateTime), 0.0000)
GO
INSERT [dbo].[CHITIET_PHIEUTHUE] ([mapt], [masan], [gioden], [gio_dukientra], [giotra], [thanhtien], [makhunggio]) VALUES (N'pt01', N'san11a', CAST(N'2022-03-19T17:27:00' AS SmallDateTime), CAST(N'2022-03-19T21:27:00' AS SmallDateTime), CAST(N'2022-03-19T21:27:00' AS SmallDateTime), 440000.0000, N'kgchieu')
INSERT [dbo].[CHITIET_PHIEUTHUE] ([mapt], [masan], [gioden], [gio_dukientra], [giotra], [thanhtien], [makhunggio]) VALUES (N'pt01', N'san11b', CAST(N'2022-03-19T17:27:00' AS SmallDateTime), CAST(N'2022-03-19T19:27:00' AS SmallDateTime), CAST(N'2022-03-19T19:27:00' AS SmallDateTime), 220000.0000, N'kgchieu')
GO
INSERT [dbo].[CHITIET_TRANGTHAISAN] ([masan], [matt], [ngaygio_bd], [ngaygio_kt]) VALUES (N'san11a', N'tt02', CAST(N'2022-04-08T21:55:00' AS SmallDateTime), CAST(N'2022-04-08T22:55:00' AS SmallDateTime))
INSERT [dbo].[CHITIET_TRANGTHAISAN] ([masan], [matt], [ngaygio_bd], [ngaygio_kt]) VALUES (N'san11a', N'tt04', CAST(N'2022-03-19T17:27:00' AS SmallDateTime), CAST(N'2022-03-19T21:27:00' AS SmallDateTime))
INSERT [dbo].[CHITIET_TRANGTHAISAN] ([masan], [matt], [ngaygio_bd], [ngaygio_kt]) VALUES (N'san11b', N'tt04', CAST(N'2022-03-19T17:27:00' AS SmallDateTime), CAST(N'2022-03-19T19:27:00' AS SmallDateTime))
INSERT [dbo].[CHITIET_TRANGTHAISAN] ([masan], [matt], [ngaygio_bd], [ngaygio_kt]) VALUES (N'san5a', N'tt02', CAST(N'2022-04-10T17:00:00' AS SmallDateTime), CAST(N'2022-04-10T18:00:00' AS SmallDateTime))
INSERT [dbo].[CHITIET_TRANGTHAISAN] ([masan], [matt], [ngaygio_bd], [ngaygio_kt]) VALUES (N'san7a', N'tt02', CAST(N'2022-04-10T19:00:00' AS SmallDateTime), CAST(N'2022-04-10T21:00:00' AS SmallDateTime))
GO
INSERT [dbo].[DICHVU] ([madv], [tendv], [dvt], [dongia], [hinhanh], [hethang]) VALUES (N'dv01', N'Pepsi', N'lon', 15000.0000, N'D:\Learn Java\QUANLYSANBONG\src\quanlysanbong\images\foods\pepsi.png', 0)
INSERT [dbo].[DICHVU] ([madv], [tendv], [dvt], [dongia], [hinhanh], [hethang]) VALUES (N'dv02', N'Coca Cola', N'lon', 15000.0000, N'D:\Learn Java\QUANLYSANBONG\src\quanlysanbong\images\foods\coca-cola.jpg', 0)
INSERT [dbo].[DICHVU] ([madv], [tendv], [dvt], [dongia], [hinhanh], [hethang]) VALUES (N'dv03', N'Khăn Lạnh', N'cái', 3000.0000, N'D:\Learn Java\QUANLYSANBONG\src\quanlysanbong\images\foods\khan-lanh.jpg', 0)
INSERT [dbo].[DICHVU] ([madv], [tendv], [dvt], [dongia], [hinhanh], [hethang]) VALUES (N'dv04', N'Bánh Mì Sandwich', N'cái', 18000.0000, N'D:\Learn Java\QUANLYSANBONG\src\quanlysanbong\images\foods\sandwich.png', 0)
INSERT [dbo].[DICHVU] ([madv], [tendv], [dvt], [dongia], [hinhanh], [hethang]) VALUES (N'dv05', N'Nước Lọc', N'chai', 8000.0000, N'D:\Learn Java\QUANLYSANBONG\src\quanlysanbong\images\foods\aquafina.png', 0)
GO
INSERT [dbo].[HESO_THEOGIO] ([makhunggio], [tu], [den], [heso]) VALUES (N'kgchieu', CAST(N'13:00:00' AS Time), CAST(N'17:59:00' AS Time), 1.2000000476837158)
INSERT [dbo].[HESO_THEOGIO] ([makhunggio], [tu], [den], [heso]) VALUES (N'kgsang', CAST(N'06:00:00' AS Time), CAST(N'10:00:00' AS Time), 1)
INSERT [dbo].[HESO_THEOGIO] ([makhunggio], [tu], [den], [heso]) VALUES (N'kgtoi', CAST(N'18:00:00' AS Time), CAST(N'23:59:00' AS Time), 1.5)
GO
INSERT [dbo].[HOADON] ([mahd], [ngaylap], [tongtien], [mapt], [manv], [makh]) VALUES (N'HD01', CAST(N'2022-04-07T00:04:00' AS SmallDateTime), 966150.0291, N'pt01', N'nv02', N'kh02')
GO
INSERT [dbo].[KHACHHANG] ([makh], [ho], [ten], [sdt], [cmnd], [solan_thuesan], [taikhoan], [maloaikhach]) VALUES (N'kh01', N'Nguyễn Tuấn', N'Hiệp', N'0123456789', N'123123456456', 15, N'hiep', N'gold')
INSERT [dbo].[KHACHHANG] ([makh], [ho], [ten], [sdt], [cmnd], [solan_thuesan], [taikhoan], [maloaikhach]) VALUES (N'kh02', N'Trần Minh', N'Long', N'0123456789', N'132123456456', 5, N'long', N'silver')
INSERT [dbo].[KHACHHANG] ([makh], [ho], [ten], [sdt], [cmnd], [solan_thuesan], [taikhoan], [maloaikhach]) VALUES (N'khvanglai', N'a', N'A', N'0000000000', N'000000000000', 0, N'vodanh', N'normal')
GO
INSERT [dbo].[LOAIKHACH] ([maloaikhach], [mota], [tile_giamgia]) VALUES (N'diamond', N'DIAMOND', 0.15)
INSERT [dbo].[LOAIKHACH] ([maloaikhach], [mota], [tile_giamgia]) VALUES (N'gold', N'GOLD', 0.1)
INSERT [dbo].[LOAIKHACH] ([maloaikhach], [mota], [tile_giamgia]) VALUES (N'normal', N'NORMAL', 0)
INSERT [dbo].[LOAIKHACH] ([maloaikhach], [mota], [tile_giamgia]) VALUES (N'silver', N'SILVER', 0.05)
GO
INSERT [dbo].[LOAISAN] ([maloaisan], [tenloaisan], [giatien_motgio]) VALUES (N'loaisan11', N'Sân 11 người', 110000.0000)
INSERT [dbo].[LOAISAN] ([maloaisan], [tenloaisan], [giatien_motgio]) VALUES (N'loaisan5', N'Sân 5 người', 50000.0000)
INSERT [dbo].[LOAISAN] ([maloaisan], [tenloaisan], [giatien_motgio]) VALUES (N'loaisan7', N'Sân 7 người', 70000.0000)
GO
INSERT [dbo].[NHANVIEN] ([manv], [ho], [ten], [sdt], [cmnd], [trangthainghi], [taikhoan]) VALUES (N'nv01', N'Trần Hoàng', N'Phi', N'0914683078', N'123123456456', 0, N'admin')
INSERT [dbo].[NHANVIEN] ([manv], [ho], [ten], [sdt], [cmnd], [trangthainghi], [taikhoan]) VALUES (N'nv02', N'Nguyễn', N'Hưng', N'0123456789', N'123123456456', 0, N'hung')
INSERT [dbo].[NHANVIEN] ([manv], [ho], [ten], [sdt], [cmnd], [trangthainghi], [taikhoan]) VALUES (N'nv03', N'Uzumaki', N'Naruto', N'0987654321', N'123123456456', 0, N'naruto')
GO
INSERT [dbo].[PHIEUDAT] ([mapd], [ngaydat], [ghichu], [makh], [manv], [sdt]) VALUES (N'pd01', CAST(N'2022-04-04T15:32:00' AS SmallDateTime), N'test', N'kh02', N'nv01', N'0123456789')
INSERT [dbo].[PHIEUDAT] ([mapd], [ngaydat], [ghichu], [makh], [manv], [sdt]) VALUES (N'PD02', CAST(N'2022-04-08T21:55:00' AS SmallDateTime), N'test', N'kh02', N'nv01', N'0123456789')
GO
INSERT [dbo].[PHIEUTHUE] ([mapt], [ngaythue], [ghichu], [makh], [manv], [mapd], [sdt]) VALUES (N'pt01', CAST(N'2022-03-19T17:27:00' AS SmallDateTime), N'', N'kh02', N'nv02', NULL, N'0987361935')
GO
INSERT [dbo].[SANBONG] ([masan], [tensan], [maloaisan]) VALUES (N'san11a', N'Sân 11 người A', N'loaisan11')
INSERT [dbo].[SANBONG] ([masan], [tensan], [maloaisan]) VALUES (N'san11b', N'Sân 11 người B', N'loaisan11')
INSERT [dbo].[SANBONG] ([masan], [tensan], [maloaisan]) VALUES (N'san5a', N'Sân 5 người A', N'loaisan5')
INSERT [dbo].[SANBONG] ([masan], [tensan], [maloaisan]) VALUES (N'san5b', N'Sân 5 người B', N'loaisan5')
INSERT [dbo].[SANBONG] ([masan], [tensan], [maloaisan]) VALUES (N'san7a', N'Sân 7 người A', N'loaisan7')
INSERT [dbo].[SANBONG] ([masan], [tensan], [maloaisan]) VALUES (N'san7b', N'Sân 7 người B', N'loaisan7')
GO
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'admin', N'123', N'admin')
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'hiep', N'123', N'khach')
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'hung', N'123', N'nhanvien')
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'long', N'123', N'khach')
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'naruto', N'123', N'nhanvien')
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'tuan', N'123', N'nhanvien')
INSERT [dbo].[TAIKHOAN] ([taikhoan], [matkhau], [vaitro]) VALUES (N'vodanh', N'123', N'khach')
GO
INSERT [dbo].[TRANGTHAISAN] ([matt], [tentt]) VALUES (N'tt01', N'Trống')
INSERT [dbo].[TRANGTHAISAN] ([matt], [tentt]) VALUES (N'tt02', N'Đã đặt trước')
INSERT [dbo].[TRANGTHAISAN] ([matt], [tentt]) VALUES (N'tt03', N'Bảo trì')
INSERT [dbo].[TRANGTHAISAN] ([matt], [tentt]) VALUES (N'tt04', N'Đang thuê')
GO
ALTER TABLE [dbo].[DICHVU] ADD  CONSTRAINT [DF_DICHVU_hethang]  DEFAULT ((0)) FOR [hethang]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_KHACHHANG_solan_thuesan]  DEFAULT ((0)) FOR [solan_thuesan]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [DF_NHANVIEN_trangthainghi]  DEFAULT ((0)) FOR [trangthainghi]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [DF_TAIKHOAN_matkhau]  DEFAULT ((123)) FOR [matkhau]
GO
ALTER TABLE [dbo].[CHITIET_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_DICHVU_DICHVU] FOREIGN KEY([madv])
REFERENCES [dbo].[DICHVU] ([madv])
GO
ALTER TABLE [dbo].[CHITIET_DICHVU] CHECK CONSTRAINT [FK_CHITIET_DICHVU_DICHVU]
GO
ALTER TABLE [dbo].[CHITIET_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_DICHVU_PHIEUTHUE] FOREIGN KEY([mapt])
REFERENCES [dbo].[PHIEUTHUE] ([mapt])
GO
ALTER TABLE [dbo].[CHITIET_DICHVU] CHECK CONSTRAINT [FK_CHITIET_DICHVU_PHIEUTHUE]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDAT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDAT_PHIEUDAT] FOREIGN KEY([mapd])
REFERENCES [dbo].[PHIEUDAT] ([mapd])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDAT] CHECK CONSTRAINT [FK_CHITIET_PHIEUDAT_PHIEUDAT]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDAT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUDAT_SANBONG] FOREIGN KEY([masan])
REFERENCES [dbo].[SANBONG] ([masan])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUDAT] CHECK CONSTRAINT [FK_CHITIET_PHIEUDAT_SANBONG]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUTHUE]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUTHUE_HESO_THEOGIO] FOREIGN KEY([makhunggio])
REFERENCES [dbo].[HESO_THEOGIO] ([makhunggio])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUTHUE] CHECK CONSTRAINT [FK_CHITIET_PHIEUTHUE_HESO_THEOGIO]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUTHUE]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUTHUE_PHIEUTHUE] FOREIGN KEY([mapt])
REFERENCES [dbo].[PHIEUTHUE] ([mapt])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CHITIET_PHIEUTHUE] CHECK CONSTRAINT [FK_CHITIET_PHIEUTHUE_PHIEUTHUE]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUTHUE]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PHIEUTHUE_SANBONG] FOREIGN KEY([masan])
REFERENCES [dbo].[SANBONG] ([masan])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUTHUE] CHECK CONSTRAINT [FK_CHITIET_PHIEUTHUE_SANBONG]
GO
ALTER TABLE [dbo].[CHITIET_TRANGTHAISAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_TRANGTHAISAN_SANBONG] FOREIGN KEY([masan])
REFERENCES [dbo].[SANBONG] ([masan])
GO
ALTER TABLE [dbo].[CHITIET_TRANGTHAISAN] CHECK CONSTRAINT [FK_CHITIET_TRANGTHAISAN_SANBONG]
GO
ALTER TABLE [dbo].[CHITIET_TRANGTHAISAN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_TRANGTHAISAN_TRANGTHAISAN] FOREIGN KEY([matt])
REFERENCES [dbo].[TRANGTHAISAN] ([matt])
GO
ALTER TABLE [dbo].[CHITIET_TRANGTHAISAN] CHECK CONSTRAINT [FK_CHITIET_TRANGTHAISAN_TRANGTHAISAN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_PHIEUTHUE] FOREIGN KEY([mapt])
REFERENCES [dbo].[PHIEUTHUE] ([mapt])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_PHIEUTHUE]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_LOAIKHACH] FOREIGN KEY([maloaikhach])
REFERENCES [dbo].[LOAIKHACH] ([maloaikhach])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_LOAIKHACH]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_TAIKHOAN] FOREIGN KEY([taikhoan])
REFERENCES [dbo].[TAIKHOAN] ([taikhoan])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([taikhoan])
REFERENCES [dbo].[TAIKHOAN] ([taikhoan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHIEUDAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDAT_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[PHIEUDAT] CHECK CONSTRAINT [FK_PHIEUDAT_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUDAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDAT_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[PHIEUDAT] CHECK CONSTRAINT [FK_PHIEUDAT_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUTHUE]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTHUE_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[PHIEUTHUE] CHECK CONSTRAINT [FK_PHIEUTHUE_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUTHUE]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTHUE_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[PHIEUTHUE] CHECK CONSTRAINT [FK_PHIEUTHUE_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUTHUE]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTHUE_PHIEUDAT] FOREIGN KEY([mapd])
REFERENCES [dbo].[PHIEUDAT] ([mapd])
GO
ALTER TABLE [dbo].[PHIEUTHUE] CHECK CONSTRAINT [FK_PHIEUTHUE_PHIEUDAT]
GO
ALTER TABLE [dbo].[SANBONG]  WITH CHECK ADD  CONSTRAINT [FK_SANBONG_LOAISAN] FOREIGN KEY([maloaisan])
REFERENCES [dbo].[LOAISAN] ([maloaisan])
GO
ALTER TABLE [dbo].[SANBONG] CHECK CONSTRAINT [FK_SANBONG_LOAISAN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [CK_VAITRO] CHECK  (([vaitro]='khach' OR [vaitro]='nhanvien' OR [vaitro]='admin'))
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [CK_VAITRO]
GO
USE [master]
GO
ALTER DATABASE [QUANLYSANBONG] SET  READ_WRITE 
GO
