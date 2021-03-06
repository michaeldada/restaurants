USE [master]
GO
/****** Object:  Database [restaurant]    Script Date: 2/24/2016 4:50:16 PM ******/
CREATE DATABASE [restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurant', FILENAME = N'C:\Users\epicodus_student\restaurant.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'restaurant_log', FILENAME = N'C:\Users\epicodus_student\restaurant_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [restaurant] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurant] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurant] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
USE [restaurant]
GO
/****** Object:  Table [dbo].[cuisine]    Script Date: 2/24/2016 4:50:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cuisine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[restaurant]    Script Date: 2/24/2016 4:50:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[restaurant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[cuisine_id] [int] NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cuisine] ON 

INSERT [dbo].[cuisine] ([id], [description]) VALUES (1, N'Indian')
INSERT [dbo].[cuisine] ([id], [description]) VALUES (2, N'Italian')
INSERT [dbo].[cuisine] ([id], [description]) VALUES (3, N'Greek')
INSERT [dbo].[cuisine] ([id], [description]) VALUES (4, N'Thai')
INSERT [dbo].[cuisine] ([id], [description]) VALUES (5, N'Egyptian')
INSERT [dbo].[cuisine] ([id], [description]) VALUES (6, N'Chinese')
INSERT [dbo].[cuisine] ([id], [description]) VALUES (7, N'Lebanese')
SET IDENTITY_INSERT [dbo].[cuisine] OFF
SET IDENTITY_INSERT [dbo].[restaurant] ON 

INSERT [dbo].[restaurant] ([id], [description], [cuisine_id], [address], [phone]) VALUES (8, N'Olive Garden', 2, N'123 Example St', N'555-555-5555')
INSERT [dbo].[restaurant] ([id], [description], [cuisine_id], [address], [phone]) VALUES (9, N'Bangkok Kitchen', 4, N'123 Example St', N'555-555-5555')
INSERT [dbo].[restaurant] ([id], [description], [cuisine_id], [address], [phone]) VALUES (10, N'Verona', 2, N'123 Example St', N'555-555-5555')
INSERT [dbo].[restaurant] ([id], [description], [cuisine_id], [address], [phone]) VALUES (11, N'Little Pharoh', 5, N'123 Example St', N'555-555-5555')
INSERT [dbo].[restaurant] ([id], [description], [cuisine_id], [address], [phone]) VALUES (12, N'Taste of India', 1, N'123 Example St', N'555-555-5555')
INSERT [dbo].[restaurant] ([id], [description], [cuisine_id], [address], [phone]) VALUES (15, N'Different', 6, N'123 Example St', N'555-555-5555')
SET IDENTITY_INSERT [dbo].[restaurant] OFF
USE [master]
GO
ALTER DATABASE [restaurant] SET  READ_WRITE 
GO
