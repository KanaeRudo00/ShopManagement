USE [UserManagement]
GO
ALTER TABLE [dbo].[sa_user] DROP CONSTRAINT [sa_user_constraint]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 12/5/2023 3:53:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers]') AND type in (N'U'))
DROP TABLE [dbo].[tblUsers]
GO
/****** Object:  Table [dbo].[tblComestic]    Script Date: 12/5/2023 3:53:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblComestic]') AND type in (N'U'))
DROP TABLE [dbo].[tblComestic]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 12/5/2023 3:53:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_User]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_User]
GO
/****** Object:  Table [dbo].[tbl_Mobile]    Script Date: 12/5/2023 3:53:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Mobile]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Mobile]
GO
/****** Object:  Table [dbo].[sa_user]    Script Date: 12/5/2023 3:53:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sa_user]') AND type in (N'U'))
DROP TABLE [dbo].[sa_user]
GO
USE [master]
GO
/****** Object:  Database [UserManagement]    Script Date: 12/5/2023 3:53:39 PM ******/
DROP DATABASE [UserManagement]
GO
/****** Object:  Database [UserManagement]    Script Date: 12/5/2023 3:53:39 PM ******/
CREATE DATABASE [UserManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UserManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\UserManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UserManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\UserManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UserManagement] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UserManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UserManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UserManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UserManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UserManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [UserManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UserManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UserManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UserManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UserManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UserManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UserManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UserManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UserManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UserManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UserManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UserManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UserManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UserManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UserManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UserManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UserManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UserManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [UserManagement] SET  MULTI_USER 
GO
ALTER DATABASE [UserManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UserManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UserManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UserManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UserManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UserManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UserManagement', N'ON'
GO
ALTER DATABASE [UserManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [UserManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UserManagement]
GO
/****** Object:  Table [dbo].[sa_user]    Script Date: 12/5/2023 3:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sa_user](
	[mobileID] [varchar](10) NOT NULL,
	[amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mobileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Mobile]    Script Date: 12/5/2023 3:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Mobile](
	[mobileId] [varchar](10) NOT NULL,
	[description] [varchar](250) NOT NULL,
	[price] [float] NULL,
	[mobileName] [varchar](20) NOT NULL,
	[yearOfProduction] [int] NULL,
	[quantity] [int] NULL,
	[sale] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[mobileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 12/5/2023 3:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[userId] [varchar](20) NOT NULL,
	[password] [int] NOT NULL,
	[fullName] [varchar](50) NOT NULL,
	[role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComestic]    Script Date: 12/5/2023 3:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComestic](
	[id] [char](5) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[price] [float] NOT NULL,
	[size] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tblFashion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 12/5/2023 3:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[sa_user] ([mobileID], [amount]) VALUES (N'M2', 2)
GO
INSERT [dbo].[tbl_Mobile] ([mobileId], [description], [price], [mobileName], [yearOfProduction], [quantity], [sale]) VALUES (N'M1', N'Sample description 1', 100.5, N'Mobile 1', 2022, 10, 0)
INSERT [dbo].[tbl_Mobile] ([mobileId], [description], [price], [mobileName], [yearOfProduction], [quantity], [sale]) VALUES (N'M2', N'Sample description 2', 200.75, N'Mobile 2', 2021, 5, 1)
INSERT [dbo].[tbl_Mobile] ([mobileId], [description], [price], [mobileName], [yearOfProduction], [quantity], [sale]) VALUES (N'M3', N'Sample description 3', 150.25, N'Mobile 3', 2023, 8, 0)
GO
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'manager1', 345678, N'Manager 1', 1)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'sa', 12345, N'admin', 1)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'sa_staff', 12345, N'staff', 2)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'sa_user', 12345, N'user', 0)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'staff1', 901234, N'Staff 1', 2)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'user1', 123456, N'User 1', 0)
INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) VALUES (N'user2', 789012, N'User 2', 0)
GO
INSERT [dbo].[tblComestic] ([id], [name], [description], [price], [size], [status]) VALUES (N'C-001', N'Skin care', N'Chăm sóc da', 200, N'4', 1)
INSERT [dbo].[tblComestic] ([id], [name], [description], [price], [size], [status]) VALUES (N'C-002', N'Hair', N'Chăm sóc tóc', 300, N'5', 0)
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'admin', N'Toi la admin', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'Hoadnt', N'Hoa Doan', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE130363', N'Ngo Ha Tri Bao', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140103', N'Phuoc Ha', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140119', N'Trai Nguyen', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140130', N'Tam Tran', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140201', N'PHAM HOANG TU', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140969', N'Nguyen Gia Tin', N'123', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE150443', N'LE MINH KHOA', N'1', N'US', 1)
GO
ALTER TABLE [dbo].[sa_user]  WITH CHECK ADD  CONSTRAINT [sa_user_constraint] FOREIGN KEY([mobileID])
REFERENCES [dbo].[tbl_Mobile] ([mobileId])
GO
ALTER TABLE [dbo].[sa_user] CHECK CONSTRAINT [sa_user_constraint]
GO
USE [master]
GO
ALTER DATABASE [UserManagement] SET  READ_WRITE 
GO
