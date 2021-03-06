USE [master]
GO
/****** Object:  Database [KonserEtkinlikDbContext]    Script Date: 10.06.2022 12:57:37 ******/
CREATE DATABASE [KonserEtkinlikDbContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KonserEtkinlikDbContext', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KonserEtkinlikDbContext.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KonserEtkinlikDbContext_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KonserEtkinlikDbContext_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KonserEtkinlikDbContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET RECOVERY FULL 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET  MULTI_USER 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KonserEtkinlikDbContext', N'ON'
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET QUERY_STORE = OFF
GO
USE [KonserEtkinlikDbContext]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10.06.2022 12:57:38 ******/
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
/****** Object:  Table [dbo].[Dinleyicilers]    Script Date: 10.06.2022 12:57:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dinleyicilers](
	[DinleyiciId] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[KoltukNo] [int] NULL,
	[Yas] [int] NULL,
 CONSTRAINT [PK_Dinleyicilers] PRIMARY KEY CLUSTERED 
(
	[DinleyiciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mekanlars]    Script Date: 10.06.2022 12:57:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mekanlars](
	[MekanId] [int] IDENTITY(1,1) NOT NULL,
	[MekanAdi] [nvarchar](100) NOT NULL,
	[Il] [nvarchar](max) NOT NULL,
	[Ilce] [nvarchar](max) NULL,
	[AcikAdres] [nvarchar](max) NULL,
 CONSTRAINT [PK_Mekanlars] PRIMARY KEY CLUSTERED 
(
	[MekanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanatcilars]    Script Date: 10.06.2022 12:57:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanatcilars](
	[SanatciId] [int] IDENTITY(1,1) NOT NULL,
	[SanatciAd] [nvarchar](50) NOT NULL,
	[SanatciCinsiyet] [nvarchar](10) NULL,
	[Yas] [int] NOT NULL,
 CONSTRAINT [PK_Sanatcilars] PRIMARY KEY CLUSTERED 
(
	[SanatciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220527162142_CreateDb', N'5.0.3')
GO
SET IDENTITY_INSERT [dbo].[Dinleyicilers] ON 

INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (1, N'Arda Ertürk', 23, 26)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (3, N'Nisan Çelik', 1, 18)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (4, N'Murat Karagöz', 2, 43)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (5, N'Selim Öztürk', 3, 23)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (6, N'Fikri Gülen', 32, 22)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (7, N'Aydan Elagöz', 102, 21)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (8, N'Sevim Akkaya', 212, 38)
INSERT [dbo].[Dinleyicilers] ([DinleyiciId], [AdSoyad], [KoltukNo], [Yas]) VALUES (9, N'Serkan Kahraman', 12, 26)
SET IDENTITY_INSERT [dbo].[Dinleyicilers] OFF
GO
SET IDENTITY_INSERT [dbo].[Mekanlars] ON 

INSERT [dbo].[Mekanlars] ([MekanId], [MekanAdi], [Il], [Ilce], [AcikAdres]) VALUES (3, N'Üsküdar Üniversitesi', N'İstanbul', N'Üsküdar', N'Üsküdar Meydan Üsküdar Üni Çarşı Yerleşkesi')
INSERT [dbo].[Mekanlars] ([MekanId], [MekanAdi], [Il], [Ilce], [AcikAdres]) VALUES (4, N'NevMekan', N'İstanbul', N'Üsküdar', N'124.Sokak No 2 ')
INSERT [dbo].[Mekanlars] ([MekanId], [MekanAdi], [Il], [Ilce], [AcikAdres]) VALUES (6, N'Asrın Cafe', N'Bolu', N'Kasaplar', N'Hürriyet Mah No 42')
INSERT [dbo].[Mekanlars] ([MekanId], [MekanAdi], [Il], [Ilce], [AcikAdres]) VALUES (7, N'Saklı Bahçe Düğün Salonu', N'Tokat', N'Reşadiye', N'Türkoğlu Cad. No 22')
INSERT [dbo].[Mekanlars] ([MekanId], [MekanAdi], [Il], [Ilce], [AcikAdres]) VALUES (8, N'Kuruçeşme Açık Hava Konser Alanı', N'İstanbul', N'Beşiktaş', N'Ortaköy, Muallim Naci Cd. No:50, 34347 l')
INSERT [dbo].[Mekanlars] ([MekanId], [MekanAdi], [Il], [Ilce], [AcikAdres]) VALUES (9, N'Zorlu Performans Sanatları Merkezi', N'İstanbul', N'Beşiktaş', N' Levazım, Koru Sokağı No:2, 34340')
SET IDENTITY_INSERT [dbo].[Mekanlars] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanatcilars] ON 

INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (1, N'Sertab Erener', N'Kadın', 32)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (2, N'Ediz', N'Erkek', 28)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (3, N'Sibel Can', N'Kadın', 48)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (5, N'Atiye', N'Kadın', 27)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (6, N'Gülşen', N'Kadın', 35)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (7, N'Serdar Ortaç', N'Erkek', 42)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (8, N'Dua Lipa', N'Kadın', 28)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (10, N'Shawn Mendes', N'Erkek', 25)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (11, N'Rihanna', N'Kadın', 32)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (12, N'Ebru Gündeş', N'Kadın', 34)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (13, N'Sinan Gündüz', N'Erkek', 22)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (22, N'Mehtap DemirCan', N'Kadınnn', 2555)
INSERT [dbo].[Sanatcilars] ([SanatciId], [SanatciAd], [SanatciCinsiyet], [Yas]) VALUES (23, N'Selda Bağcan', N'Kadın', 52)
SET IDENTITY_INSERT [dbo].[Sanatcilars] OFF
GO
USE [master]
GO
ALTER DATABASE [KonserEtkinlikDbContext] SET  READ_WRITE 
GO
