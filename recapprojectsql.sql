USE [master]
GO
/****** Object:  Database [ReCapProject]    Script Date: 17.02.2021 21:51:46 ******/
CREATE DATABASE [ReCapProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ReCapProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS02\MSSQL\DATA\ReCapProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ReCapProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS02\MSSQL\DATA\ReCapProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReCapProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReCapProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReCapProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReCapProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReCapProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReCapProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReCapProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ReCapProject] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ReCapProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReCapProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReCapProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReCapProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReCapProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReCapProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReCapProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReCapProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReCapProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ReCapProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ReCapProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReCapProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReCapProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReCapProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReCapProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReCapProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReCapProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ReCapProject] SET  MULTI_USER 
GO
ALTER DATABASE [ReCapProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReCapProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReCapProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReCapProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [ReCapProject]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 17.02.2021 21:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 17.02.2021 21:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NULL,
	[ColorId] [int] NULL,
	[DealyPrice] [decimal](18, 0) NULL,
	[Description] [nvarchar](max) NULL,
	[ModelYear] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 17.02.2021 21:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description]) VALUES (1, N'Mercedes', N'Açıklama Mercedes')
INSERT [dbo].[Brands] ([Id], [Name], [Description]) VALUES (2, N'Audi', N'Açıklama Audi')
INSERT [dbo].[Brands] ([Id], [Name], [Description]) VALUES (3, N'Seat', N'Seat açıklama ')
INSERT [dbo].[Brands] ([Id], [Name], [Description]) VALUES (4, N'Skoda', N'skoda açıklama')
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [DealyPrice], [Description], [ModelYear]) VALUES (2, 1, 2, CAST(700 AS Decimal(18, 0)), N'Araba açıklam2', N'1991')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [DealyPrice], [Description], [ModelYear]) VALUES (3, 22, 1, CAST(750 AS Decimal(18, 0)), N'Araba açıklam3', N'1995')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [DealyPrice], [Description], [ModelYear]) VALUES (4, 2, 3, CAST(800 AS Decimal(18, 0)), N'Araba açıklam3', N'1997')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [DealyPrice], [Description], [ModelYear]) VALUES (9, 1, 1, CAST(600 AS Decimal(18, 0)), N'Yeni Araba açıklama', N'1990')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [DealyPrice], [Description], [ModelYear]) VALUES (1005, 1, 1, CAST(100 AS Decimal(18, 0)), N'Yeni Araba açıklama', N'1990')
SET IDENTITY_INSERT [dbo].[Cars] OFF
INSERT [dbo].[Colors] ([Id], [Name], [Description]) VALUES (1, N'Sarı', N'SArı Açıklama')
INSERT [dbo].[Colors] ([Id], [Name], [Description]) VALUES (2, N'Lacivert', N'Lacivert Açıklama')
INSERT [dbo].[Colors] ([Id], [Name], [Description]) VALUES (3, N'Beyaz', N'Beyaz Açıklama')
USE [master]
GO
ALTER DATABASE [ReCapProject] SET  READ_WRITE 
GO
