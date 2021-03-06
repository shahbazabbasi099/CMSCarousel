USE [master]
GO
/****** Object:  Database [cms_carousel]    Script Date: 26-Jan-2018 12:50:03 PM ******/
CREATE DATABASE [cms_carousel] ON  PRIMARY 
( NAME = N'cms_carousel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\cms_carousel.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cms_carousel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\cms_carousel_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cms_carousel] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cms_carousel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cms_carousel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cms_carousel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cms_carousel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cms_carousel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cms_carousel] SET ARITHABORT OFF 
GO
ALTER DATABASE [cms_carousel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cms_carousel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cms_carousel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cms_carousel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cms_carousel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cms_carousel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cms_carousel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cms_carousel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cms_carousel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cms_carousel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cms_carousel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cms_carousel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cms_carousel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cms_carousel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cms_carousel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cms_carousel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cms_carousel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cms_carousel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cms_carousel] SET  MULTI_USER 
GO
ALTER DATABASE [cms_carousel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cms_carousel] SET DB_CHAINING OFF 
GO
USE [cms_carousel]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.aspnetroles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.aspnetuserclaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspnetUserLogins]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspnetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.aspnetuserlogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspnetUserRoles]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspnetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.aspnetuserroles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.aspnetusers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_country]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[NSId] [int] NOT NULL,
 CONSTRAINT [PK_thac_country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_language]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ISOCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_thac_language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_languageoption]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_languageoption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
 CONSTRAINT [PK_thaclanguageoption_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_service]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_thac_service_crdate]  DEFAULT (getdate()),
	[ImageUrl] [nvarchar](200) NULL,
	[ServiceCode] [nvarchar](250) NULL,
 CONSTRAINT [PK_thacservice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_serviceoption]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_serviceoption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUserId] [nvarchar](128) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[LanguageOptionId] [int] NOT NULL,
	[ContentTitle] [nvarchar](max) NOT NULL,
	[ContentMessage] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_thac_serviceoption_crdate]  DEFAULT (getdate()),
	[IsActive] [bit] NOT NULL,
	[UpdatedUserId] [nvarchar](128) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_thac_serviceoption_UpdatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'00dc06ad-0743-422b-8a79-f14f4a5340cb', N'test@yahoo.com', 0, N'AAHYW7sKvf9HLeOZhs2TywLO1yaljUBUQXyIiaOXesrbjOdFTpUI13UMy5tFC+/nZA==', N'2a107ba4-9302-4197-9044-dbca1863d6fa', NULL, 0, 0, NULL, 1, 0, N'test@yahoo.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', N'test@now.com', 0, N'AEiUQBAJDbrn/p35sRdDcHG0qoevbPvWQ1r7ZrIKfA3XOepMvxFP8MHd1TWl8hWJ3Q==', N'3427810f-65d4-427f-97e0-64a4e5eefb8c', NULL, 0, 0, NULL, 1, 0, N'test@now.com', N'Test', N'User')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'92042ba7-f6f4-4ba7-8547-c361417c52bc', N'dev@now.com', 0, N'AEEML22uViXpu56aoDlDgD8/OU0Pm0o/7075V31CGJEcD387v3Qdji268adKPgamFA==', N'9e9448b4-28a0-40cd-a06f-90a74ac76119', NULL, 0, 0, NULL, 1, 0, N'dev@now.com', N'developer', N'account')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'd6354812-3542-4691-8b0a-eaeb1189e590', N'demo@now.com', 0, N'ANZZFalhXsi47FN3sFDnNVJLUcH2yg63OHKY9yg3b7qX1c4FYoRKwJRWMdsXsioKeg==', N'7d2d4fdc-fd8a-46cb-8224-bcc508ab76a5', NULL, 0, 0, NULL, 1, 0, N'demo@now.com', N'Demo', N'Now')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'f73c34f9-5fe5-424c-a3f2-86167509b228', N'test@cms.com', 0, N'ADpIshnloZHAmKrM6RP1bHiBdo/DM1JDqF3gbUdO5q9vRsKEpcAjN2NI2sq7WgPx0w==', N'514ee67c-2394-45dd-8afb-5772e3cbb4e8', NULL, 0, 0, NULL, 1, 0, N'test@cms.com', N'CMS Test', N'User')
SET IDENTITY_INSERT [dbo].[thac_country] ON 

INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (1, N'UK', 1)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (2, N'US/Rest of the World', 3)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (3, N'Italy', 6)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (7, N'France Standard', 7)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (9, N'Greece', 8)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (12, N'Netherland', 9)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (14, N'Germany', 10)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (15, N'Austria', 11)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (16, N'Portugal', 12)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (17, N'Cyprus', 13)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (18, N'Spain', 14)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (19, N'Norway', 17)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (21, N'Switzerland', 18)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (22, N'France New Customer', 19)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (24, N'Dubai', 20)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (25, N'France Welcome Tariff', 21)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (27, N'Dubai General', 22)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (28, N'Saudi Arabia', 19)
INSERT [dbo].[thac_country] ([Id], [Name], [NSId]) VALUES (29, N'Europe', 4)
SET IDENTITY_INSERT [dbo].[thac_country] OFF
SET IDENTITY_INSERT [dbo].[thac_language] ON 

INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (1, N'English', N'EN')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (3, N'German', N'DE')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (4, N'French', N'FR')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (5, N'Spanish', N'ES')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (6, N'Italian', N'IT')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (7, N'Greek', N'GR')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (8, N'Dutch', N'NL')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (9, N'Norwegian', N'NO')
INSERT [dbo].[thac_language] ([Id], [Name], [ISOCode]) VALUES (10, N'Portuguese', N'PT')
SET IDENTITY_INSERT [dbo].[thac_language] OFF
SET IDENTITY_INSERT [dbo].[thac_languageoption] ON 

INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (13, 1, 1)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (14, 14, 1)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (15, 14, 3)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (22, 2, 1)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (23, 15, 8)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (24, 15, 1)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (25, 21, 1)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (26, 1, 4)
SET IDENTITY_INSERT [dbo].[thac_languageoption] OFF
SET IDENTITY_INSERT [dbo].[thac_service] ON 

INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (1, N'Call', CAST(N'2017-12-14 11:28:31.420' AS DateTime), N'Call.png', N'call')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (2, N'Message', CAST(N'2017-12-14 11:28:38.153' AS DateTime), N'Messages.png', N'message')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (3, N'Top Up', CAST(N'2017-12-14 11:28:49.560' AS DateTime), N'TopUp.png', N'topup')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (4, N'Settings', CAST(N'2017-12-14 11:28:57.157' AS DateTime), N'Settings.png', N'settings')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (5, N'Plus One', CAST(N'2017-12-14 11:29:01.147' AS DateTime), N'PlusOne.png', N'plusone')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (6, N'Account', CAST(N'2017-12-15 11:37:50.900' AS DateTime), N'Account.png', N'account')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (7, N'Bundles', CAST(N'2017-12-15 11:38:13.147' AS DateTime), N'Bundles.png', N'bundles')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (8, N'Help', CAST(N'2017-12-15 11:38:39.060' AS DateTime), N'Help.png', N'help')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (9, N'Rates', CAST(N'2017-12-15 11:38:57.370' AS DateTime), N'Rates.png', N'rates')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (10, N'Transfer', CAST(N'2017-12-15 11:40:40.860' AS DateTime), N'Transfer.png', N'transfer')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (11, N'Invite', CAST(N'2018-01-24 14:22:27.913' AS DateTime), N'Invite.png', N'invite')
SET IDENTITY_INSERT [dbo].[thac_service] OFF
SET IDENTITY_INSERT [dbo].[thac_serviceoption] ON 

INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (67, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 23, N'Account', N'Account', CAST(N'2018-01-24 18:39:03.323' AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(N'2018-01-24 18:39:03.323' AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (68, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 13, N'Account Title', N'This is test account content.', CAST(N'2018-01-26 11:57:11.317' AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(N'2018-01-26 11:57:11.317' AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (69, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 13, N'Account Title', N'This is test account content 2', CAST(N'2018-01-26 12:13:39.723' AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(N'2018-01-26 12:13:39.723' AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (70, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 13, N'Account Title', N'This is test account content.', CAST(N'2018-01-26 12:17:05.210' AS DateTime), 1, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(N'2018-01-26 12:17:05.210' AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (71, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 13, N'Account Title ', N'This is test account content which was active ', CAST(N'2018-01-26 12:17:55.480' AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(N'2018-01-26 12:17:55.480' AS DateTime))
SET IDENTITY_INSERT [dbo].[thac_serviceoption] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspnetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspnetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspnetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspnetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspnetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspnetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[thac_languageoption]  WITH CHECK ADD  CONSTRAINT [FK_thaclanguageoption_thaccountry] FOREIGN KEY([CountryId])
REFERENCES [dbo].[thac_country] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_languageoption] CHECK CONSTRAINT [FK_thaclanguageoption_thaccountry]
GO
ALTER TABLE [dbo].[thac_languageoption]  WITH CHECK ADD  CONSTRAINT [FK_thaclanguageoption_thaclanguage] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[thac_language] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_languageoption] CHECK CONSTRAINT [FK_thaclanguageoption_thaclanguage]
GO
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_content_aspnetusers] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_content_aspnetusers]
GO
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_thac_serviceoption_AspNetUsers] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_thac_serviceoption_AspNetUsers]
GO
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_thac_serviceoption_thac_service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[thac_service] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_thac_serviceoption_thac_service]
GO
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_thacserviceoption_thaclanguageoption] FOREIGN KEY([LanguageOptionId])
REFERENCES [dbo].[thac_languageoption] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_thacserviceoption_thaclanguageoption]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCountry]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Faizan Amjad
-- Create date: 15-Oct-2017
-- Description:	Delete Country 
-- =============================================
Create PROCEDURE [dbo].[sp_DeleteCountry] 
	@Id int,
	@ErrorCode int output,
	@ErrorMessage varchar(max)
AS
BEGIN TRAN

BEGIN TRY
   
    if Exists(Select Id from thac_country  where Id = @Id)
				BEGIN
						delete from [dbo].[thac_country] 
						where 
						Id = @Id	

				   SET @ErrorMessage = 'success' 
				END	   
		ELSE
			  BEGIN
					SET @ErrorMessage = 'failure record doesnot exists' 
			  END

		SET @ErrorCode = @@ERROR  -- 1
		--SET @ErrorMessage = 'success'

		  COMMIT TRAN
END TRY

BEGIN CATCH 

IF @@ERROR <> 0
     BEGIN
            ROLLBACK TRAN
			SET @ErrorCode = @@ERROR  -- 0
			SET @ErrorMessage = ERROR_PROCEDURE() + 'Message' + ERROR_MESSAGE() 
      END
  
END CATCH



 -- @ErrorCode: 1 for Success and 0 for Failure    




GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllContent]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Faizan Amjad>
-- Create date: <12 Dec 2017>
-- Description:	<get all content  from on the base of associated country and language and servcie 
-- from servcieoptiontable  >
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllContent]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


 select v5.Country,v5.Language ,v5.ServiceName,v5.ServiceId,v5.LanguageId,v5.CountryId,v5.ContentTitle, v5.ContentMessage,v5.UserName as CreatedUserName,v5.CreatedDate,v5.IsActive, v5.UpdatedDate,	usr2.UserName as UpdatedUserName
from (select v4.Country, v4.CountryId ,lng.Name as Language,v4.ServiceName, v4.ServiceId,v4.LanguageId,v4.ContentTitle ,v4.ContentMessage,v4.UserName,v4.CreatedDate,v4.IsActive, v4.UpdatedUserId,v4.UpdatedDate 
from(select v3.[ContentTitle],cnt.Id as CountryId, v3.[ContentMessage],v3.[CreatedDate],v3.[IsActive],v3.[UpdatedUserId],v3.[UpdatedDate], v3.UserName, v3.LanguageId ,cnt.Name as Country, v3.ServiceName, v3.ServiceId from (select v2.ServiceName, v2.ServiceId,v2.[ContentMessage],v2.[ContentTitle],v2.[CreatedDate],v2.[IsActive],v2.[UpdatedUserId],v2.[UpdatedDate], v2.UserName, lngOp.CountryId,lngOp.LanguageId 
from(select v1.[LanguageOptionId],v1.[ContentTitle],v1.[ContentMessage],v1.[CreatedDate],v1.[IsActive],v1.[UpdatedUserId],v1.[UpdatedDate], usr.UserName, v1.ServiceName, v1.[ServiceId] from (select SoP.[LanguageOptionId],SoP.[ContentMessage],SoP.[ContentTitle],SoP.[CreatedDate],SoP.[IsActive],SoP.[UpdatedUserId],SoP.[UpdatedDate],SoP.CreatedUserId,srv.Name as ServiceName, srv.Id as ServiceId 
from (select [CreatedUserId],[ServiceId],[LanguageOptionId],[ContentTitle],[ContentMessage],[CreatedDate],[IsActive],[UpdatedUserId],[UpdatedDate] from thac_serviceoption (nolock)) as SoP inner join thac_service (nolock) srv
on srv.id = SoP.ServiceId) v1 inner join AspNetUsers (nolock) usr on usr.id= v1.CreatedUserId)
 as v2 inner join thac_languageoption (nolock) lngOp on lngOp.Id=v2.LanguageOptionId)
 as v3 inner join thac_Country (nolock) cnt on cnt.Id=v3.CountryId) as v4
 inner join thac_Language (nolock) lng on lng.Id=v4.LanguageId) as v5
 inner join AspNetUsers usr2 (nolock) on usr2.Id = v5.UpdatedUserId
 order by Country,Language asc


