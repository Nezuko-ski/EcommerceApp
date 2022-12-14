USE [master]
GO
/****** Object:  Database [ecommerce-app-db]    Script Date: 02/09/2022 11:37:53 ******/
CREATE DATABASE [ecommerce-app-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ecommerce-app-db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ecommerce-app-db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ecommerce-app-db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ecommerce-app-db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ecommerce-app-db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ecommerce-app-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ARITHABORT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ecommerce-app-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ecommerce-app-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ecommerce-app-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ecommerce-app-db] SET  MULTI_USER 
GO
ALTER DATABASE [ecommerce-app-db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ecommerce-app-db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ecommerce-app-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ecommerce-app-db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ecommerce-app-db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ecommerce-app-db] SET QUERY_STORE = OFF
GO
USE [ecommerce-app-db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/09/2022 11:37:53 ******/
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
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/09/2022 11:37:53 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 02/09/2022 11:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ProductCategory] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220815095406_Primary', N'3.1.28')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220818110833_Identiy_Added', N'3.1.28')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'09d2ce19-f7b3-4cb2-b0ad-9608ed7e50f7', N'Admin', N'ADMIN', N'4cc1c273-ceeb-4043-a769-bfac94a29e11')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ff2432eb-fd1d-4d49-915e-6418c245e387', N'User', N'USER', N'16c411a1-9118-4891-9ae9-5e9c787dae1c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a02d1556-2b43-4a25-8e8f-5d244717eaa9', N'09d2ce19-f7b3-4cb2-b0ad-9608ed7e50f7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0ed36d0b-daa6-49ed-a44c-3beab4f7af02', N'ff2432eb-fd1d-4d49-915e-6418c245e387')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'16cb5245-1a49-4334-a22f-6632301e2159', N'ff2432eb-fd1d-4d49-915e-6418c245e387')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37101cc9-c26c-4c47-8ff4-2449beb876e4', N'ff2432eb-fd1d-4d49-915e-6418c245e387')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'60648549-7b02-4569-acad-9995d569e70e', N'ff2432eb-fd1d-4d49-915e-6418c245e387')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'755c3cd6-8521-4fbd-b1b6-f298c1f5b2b3', N'ff2432eb-fd1d-4d49-915e-6418c245e387')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd6989450-463a-4163-946e-41b6064c3e76', N'ff2432eb-fd1d-4d49-915e-6418c245e387')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'0ed36d0b-daa6-49ed-a44c-3beab4f7af02', N'Hinata', N'HINATA', N'hinata@rimuru.com', N'HINATA@RIMURU.COM', 0, N'AQAAAAEAACcQAAAAEF42Fd5dI0yXdRaPsqUrbhrTlpWYu+1vuOx0dDdCFK/F5nrboDFjBVU4m9pf3Qpdqw==', N'4S4R2ICMNLOHVGOSVGGLJ34KZT2XMHQH', N'96457416-26a3-42f5-8eb0-d1763e8ec9ca', NULL, 0, 0, NULL, 1, 0, N'Hinata Sakaguchi')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'16cb5245-1a49-4334-a22f-6632301e2159', N'Touka', N'TOUKA', N'touka@tg.com', N'TOUKA@TG.COM', 0, N'AQAAAAEAACcQAAAAEMqejFYvysZpZlgz/Q0wAfEN6q4osDzdg1n+e26+3UEm+AL290ezRJUAvwaF+cnR0Q==', N'H7DQ27C3CP64SXD7AJVHDGAUQBY4V7BV', N'd2597765-a3e7-42a6-b30b-25c5b362bfe7', NULL, 0, 0, NULL, 1, 0, N'Touka Kirishima')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'37101cc9-c26c-4c47-8ff4-2449beb876e4', N'Mikasa', N'MIKASA', N'mikasa@eren.com', N'MIKASA@EREN.COM', 0, N'AQAAAAEAACcQAAAAELnd/SOmvB0Ehehnbz72aF2MW5hQKiaNVtkZfc+M95aJq/QaxRLrtP47DAU7Gw+PRw==', N'SXE5TXUEDVIIF2UGFVRLJRU3DDMI4MNH', N'b08a3f10-fffd-411a-87f7-155bd05856a1', NULL, 0, 0, NULL, 1, 0, N'Mikasa Ackermann')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'60648549-7b02-4569-acad-9995d569e70e', N'app-user', N'APP-USER', N'user@ecomm.com', N'USER@ECOMM.COM', 1, N'AQAAAAEAACcQAAAAEOzFCyvEgvEii+Pf6XeXK3qabNTqTAcJXSWqbhT6gmMEfTGdeZlCy59TXOXZiHR0tg==', N'YEQMOWL5TU5YOUNCCU5MEDHT4DASVK7D', N'72044ddf-8592-4415-8b15-93f0ec122ece', NULL, 0, 0, NULL, 1, 0, N'User Rando')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'755c3cd6-8521-4fbd-b1b6-f298c1f5b2b3', N'Jack', N'JACK', N'fgh@f.j', N'FGH@F.J', 0, N'AQAAAAEAACcQAAAAEIuZHWOJF9Qs2oTnjv3ryOjDt0zCaCSoMdIJQ+NRIbo7M2KiScuLdpTXtww10FX+mQ==', N'5FG5NPW4ROLWYV6JCH4WJYDVJKTPQS6A', N'004f1a76-2757-4faf-ba1d-ff3ce7c2c62d', NULL, 0, 0, NULL, 1, 0, N'Jack Sparrow')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'a02d1556-2b43-4a25-8e8f-5d244717eaa9', N'admin-user', N'ADMIN-USER', N'admin@ecomm.com', N'ADMIN@ECOMM.COM', 1, N'AQAAAAEAACcQAAAAEPYifJczOPmJO2adLwj8aNcqKi/IeMDoi0gQOovNiU+J2FpIdnfr8Bi9nnDhVucdhQ==', N'QUMXAZ76N6NVD6TFTEHBGMF6KVWLIDFV', N'391a015c-e969-41cb-bf92-ca69c66b26ef', NULL, 0, 0, NULL, 1, 0, N'User Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'd6989450-463a-4163-946e-41b6064c3e76', N'Itachi', N'ITACHI', N'itachi@genjutsu.com', N'ITACHI@GENJUTSU.COM', 0, N'AQAAAAEAACcQAAAAEEZ1Cu2648YlvRptIWM1mtG5U6Mgcz6lp0LjASl4HJme+GxzaIz6nBguV5zbJJX6Kg==', N'D2AYKGQQZYODZAWVSPA4QZ7CCCYFDLU4', N'64d273bf-a8df-4be4-ab5a-6e48dc379f72', NULL, 0, 0, NULL, 1, 0, N'Itachi Uchiha')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (1, N'Nike Air Max 270 React', N'This describes the product.', 299.43, N'https://i.imgur.com/hwJPScK.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (2, N'Fs - Quilted Maxi Cross Bag', N'This describes the product.', 299.43, N'https://i.imgur.com/t7368rv.png', 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (3, N'Blue Swade Nike Sneakers', N'This describes the product.', 499, N'https://i.imgur.com/apT296h.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (7, N'Nike Air Max 3 Radiant Red', N'This describes the product', 299.43, N'https://i.imgur.com/5RKh8DR.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (14, N'Nike Air Max Motif', N'This describes the product', 299.43, N'https://i.imgur.com/cbR9uWM.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (18, N'Zara Crossbody Purse', N'This describes the product', 299.43, N'https://i.imgur.com/9DzoYZd.jpg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (22, N'Nike Air Max 90 NRG', N'This describes the product', 299.43, N'https://i.imgur.com/42hAReJ.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (25, N'Alligator Pattern  handbag', N'This descibes the product', 299.43, N'https://i.imgur.com/GW8ubYz.jpg', 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [ImageURL], [ProductCategory]) VALUES (26, N'Tom Ford Greta Sunglasses', N'This describes the product', 299.43, N'https://i.imgur.com/IKru8u4.jpg', 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 02/09/2022 11:37:53 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/09/2022 11:37:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 02/09/2022 11:37:53 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 02/09/2022 11:37:53 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 02/09/2022 11:37:53 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 02/09/2022 11:37:53 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/09/2022 11:37:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [ecommerce-app-db] SET  READ_WRITE 
GO
