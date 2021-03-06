USE [master]
GO
/****** Object:  Database [UruguayNaturalDB]    Script Date: 26/11/2020 17:21:44 ******/
CREATE DATABASE [UruguayNaturalDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UruguayNaturalDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UruguayNaturalDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UruguayNaturalDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UruguayNaturalDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UruguayNaturalDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UruguayNaturalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UruguayNaturalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UruguayNaturalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UruguayNaturalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UruguayNaturalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UruguayNaturalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UruguayNaturalDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [UruguayNaturalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UruguayNaturalDB] SET  MULTI_USER 
GO
ALTER DATABASE [UruguayNaturalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UruguayNaturalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UruguayNaturalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UruguayNaturalDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UruguayNaturalDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UruguayNaturalDB] SET QUERY_STORE = OFF
GO
USE [UruguayNaturalDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/11/2020 17:21:44 ******/
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
/****** Object:  Table [dbo].[Administrators]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Administrators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CheckIn] [datetime2](7) NULL,
	[CheckOut] [datetime2](7) NULL,
	[Guests] [int] NOT NULL,
	[LodgingId] [int] NULL,
	[TouristId] [int] NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingState]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[State] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_BookingState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NULL,
	[FaIconName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LodgingImage]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LodgingImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LodgingId] [int] NOT NULL,
	[ImageData] [varbinary](max) NULL,
 CONSTRAINT [PK_LodgingImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LodgingReviews]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LodgingReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Commentary] [nvarchar](max) NULL,
 CONSTRAINT [PK_LodgingReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lodgings]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodgings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[IsFull] [bit] NOT NULL,
	[PricePerNight] [float] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[ConfirmationMessage] [nvarchar](max) NULL,
	[TouristSpotId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[ReviewAverage] [float] NOT NULL,
	[ReviewsQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Lodgings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[MapTransparent] [varbinary](max) NULL,
	[MapYellow] [varbinary](max) NULL,
	[VideoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[Token] [uniqueidentifier] NOT NULL,
	[AdministratorId] [int] NOT NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tourist]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tourist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tourist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouristSpotCategory]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouristSpotCategory](
	[CategoryId] [int] NOT NULL,
	[TouristSpotId] [int] NOT NULL,
 CONSTRAINT [PK_TouristSpotCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[TouristSpotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouristSpots]    Script Date: 26/11/2020 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouristSpots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](2000) NULL,
	[RegionId] [int] NULL,
	[Image] [varbinary](max) NULL,
 CONSTRAINT [PK_TouristSpots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Administrators_Email]    Script Date: 26/11/2020 17:21:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Administrators_Email] ON [dbo].[Administrators]
(
	[Email] ASC
)
WHERE ([Email] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking_LodgingId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_Booking_LodgingId] ON [dbo].[Booking]
(
	[LodgingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking_TouristId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_Booking_TouristId] ON [dbo].[Booking]
(
	[TouristId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookingState_BookingId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_BookingState_BookingId] ON [dbo].[BookingState]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_Name]    Script Date: 26/11/2020 17:21:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Categories_Name] ON [dbo].[Categories]
(
	[Name] ASC
)
WHERE ([Name] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LodgingImage_LodgingId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_LodgingImage_LodgingId] ON [dbo].[LodgingImage]
(
	[LodgingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LodgingReviews_BookingId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LodgingReviews_BookingId] ON [dbo].[LodgingReviews]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lodgings_TouristSpotId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_Lodgings_TouristSpotId] ON [dbo].[Lodgings]
(
	[TouristSpotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Regions_Name]    Script Date: 26/11/2020 17:21:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Regions_Name] ON [dbo].[Regions]
(
	[Name] ASC
)
WHERE ([Name] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sessions_AdministratorId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_Sessions_AdministratorId] ON [dbo].[Sessions]
(
	[AdministratorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TouristSpotCategory_TouristSpotId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_TouristSpotCategory_TouristSpotId] ON [dbo].[TouristSpotCategory]
(
	[TouristSpotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TouristSpots_RegionId]    Script Date: 26/11/2020 17:21:44 ******/
CREATE NONCLUSTERED INDEX [IX_TouristSpots_RegionId] ON [dbo].[TouristSpots]
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[Lodgings] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Lodgings] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ReviewAverage]
GO
ALTER TABLE [dbo].[Lodgings] ADD  DEFAULT ((0)) FOR [ReviewsQuantity]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Lodgings_LodgingId] FOREIGN KEY([LodgingId])
REFERENCES [dbo].[Lodgings] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Lodgings_LodgingId]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Tourist_TouristId] FOREIGN KEY([TouristId])
REFERENCES [dbo].[Tourist] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Tourist_TouristId]
GO
ALTER TABLE [dbo].[BookingState]  WITH CHECK ADD  CONSTRAINT [FK_BookingState_Booking_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingState] CHECK CONSTRAINT [FK_BookingState_Booking_BookingId]
GO
ALTER TABLE [dbo].[LodgingImage]  WITH CHECK ADD  CONSTRAINT [FK_LodgingImage_Lodgings_LodgingId] FOREIGN KEY([LodgingId])
REFERENCES [dbo].[Lodgings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LodgingImage] CHECK CONSTRAINT [FK_LodgingImage_Lodgings_LodgingId]
GO
ALTER TABLE [dbo].[LodgingReviews]  WITH CHECK ADD  CONSTRAINT [FK_LodgingReviews_Booking_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LodgingReviews] CHECK CONSTRAINT [FK_LodgingReviews_Booking_BookingId]
GO
ALTER TABLE [dbo].[Lodgings]  WITH CHECK ADD  CONSTRAINT [FK_Lodgings_TouristSpots_TouristSpotId] FOREIGN KEY([TouristSpotId])
REFERENCES [dbo].[TouristSpots] ([Id])
GO
ALTER TABLE [dbo].[Lodgings] CHECK CONSTRAINT [FK_Lodgings_TouristSpots_TouristSpotId]
GO
ALTER TABLE [dbo].[Sessions]  WITH CHECK ADD  CONSTRAINT [FK_Sessions_Administrators_AdministratorId] FOREIGN KEY([AdministratorId])
REFERENCES [dbo].[Administrators] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sessions] CHECK CONSTRAINT [FK_Sessions_Administrators_AdministratorId]
GO
ALTER TABLE [dbo].[TouristSpotCategory]  WITH CHECK ADD  CONSTRAINT [FK_TouristSpotCategory_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TouristSpotCategory] CHECK CONSTRAINT [FK_TouristSpotCategory_Categories_CategoryId]
GO
ALTER TABLE [dbo].[TouristSpotCategory]  WITH CHECK ADD  CONSTRAINT [FK_TouristSpotCategory_TouristSpots_TouristSpotId] FOREIGN KEY([TouristSpotId])
REFERENCES [dbo].[TouristSpots] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TouristSpotCategory] CHECK CONSTRAINT [FK_TouristSpotCategory_TouristSpots_TouristSpotId]
GO
ALTER TABLE [dbo].[TouristSpots]  WITH CHECK ADD  CONSTRAINT [FK_TouristSpots_Regions_RegionId] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[TouristSpots] CHECK CONSTRAINT [FK_TouristSpots_Regions_RegionId]
GO
USE [master]
GO
ALTER DATABASE [UruguayNaturalDB] SET  READ_WRITE 
GO