-- Shahid (Old Query)

--select v5.Country,v5.Language ,v5.ServiceName,v5.ContentMessage,v5.UserName as CreatedUserName,v5.CreatedDate,v5.IsActive, v5.UpdatedDate,	usr2.UserName as UpdatedUserName
--from (select v4.Country,lng.Name as Language,v4.ServiceName,v4.ContentMessage,v4.UserName,v4.CreatedDate,v4.IsActive, v4.UpdatedUserId,v4.UpdatedDate from(select v3.*,cnt.Name as Country from (select v2.*, lngOp.CountryId,lngOp.LanguageId from(select v1.*, usr.UserName from (select SoP.*,srv.Name as ServiceName from (select * from thac_serviceoption (nolock)) as SoP inner join thac_service (nolock) srv
--on srv.id = SoP.ServiceId) v1 inner join AspNetUsers (nolock) usr on usr.id= v1.CreatedUserId)
-- as v2 inner join thac_languageoption (nolock) lngOp on lngOp.Id=v2.LanguageOptionId)
-- as v3 inner join thac_Country (nolock) cnt on cnt.Id=v3.CountryId) as v4
-- inner join thac_Language (nolock) lng on lng.Id=v4.LanguageId) as v5
-- inner join AspNetUsers usr2 (nolock) on usr2.Id = v5.UpdatedUserId
--  order by Country,Language asc
 
 
 -- Faizan's Query
 
-- SELECT      thac_serviceoption.ContentTitle,  thac_serviceoption.ContentMessage,cu.UserName as CreatedUser, uu.UserName as UpdatedUser,thac_serviceoption.IsActive,thac_serviceoption.UpdatedDate,
--     thac_serviceoption.CreatedDate,
--     thac_language.Name as Language,thac_country.Name as Country,
--            thac_service.Name 
--FROM        thac_country (nolock)INNER JOIN
--            thac_languageoption (nolock)ON thac_country.Id = thac_languageoption.CountryId INNER JOIN
--            thac_language(nolock) ON thac_language.Id = thac_languageoption.LanguageId INNER JOIN
--            thac_serviceoption(nolock) ON thac_languageoption.Id = thac_serviceoption.LanguageOptionId INNER JOIN
--			thac_service(nolock) ON thac_service.Id = thac_serviceoption.ServiceId  INNER JOIN
--            AspNetUsers(nolock) cu ON cu.Id = thac_serviceoption.CreatedUserId INNER JOIN
--            AspNetUsers(nolock) uu ON uu.Id = thac_serviceoption.UpdatedUserId
--            order by Country,Language
             
 
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllCountries]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Faizan Amjad>
-- Create date: <12 Dec 2017>
-- Description:	<get all countries from database>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllCountries]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [Id] , 
			[Name], 
			[NSId] 
			from thac_country (nolock) order by Name
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllLanguages]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Faizan Amjad>
-- Create date: <12 Dec 2017>
-- Description:	<get all languages  from database>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllLanguages]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [Id] , 
			[Name]
			from thac_language (nolock) order by Name


END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllServcies]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Faizan Amjad>
-- Create date: <12 Dec 2017>
-- Description:	<get all services  from database>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllServcies]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [Id] , 
			[Name],
			[CreatedDate],
			[ImageUrl],
			[ServiceCode]
			from thac_service (nolock) order by Name
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetContentByNSId]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Faizan Amjad
-- Create date: 15-Oct-2017
-- Description:	GET CONTENT from SERVCIE OPTION TABLE and associated SERVCIE NAME FROM SERVCIE TABLE 
-- BY USING NSID FROM COUNTRY TABLLE and ISOCODE2 FROM LANGUAGE TABLE

