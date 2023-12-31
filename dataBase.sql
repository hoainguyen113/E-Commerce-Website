USE [master]
GO
/****** Object:  Database [H2MAK]    Script Date: 10/5/2023 8:24:23 AM ******/
CREATE DATABASE [H2MAK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'H2MAK', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\H2MAK.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'H2MAK_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\H2MAK_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [H2MAK] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [H2MAK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [H2MAK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [H2MAK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [H2MAK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [H2MAK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [H2MAK] SET ARITHABORT OFF 
GO
ALTER DATABASE [H2MAK] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [H2MAK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [H2MAK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [H2MAK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [H2MAK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [H2MAK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [H2MAK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [H2MAK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [H2MAK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [H2MAK] SET  ENABLE_BROKER 
GO
ALTER DATABASE [H2MAK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [H2MAK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [H2MAK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [H2MAK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [H2MAK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [H2MAK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [H2MAK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [H2MAK] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [H2MAK] SET  MULTI_USER 
GO
ALTER DATABASE [H2MAK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [H2MAK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [H2MAK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [H2MAK] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [H2MAK] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [H2MAK] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [H2MAK] SET QUERY_STORE = OFF
GO
USE [H2MAK]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/5/2023 8:24:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/5/2023 8:24:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] NOT NULL,
	[categoryName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/5/2023 8:24:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [varchar](50) NOT NULL,
	[productName] [nvarchar](100) NULL,
	[oldPrice] [float] NULL,
	[newPrice] [float] NULL,
	[image01] [nvarchar](100) NULL,
	[image02] [nvarchar](100) NULL,
	[image03] [nvarchar](100) NULL,
	[image04] [nvarchar](100) NULL,
	[available] [int] NULL,
	[sold] [int] NULL,
	[cid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [email]) VALUES (N'admin01', N'202cb962ac59075b964b07152d234b70', N'admin01@gmail.com')
INSERT [dbo].[Account] ([username], [password], [email]) VALUES (N'hoai', N'202cb962ac59075b964b07152d234b70', N'nguyenvanhoai787@gmail.com')
INSERT [dbo].[Account] ([username], [password], [email]) VALUES (N'thayHoai', N'e10adc3949ba59abbe56e057f20f883e', N'thayHoaidepDzai@gmail.com')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (1, N'Apple')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (2, N'Samsung')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (3, N'Oppo')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (4, N'xiaomi')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (5, N'Vivo')
GO
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A001', N'iPhone 14 Pro Max', 1700, 1360, N'images/rsz_1iphone14pro.jpg', N'images/frontip.jpg', N'images/backiP.jpg', N'images/zoomiP.jpg', 32, 15, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A0012', N'iPhone 12 Pro Max', 1100, 900, N'images/iphone12.jpg', N'', N'', N'', 55, 23, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A002', N'iPhone 12 Pro Max', 1100, 1000, N'images/iphone12.jpg', N'', N'', N'', 50, 23, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A003', N'iPhone 13 Pro Max', 1300, 1100, N'images/rsz_1iphone14pro.jpg', N'', N'', N'', 100, 37, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A004', N'iPhone 14 Pro Max', 1700, 1200, N'images/iphone14plus.jpg', N'', N'', N'', 50, 23, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A005', N'iPhone 11 Pro Max', 1700, 1500, N'images/iphone11.jpg', N'', N'', N'', 64, 25, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A006', N'iPhone X Pro Max', 1400, 1000, N'images/iphone13.jpg', N'', N'', N'', 70, 27, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A007', N'iPhone 13 Pro Max', 1100, 1000, N'images/iphone11.jpg', N'', N'', N'', 50, 23, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A008', N'iPhone 9 Pro Max', 1300, 1100, N'images/iphone14plus.jpg', N'', N'', N'', 100, 37, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A009', N'iPhone 8 Pro Max', 1700, 1200, N'images/rsz_1iphone14pro.jpg', N'', N'', N'', 50, 23, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A010', N'iPhone 7 Pro Max', 1700, 1500, N'images/iphone12.jpg', N'', N'', N'', 64, 25, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A011', N'iPhone X Pro Max', 1400, 1000, N'images/iphone13.jpg', N'', N'', N'', 70, 27, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A013', N'iPhone 13 Pro Max', 1100, 1000, N'images/iphone11.jpg', N'', N'', N'', 50, 23, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'A014', N'iPhone 9 Pro Max', 1300, 1100, N'images/iphone14plus.jpg', N'', N'', N'', 99, 37, 1)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O001', N'Oppo A17 4G 8GB', 169, 129, N'images\Oppo\1_OppoA17_1.webp', N'images\Oppo\1_OppoA17_2.jpg', N'images\Oppo\1_OppoA17_3.jpg', N'images\Oppo\1_OppoA17_4.jpg', 32, 28, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O002', N'Oppo A17K 4G 8GB', 139, 129, N'images\Oppo\2_OppoA17K_1.webp', N'images\Oppo\2_OppoA17K_2.jpg', N'images\Oppo\2_OppoA17K_3.jpg', N'images\Oppo\2_OppoA17K_4.jpg', 100, 36, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O003', N'Oppo A55 4G 8GB', 159, 149, N'images\Oppo\3_OppoA55_1.webp', N'images\Oppo\3_OppoA55_2.jpg', N'images\Oppo\3_OppoA55_3.jpg', N'images\Oppo\3_OppoA55_4.jpg', 72, 27, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O004', N'Oppo A57 4G 8GB', 159, 139, N'images\Oppo\4_OppoA57_1.webp', N'images\Oppo\4_OppoA57_2.jpg', N'images\Oppo\4_OppoA57_3.jpg', N'images\Oppo\4_OppoA57_4.jpg', 58, 17, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O005', N'Oppo A77s 4G 8GB', 269, 229, N'images\Oppo\5_OppoA77s_1.webp', N'images\Oppo\5_OppoA77s_2.jpg', N'images\Oppo\5_OppoA77s_3.jpg', N'images\Oppo\5_OppoA77s_4.jpg', 12, 3, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O006', N'Oppo A96 4G 8GB', 299, 259, N'images\Oppo\6_OppoA96_1.jpg', N'images\Oppo\6_OppoA96_2.jpg', N'images\Oppo\6_OppoA96_3.jpg', N'images\Oppo\6_OppoA96_4.jpeg', 20, 8, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O007', N'Oppo A98 5G 16GB', 379, 359, N'images\Oppo\7_OppoA98_5G_1.jpg', N'images\Oppo\7_OppoA98_5G_2.jpg', N'images\Oppo\7_OppoA98_5G_3.jpg', N'images\Oppo\7_OppoA98_5G_4.jpg', 2, 0, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O008', N'Oppo Reno8 Pro 5G', 799, 549, N'images\Oppo\8_Reno8Pro5G_1.webp', N'images\Oppo\8_Reno8Pro5G_2.jpg', N'images\Oppo\8_Reno8Pro5G_3.jpg', N'images\Oppo\8_Reno8Pro5G_4.jpg', 30, 10, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O009', N'Oppo Reno8 5G 128GB', 669, 599, N'images\Oppo\9_OppoReno8_5G_1.webp', N'images\Oppo\9_OppoReno8_5G_2.jpg', N'images\Oppo\9_OppoReno8_5G_3.jpg', N'images\Oppo\9_OppoReno8_5G_4.jpg', 22, 7, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O010', N'Oppo Reno8 T 5G', 419, 399, N'images\Oppo\10_OppoReno8T5G_1.webp', N'images\Oppo\10_OppoReno8T5G_2.jpg', N'images\Oppo\10_OppoReno8T5G_3.jpg', N'images\Oppo\10_OppoReno8T5G_4.jpg', 40, 21, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O011', N'Oppo Find N2 Flip', 839, 789, N'images\Oppo\11_FindN2Flip_1.webp', N'images\Oppo\11_FindN2Flip_2.jpg', N'images\Oppo\11_FindN2Flip_3.jpg', N'images\Oppo\11_FindN2Flip_4.jpg', 10, 2, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O012', N'Oppo Find X5 Pro', 1399, 1099, N'images\Oppo\12_FindX5Pro_1.webp', N'images\Oppo\12_FindX5Pro_2.jpg', N'images\Oppo\12_FindX5Pro_3.jpg', N'images\Oppo\12_FindX5Pro_4.jpg', 5, 1, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O013', N'Oppo Pad Air 64GB', 279, 229, N'images\Oppo\13_PadAir64GB_1.webp', N'images\Oppo\13_PadAir64GB_2.jpg', N'images\Oppo\13_PadAir64GB_3.jpg', N'images\Oppo\13_PadAir64GB_4.jpg', 20, 2, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'O014', N'Oppo Pad Air 128GB', 349, 329, N'images\Oppo\14_PadAir128GB_1.webp', N'images\Oppo\14_PadAir128GB_2.jpg', N'images\Oppo\14_PadAir128GB_3.jpg', N'images\Oppo\14_PadAir128GB_4.jpg', 10, 1, 3)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S001', N'Galaxy S22 5G 128GB', 1313.97, 762.77, N'images/1_samsunggalaxys22_1.png', N'images/1_samsunggalaxys22_2.png', N'images/1_samsunggalaxys22_3.png', N'images/1_samsunggalaxys22_4.png', 4, 9, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S002', N'Galaxy A04s Pro Max', 169.18, 147.98, N'images/2_galaxya04s_1.png', N'images/2_galaxya04s_2.png', N'images/2_galaxya04s_3.png', N'images/2_galaxya04s_4.png', 2, 2, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S003', N'Galaxy S23 Plus 8GB 512GB', 1271.57, 1144.37, N'images/3_samsunggalaxys23_1.png', N'images/3_samsunggalaxys23_2.png', N'images/3_samsunggalaxys23_3.png', N'images/3_samsunggalaxys23_4.png', 8, 1, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S004', N'Galaxy S23 8GB 256GB', 1059.57, 868.77, N'images/4_samsunggalaxys23_1.png', N'images/4_samsunggalaxys23_2.png', N'images/4_samsunggalaxys23_3.png', N'images/4_samsunggalaxys23_4.png', 7, 3, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S005', N'Samsung Galaxy Z Fold4', 1737.97, 1525.97, N'images/5_samsunggalaxyzfold4_1.png', N'images/5_samsunggalaxyzfold4_2.png', N'images/5_samsunggalaxyzfold4_3.png', N'images/5_samsunggalaxyzfold4_4.png', 9, 0, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S006', N'Samsung Galaxy Z Flip4 128GB', 1017.17, 677.97, N'images/6_samsunggalaxyzflip4_1.png', N'images/6_samsunggalaxyzflip4_2.png', N'images/6_samsunggalaxyzflip4_3.png', N'images/6_samsunggalaxyzflip4_4.png', 3, 5, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S007', N'Galaxy S20 FE 256GB', 529.57, 317.58, N'images/7_samsunggalaxys20_1.png', N'images/7_samsunggalaxys20_1.png', N'images/7_samsunggalaxys20_1.png', N'images/7_samsunggalaxys20_1.png', 6, 4, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S008', N'Galaxy A34 5G 8GB 128GB', 359.98, 317.58, N'images/8_galaxya34_1.png', N'images/8_galaxya34_2.png', N'images/8_galaxya34_3.png', N'images/8_galaxya34_4.png', 7, 0, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S009', N'Samsung Galaxy Z Fold4 512GB', 1886.37, 1305.49, N'images/9_samsunggalaxyzfold_1.png', N'images/9_samsunggalaxyzfold_2.png', N'images/9_samsunggalaxyzfold_3.png', N'images/9_samsunggalaxyzfold_4.png', 5, 2, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S010', N'Galaxy A53 5G New Lite', 423.58, 296.38, N'images/10_galaxya53_1.png', N'images/10_galaxya53_2.png', N'images/10_galaxya53_3.png', N'images/10_galaxya53_4.png', 3, 0, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S011', N'Galaxy M14 5G 4GB 128GB', 224.3, 169.18, N'images/11_galaxym14_1.png', N'images/11_galaxym14_2.png', N'images/11_galaxym14_3.png', N'images/11_galaxym14_4.png', 1, 2, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S012', N'Galaxy S23 8GB 256GB', 1059.57, 741.57, N'images/12_samsunggalaxys23_1.png', N'images/12_samsunggalaxys23_2.png', N'images/12_samsunggalaxys23_3.png', N'images/12_samsunggalaxys23_4.png', 6, 4, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S013', N'Galaxy A14 5G Pro Max', 220.06, 198.86, N'images/13_samsunggalaxya14_1.png', N'images/13_samsunggalaxya14_2.png', N'images/13_samsunggalaxya14_3.png', N'images/13_samsunggalaxya14_4.png', 3, 0, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'S014', N'Galaxy A54 5G 8GB 128GB', 444.77, 402.38, N'images/14_samsunggalaxya54_1.png', N'images/14_samsunggalaxya54_2.png', N'images/14_samsunggalaxya54_3.png', N'images/14_samsunggalaxya54_4.png', 4, 0, 2)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V001', N'Vivo T1 5G', 349, 319, N'images\Vivo\1_Vivo T1 5G_1.png', N'images\Vivo\1_Vivo T1 5G_2.png', N'images\Vivo\1_Vivo T1 5G_3.png', N'images\Vivo\1_Vivo T1 5G_4.png', 32, 4, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V002', N'Vivo T1X 5G', 199, 169, N'images\Vivo\2_Vivo T1X_1.png', N'images\Vivo\2_Vivo T1X_2.png', N'images\Vivo\2_Vivo T1X_3.png', N'images\Vivo\2_Vivo T1X_4.png', 34, 10, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V003', N'Vivo V23e 5G', 369, 299, N'images\Vivo\3_Vivo V23e_1.png', N'images\Vivo\3_Vivo V23e_2.png', N'images\Vivo\3_Vivo V23e_3.png', N'images\Vivo\3_Vivo V23e_4.png', 42, 21, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V004', N'Vivo V25 5G', 459, 369, N'images\Vivo\4_Vivo V25 5G_1.png', N'images\Vivo\4_Vivo V25 5G_2.png', N'images\Vivo\4_Vivo V25 5G_3.png', N'images\Vivo\4_Vivo V25 5G_4.png', 38, 17, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V005', N'Vivo V25 Pro', 599, 439, N'images\Vivo\5_Vivo V25 Pro_1.png', N'images\Vivo\5_Vivo V25 Pro_2.png', N'images\Vivo\5_Vivo V25 Pro_3.png', N'images\Vivo\5_Vivo V25 Pro_4.png', 23, 12, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V006', N'Vivo V25e 5G', 369, 339, N'images\Vivo\6_Vivo V25e_1.png', N'images\Vivo\6_Vivo V25e_2.png', N'images\Vivo\6_Vivo V25e_3.png', N'images\Vivo\6_Vivo V25e_4.png', 23, 4, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V007', N'Vivo X80 5G', 869, 699, N'images\Vivo\7_Vivo X80_1.png', N'images\Vivo\7_Vivo X80_2.png', N'images\Vivo\7_Vivo X80_3.png', N'images\Vivo\7_Vivo X80_4.png', 12, 4, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V008', N'Vivo X80 Pro', 1299, 799, N'images\Vivo\8_Vivo X80 Pro_1.png', N'images\Vivo\8_Vivo X80 Pro_2.png', N'images\Vivo\8_Vivo X80 Pro_3.png', N'images\Vivo\8_Vivo X80 Pro_4.png', 30, 10, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V009', N'Vivo Y02 5G', 199, 119, N'images\Vivo\9_Vivo Y02_1.png', N'images\Vivo\9_Vivo Y02_2.png', N'images\Vivo\9_Vivo Y02_3.png', N'images\Vivo\9_Vivo Y02_4.png', 22, 7, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V010', N'Vivo Y02A 5G', 199, 115, N'images\Vivo\10_Vivo Y02A_1.png', N'images\VivoA\10_Vivo Y02A_2.png', N'images\VivoA\10_Vivo Y02A_3.png', N'images\VivoA\10_Vivo Y02A_4.png', 30, 21, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V011', N'Vivo Y02s 5G', 149, 139, N'images\Vivo\11_Vivo Y02s_1.png', N'images\Vivos\11_Vivo Y02s_2.png', N'images\Vivos\11_Vivo Y02s_3.png', N'images\Vivos\11_Vivo Y02s_4.png', 32, 21, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V012', N'Vivo Y16 5G', 199, 179, N'images\Vivo\12_Vivo Y16_1.png', N'images\Vivo\12_Vivo Y16_2.png', N'images\Vivo\12_Vivo Y16_3.png', N'images\Vivo\12_Vivo Y16_4.png', 23, 11, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V013', N'Vivo Y22S 5G', 229, 189, N'images\Vivo\13_Vivo Y22S_1.png', N'images\Vivo\13_Vivo Y22S_2.png', N'images\Vivo\13_Vivo Y22S_3.png', N'images\Vivo\13_Vivo Y22S_4.png', 20, 5, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'V014', N'Vivo Y35 5G', 299, 259, N'images\Vivo\14_Vivo Y35_1.png', N'images\Vivo\14_Vivo Y35_2.png', N'images\Vivo\14_Vivo Y35_3.png', N'images\Vivo\14_Vivo Y35_4.png', 14, 12, 5)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X001', N'Xiaomi Redmi Note 12', 415, 300, N'images/Xiaomi/1_Xiaomi Redmi Note 12_1.png', N'images/Xiaomi/1_Xiaomi Redmi Note 12_2.webp', N'images/Xiaomi/1_Xiaomi Redmi Note 12_3.webp', N'images/Xiaomi/1_Xiaomi Redmi Note 12_4.webp', 40, 96, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X002', N'Xiaomi Redmi Note 12 Pro 5G', 949, 879, N'images/Xiaomi/2_Xiaomi Redmi Note 12 Pro 5G_1.png', N'images/Xiaomi/2_Xiaomi Redmi Note 12 Pro 5G_2.webp', N'images/Xiaomi/2_Xiaomi Redmi Note 12 Pro 5G_3.webp', N'images/Xiaomi/2_Xiaomi Redmi Note 12 Pro 5G_4.webp', 90, 122, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X003', N'Xiaomi 12T 8GB 128GB', 1249, 969, N'images/Xiaomi/3_Xiaomi 12T 8GB 128GB_1.png', N'images/Xiaomi/3_Xiaomi 12T 8GB 128GB_2.webp', N'images/Xiaomi/3_Xiaomi 12T 8GB 128GB_3.webp', N'images/Xiaomi/3_Xiaomi 12T 8GB 128GB_4.webp', 111, 32, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X004', N'Xiaomi 13 Lite Pro Max', 1149, 969, N'images/Xiaomi/4_Xiaomi 13 Lite_1.png', N'images/Xiaomi/4_Xiaomi 13 Lite_2.webp', N'images/Xiaomi/4_Xiaomi 13 Lite_3.webp', N'images/Xiaomi/4_Xiaomi 13 Lite_4.webp', 121, 42, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X005', N'Xiaomi 13 Pro 12GB 256GB', 1249, 969, N'images/Xiaomi/5_Xiaomi 13 Pro 12GB 256GB_1.png', N'images/Xiaomi/5_Xiaomi 13 Pro 12GB 256GB_2.webp', N'images/Xiaomi/5_Xiaomi 13 Pro 12GB 256GB_3.webp', N'images/Xiaomi/5_Xiaomi 13 Pro 12GB 256GB_4.webp', 120, 220, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X006', N'Xiaomi 13 8GB 256GB', 2299, 1849, N'images/Xiaomi/6_Xiaomi 13 8GB 256GB_1.png', N'images/Xiaomi/6_Xiaomi 13 8GB 256GB_2.webp', N'images/Xiaomi/6_Xiaomi 13 8GB 256GB_3.webp', N'images/Xiaomi/6_Xiaomi 13 8GB 256GB_4.webp', 111, 32, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X007', N'Xiaomi Redmi 12C 4GB 64GB', 359, 275, N'images/Xiaomi/7_Xiaomi Redmi 12C 4GB 64GB_1.png', N'images/Xiaomi/7_Xiaomi Redmi 12C 4GB 64GB_2.webp', N'images/Xiaomi/7_Xiaomi Redmi 12C 4GB 64GB_3.webp', N'images/Xiaomi/7_Xiaomi Redmi 12C 4GB 64GB_4.webp', 62, 32, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X008', N'Xiaomi Redmi Note 11 Pro 5G', 899, 699, N'images/Xiaomi/8_Xiaomi Redmi Note 11 Pro 5G_1.png', N'images/Xiaomi/8_Xiaomi Redmi Note 11 Pro 5G_2.webp', N'images/Xiaomi/8_Xiaomi Redmi Note 11 Pro 5G_3.webp', N'images/Xiaomi/8_Xiaomi Redmi Note 11 Pro 5G_1.webp', 122, 92, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X009', N'Xiaomi Redmi Note 11 Pro Plus 5G', 999, 899, N'images/Xiaomi/9_Xiaomi Redmi Note 11 Pro Plus 5G_1.png', N'images/Xiaomi/9_Xiaomi Redmi Note 11 Pro Plus 5G_2.webp', N'images/Xiaomi/9_Xiaomi Redmi Note 11 Pro Plus 5G_3.webp', N'images/Xiaomi/9_Xiaomi Redmi Note 11 Pro Plus 5G_4.webp', 161, 132, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X010', N'Xiaomi POCO X5 Pro 8GB 256GB', 869, 739, N'images/Xiaomi/10_Xiaomi POCO X5 Pro 8GB 256GB_1.png', N'images/Xiaomi/10_Xiaomi POCO X5 Pro 8GB 256GB_2.webp', N'images/Xiaomi/10_Xiaomi POCO X5 Pro 8GB 256GB_3.webp', N'images/Xiaomi/10_Xiaomi POCO X5 Pro 8GB 256GB_4.webp', 121, 232, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X011', N'Xiaomi Poco F4 8GB 256GB', 899, 779, N'images/Xiaomi/11_Xiaomi Poco F4_1.png', N'images/Xiaomi/11_Xiaomi Poco F4_2.webp', N'images/Xiaomi/11_Xiaomi Poco F4_3.webp', N'images/Xiaomi/11_Xiaomi Poco F4_4.webp', 141, 222, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X012', N'Xiaomi POCO X4 Pro 4G', 749, 609, N'images/Xiaomi/12_Xiaomi POCO X4 Pro_1.png', N'images/Xiaomi/12_Xiaomi POCO X4 Pro_2.webp', N'images/Xiaomi/12_Xiaomi POCO X4 Pro_3.webp', N'images/Xiaomi/12_Xiaomi POCO X4 Pro_4.webp', 144, 224, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X013', N'Xiaomi POCO M5 4GB 64GB', 399, 340, N'images/Xiaomi/13_Xiaomi POCO M5 4GB 64GB_1.png', N'images/Xiaomi/13_Xiaomi POCO M5 4GB 64GB_2.webp', N'images/Xiaomi/13_Xiaomi POCO M5 4GB 64GB_3.webp', N'images/Xiaomi/13_Xiaomi POCO M5 4GB 64GB_4.webp', 146, 272, 4)
INSERT [dbo].[Product] ([productID], [productName], [oldPrice], [newPrice], [image01], [image02], [image03], [image04], [available], [sold], [cid]) VALUES (N'X014', N'Xiaomi 11 Lite 5G NE', 949, 659, N'images/Xiaomi/14_Xiaomi 11 Lite 5G NE_1.png', N'images/Xiaomi/14_Xiaomi 11 Lite 5G NE_2.webp', N'images/Xiaomi/14_Xiaomi 11 Lite 5G NE_3.webp', N'images/Xiaomi/14_Xiaomi 11 Lite 5G NE_4.webp', 171, 122, 4)
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([categoryID])
GO
USE [master]
GO
ALTER DATABASE [H2MAK] SET  READ_WRITE 
GO
