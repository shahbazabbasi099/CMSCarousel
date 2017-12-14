USE [master]
GO
/****** Object:  Database [cms_carousel]    Script Date: 12-Dec-2017 6:24:55 PM ******/
CREATE DATABASE [cms_carousel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CMSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CMSDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CMSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CMSDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cms_carousel] SET COMPATIBILITY_LEVEL = 120
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
ALTER DATABASE [cms_carousel] SET RECOVERY FULL 
GO
ALTER DATABASE [cms_carousel] SET  MULTI_USER 
GO
ALTER DATABASE [cms_carousel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cms_carousel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cms_carousel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cms_carousel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cms_carousel] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'cms_carousel', N'ON'
GO
USE [cms_carousel]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[AspnetUserLogins]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[AspnetUserRoles]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[thac_country]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[thac_language]    Script Date: 12-Dec-2017 6:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_thac_language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_languageoption]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
/****** Object:  Table [dbo].[thac_service]    Script Date: 12-Dec-2017 6:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedUserId] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_thacservice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thac_serviceoption]    Script Date: 12-Dec-2017 6:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_serviceoption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUserId] [nvarchar](128) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[LanguageOptionId] [int] NOT NULL,
	[ContentMessage] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[thac_service] ADD  CONSTRAINT [DF_thac_service_crdate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[thac_serviceoption] ADD  CONSTRAINT [DF_thac_serviceoption_crdate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
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
/****** Object:  StoredProcedure [dbo].[sp_GetAllCountries]    Script Date: 12-Dec-2017 6:24:55 PM ******/
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
			from thac_country (nolock) 
END

GO
USE [master]
GO
ALTER DATABASE [cms_carousel] SET  READ_WRITE 
GO