-- =============================================
CREATE PROCEDURE [dbo].[sp_GetContentByNSId] 
	@NSID int ,
	@ISOCode varchar(50)
AS


SELECT        thac_serviceoption.ContentMessage,
              thac_serviceoption.ContentTitle,
              thac_service.Name
FROM          thac_country (nolock)INNER JOIN
              thac_languageoption(nolock) ON thac_country.Id = thac_languageoption.CountryId INNER JOIN
			  thac_language(nolock) ON thac_language.Id = thac_languageoption.LanguageId INNER JOIN
              thac_serviceoption(nolock) ON thac_languageoption.Id = thac_serviceoption.LanguageOptionId INNER JOIN
			  thac_service(nolock) ON thac_service.Id = thac_serviceoption.ServiceId
			  where thac_serviceoption.IsActive = 'True' and thac_country.NSId = @NSID  and  thac_language.ISOCode = @ISOCode
			  

GO
/****** Object:  StoredProcedure [dbo].[sp_GetContentByServcieId]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Faizan Amjad
-- Create date: 15-Oct-2017
-- Description:	Get Content from SERVCIE OPTION UISNG LANGIAGE OPTION ID AND SERVCIE ID   
-- FIRST CHECK LANGUAGE ID EXISTS VIA COUNTRY ID AND LANGUAGE ID at LANGUAGE OPTION
-- SECOND IF LANGUAGE OPTION FOUND THEN CHECK IN SERVICEOPTION TABLE FOR CONTENT 
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetContentByServcieId] 
	@CountryId int , 
	@LanguageId int,
	@ServiceId int

AS


   DECLARE @LangageOptionID int
   
   SET @LangageOptionID = (Select  id FROM thac_languageoption WHERE 
                          CountryId = @CountryID AND 
						  LanguageId = @LanguageId )
   --SELECT @LangageOptionID
   IF @LangageOptionID  IS NOT NULL	
    
		BEGIN
		print @LangageOptionID 
	    SELECT  id ,ContentMessage,ContentTitle, IsActive 
	          FROM thac_serviceoption (nolock)   WHERE 
	          LanguageOptionId = @LangageOptionID  AND
		      ServiceId = @ServiceId 
	
		END
		   




GO
/****** Object:  StoredProcedure [dbo].[sp_InsertContent]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Faizan Amjad
-- Create date: 15-Oct-2017
-- Description:	Link Langage with Country if not exists or get LanguageOption ID
--              and then save content to thac_serviceoption table
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertContent] 
	@CountryId int ,
	@LanguageId int,
	@UserId varchar(128),
	@ServiceId int,
	@ContentTitle varchar(max),
	@ContentMessage varchar(max),
	@IsActive bit,
	@ReturnValue int output,
	@ErrorCode int output
	--@ErrorMessage varchar(250)
AS
BEGIN TRAN

BEGIN TRY
  
  BEGIN
   DECLARE @LangageOptionID int
   Set @LangageOptionID = (SELECT id FROM thac_languageoption WHERE CountryId = @CountryId AND LanguageId = @LanguageId )
   
   IF @LangageOptionID  IS NULL 			
			BEGIN
			print 'not found @@LangageOptionID'
			  INSERT INTO thac_languageoption
					   (   
						   CountryId, 
						   LanguageId
					   )
				   VALUES
				   (    
						 @CountryId,
						 @LanguageId             
				   )
			  Set @LangageOptionID = Scope_Identity()
	
			END
	ELSE 
	      -- print 'found @@LangageOptionID get @ServiceOptionId'
		  -- DECLARE @ServiceOptionId int 
	      -- Set @ServiceOptionId = (SELECT id FROM thac_serviceoption 
	      -- WHERE LanguageOptionId = @LangageOptionID 
		  -- AND ServiceId = @ServiceId )

  --if @ServiceOptionId IS NULL
	
	          BEGIN
               print 'add new record to service option'
			   --print 'not found @ServiceOptionId'
				 INSERT INTO thac_serviceoption
					   (   CreatedUserId,
						   ServiceId,
						   ContentTitle,
						   ContentMessage,
						   LanguageOptionId,
						   IsActive,
						   UpdatedUserId
					   )
				   VALUES
				   (    
						 @UserId,
						 @ServiceId,
						 @ContentTitle, 
						 @ContentMessage, 
						 @LangageOptionID,
						 @IsActive,
						 @UserId
				   )
					SET  @ReturnValue = SCOPE_IDENTITY()
					SET @ErrorCode = @@ERROR  -- 1
					--SET @ErrorMessage = 'success'

					print 'added @ServiceOption record '
			   END
			
			--ELSE 
			   
			--	BEGIN
			--	 print 'found @ServiceOptionId '

			--		 UPDATE thac_serviceoption
			--			   SET  [ContentTitle] = @ContentTitle,
			--				    [ContentMessage] = @ContentMessage,
			--			        [IsActive] = @IsActive,
			--					[UpdatedUserId] =  @UserId,
			--					[UpdatedDate] = getdate()
			--			   Where id = @ServiceOptionId

			--		SET  @ReturnValue = @ServiceOptionId
			--		SET @ErrorCode = @@ERROR  -- 1
			--		--SET @ErrorMessage = 'success'
			
			--	END

    END
  COMMIT TRAN
END TRY

BEGIN CATCH 

IF @@ERROR <> 0
    
	 BEGIN
            ROLLBACK TRAN
			Set @ReturnValue = 0 
			SET @ErrorCode = @@ERROR  -- 0
			--SET @ErrorMessage = ERROR_PROCEDURE() + 'Message' + ERROR_MESSAGE() 
      END
  
END CATCH



 -- @ErrorCode: 1 for Success and 0 for Failure    




GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCountry]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Faizan Amjad
-- Create date: 15-Oct-2017
-- Description:	Insert Organization 
-- =============================================
Create PROCEDURE [dbo].[sp_InsertCountry] 
	@Name varchar(max),
	@NSId int,
	@ReturnValue int output,
	@ErrorCode int output,
	@ErrorMessage varchar(max)
AS
BEGIN TRAN

BEGIN TRY
   

           INSERT INTO thac_country
               (   
                   Name, 
				   NSId
               )
           VALUES
           (    
                 @Name,
				 @NSId             
           )
      
	    Set @ReturnValue = @@IDENTITY
		SET @ErrorCode = @@ERROR  -- 1
		SET @ErrorMessage = 'success'

		  COMMIT TRAN
END TRY

BEGIN CATCH 

IF @@ERROR <> 0
     BEGIN
            ROLLBACK TRAN
			Set @ReturnValue = 0 
			SET @ErrorCode = @@ERROR  -- 0
			SET @ErrorMessage = ERROR_PROCEDURE() + 'Message' + ERROR_MESSAGE() 
      END
  
END CATCH



 -- @ErrorCode: 1 for Success and 0 for Failure    




GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCountry]    Script Date: 26-Jan-2018 12:50:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Faizan Amjad
-- Create date: 15-Oct-2017
-- Description:	Update Country 
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateCountry] 
	@Id int,
	@Name varchar(max),
	@NSId int,
	@ReturnValue int output,
	@ErrorCode int output,
	@ErrorMessage varchar(max)
AS
BEGIN TRAN

BEGIN TRY
   
    if Exists(Select Id from thac_country  where Id = @Id)
				BEGIN
						update [dbo].[thac_country] 
						 set 
						 Name = @Name,
						 NSId = @NSId
						where 
						Id = @Id	

				   SET @ErrorMessage = 'success' 
				END	   
		ELSE
			  BEGIN
					SET @ErrorMessage = 'record doesnot exists' 
			  END


        Set @ReturnValue = @Id
		SET @ErrorCode = @@ERROR  -- 1
		--SET @ErrorMessage = 'success'

		  COMMIT TRAN
END TRY

BEGIN CATCH 

IF @@ERROR <> 0
     BEGIN
            ROLLBACK TRAN
			Set @ReturnValue = 0 
			SET @ErrorCode = @@ERROR  -- 0
			SET @ErrorMessage = ERROR_PROCEDURE() + 'Message' + ERROR_MESSAGE() 
      END
  
END CATCH



 -- @ErrorCode: 1 for Success and 0 for Failure    




GO
USE [master]
GO
ALTER DATABASE [cms_carousel] SET  READ_WRITE 
GO
