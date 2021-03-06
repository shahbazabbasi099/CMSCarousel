USE [cms_carousel]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thac_language]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
/****** Object:  Table [dbo].[thac_country]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'00dc06ad-0743-422b-8a79-f14f4a5340cb', N'test@yahoo.com', 0, N'AAHYW7sKvf9HLeOZhs2TywLO1yaljUBUQXyIiaOXesrbjOdFTpUI13UMy5tFC+/nZA==', N'2a107ba4-9302-4197-9044-dbca1863d6fa', NULL, 0, 0, NULL, 1, 0, N'test@yahoo.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', N'test@now.com', 0, N'AEiUQBAJDbrn/p35sRdDcHG0qoevbPvWQ1r7ZrIKfA3XOepMvxFP8MHd1TWl8hWJ3Q==', N'3427810f-65d4-427f-97e0-64a4e5eefb8c', NULL, 0, 0, NULL, 1, 0, N'test@now.com', N'Test', N'User')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'92042ba7-f6f4-4ba7-8547-c361417c52bc', N'dev@now.com', 0, N'AEEML22uViXpu56aoDlDgD8/OU0Pm0o/7075V31CGJEcD387v3Qdji268adKPgamFA==', N'9e9448b4-28a0-40cd-a06f-90a74ac76119', NULL, 0, 0, NULL, 1, 0, N'dev@now.com', N'developer', N'account')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'd6354812-3542-4691-8b0a-eaeb1189e590', N'demo@now.com', 0, N'ANZZFalhXsi47FN3sFDnNVJLUcH2yg63OHKY9yg3b7qX1c4FYoRKwJRWMdsXsioKeg==', N'7d2d4fdc-fd8a-46cb-8224-bcc508ab76a5', NULL, 0, 0, NULL, 1, 0, N'demo@now.com', N'Demo', N'Now')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'f73c34f9-5fe5-424c-a3f2-86167509b228', N'test@cms.com', 0, N'ADpIshnloZHAmKrM6RP1bHiBdo/DM1JDqF3gbUdO5q9vRsKEpcAjN2NI2sq7WgPx0w==', N'514ee67c-2394-45dd-8afb-5772e3cbb4e8', NULL, 0, 0, NULL, 1, 0, N'test@cms.com', N'CMS Test', N'User')
/****** Object:  Table [dbo].[thac_service]    Script Date: 02/21/2018 17:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thac_service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[ServiceCode] [nvarchar](250) NULL,
 CONSTRAINT [PK_thacservice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[thac_service] ON
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (1, N'Call', CAST(0x0000A84900BD1BD2 AS DateTime), N'Call.png', N'call')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (2, N'Message', CAST(0x0000A84900BD23B6 AS DateTime), N'Messages.png', N'message')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (3, N'Top Up', CAST(0x0000A84900BD3114 AS DateTime), N'TopUp.png', N'topup')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (4, N'Settings', CAST(0x0000A84900BD39FB AS DateTime), N'Settings.png', N'settings')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (5, N'Plus One', CAST(0x0000A84900BD3EA8 AS DateTime), N'PlusOne.png', N'plusone')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (6, N'Account', CAST(0x0000A84A00BFAB76 AS DateTime), N'Account.png', N'account')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (7, N'Bundles', CAST(0x0000A84A00BFC588 AS DateTime), N'Bundles.png', N'bundles')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (8, N'Help', CAST(0x0000A84A00BFE3E6 AS DateTime), N'Help.png', N'help')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (9, N'Rates', CAST(0x0000A84A00BFF95B AS DateTime), N'Rates.png', N'rates')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (10, N'Transfer', CAST(0x0000A84A00C072A2 AS DateTime), N'Transfer.png', N'transfer')
INSERT [dbo].[thac_service] ([Id], [Name], [CreatedDate], [ImageUrl], [ServiceCode]) VALUES (11, N'Invite', CAST(0x0000A87200ECE216 AS DateTime), N'Invite.png', N'invite')
SET IDENTITY_INSERT [dbo].[thac_service] OFF
/****** Object:  Table [dbo].[thac_languageoption]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[thac_languageoption] ON
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (33, 15, 8)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (34, 19, 10)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (35, 1, 1)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (36, 15, 7)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (37, 15, 4)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (38, 15, 3)
INSERT [dbo].[thac_languageoption] ([Id], [CountryId], [LanguageId]) VALUES (39, 15, 5)
SET IDENTITY_INSERT [dbo].[thac_languageoption] OFF
/****** Object:  Table [dbo].[AspnetUserRoles]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspnetUserLogins]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/21/2018 17:29:57 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCountry]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertCountry]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_DeleteCountry]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetAllServcies]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetAllLanguages]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetAllCountries]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  Table [dbo].[thac_serviceoption]    Script Date: 02/21/2018 17:29:57 ******/
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
	[CreatedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UpdatedUserId] [nvarchar](128) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[thac_serviceoption] ON
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (98, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 33, N'Account', N'Austria - Dutch - Account - C1', CAST(0x0000A8780130586F AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8780130586F AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (99, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 33, N'Account c2', N'Austria - Dutch - Account - C2', CAST(0x0000A87801307D00 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87801310F76 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (100, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 33, N'Account c3', N'Austria - Dutch - Account - C3', CAST(0x0000A8780130B155 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8780130B155 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (101, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 33, N'Account c4', N'Austria - Dutch - Account - C4', CAST(0x0000A87801310F76 AS DateTime), 1, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87801310F76 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (102, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 8, 34, N'Help c1', N'Norway - Portuguese - Help - C1', CAST(0x0000A87801317226 AS DateTime), 1, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87801317226 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (103, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 35, N'Account', N'Uk - English - Account - Content 1', CAST(0x0000A878013827A3 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A878013827A3 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (104, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 6, 35, N'Account 2', N'Uk - English - Account - Content 2', CAST(0x0000A87801385D32 AS DateTime), 1, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87801385D32 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (105, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 1, 33, N'Call''s', N'gg', CAST(0x0000A8790120C44C AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790120C44C AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (106, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 36, N'Settings ', N'!`~@#$%^&*()-_=+[{]}\|''";:,./?', CAST(0x0000A8790122586F AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790122586F AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (107, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 9, 33, N'Rates !`~@#$%^&*()-_=+[{]}\|''";:,./?', N'ggggg !`~@#$%^&*()-_=+[{]}\|''";:,./?', CAST(0x0000A8790122E236 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790122E236 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (108, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 8, 33, N'Help', N'Google Translate is een gratis meertalige automatische vertaaldienst die is ontwikkeld door Google om tekst van de ene taal naar de andere te vertalen. Het biedt een website-interface, mobiele apps voor Android en iOS, en een API waarmee ontwikkelaars browser-extensies en softwaretoepassingen kunnen bouwen. Google Vertalen ondersteunt meer dan 100 talen op verschillende niveaus en bedient vanaf mei 2017 dagelijks meer dan 500 miljoen mensen', CAST(0x0000A879012403B8 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012403B8 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (109, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 8, 33, N'Help', N'
Google????Google?????????????????,?????????????????????????????,??Android?iOS???????,???????????????????????API? Google?????????100????,??2017?5?,?????5??????', CAST(0x0000A879012460B3 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012460B3 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (110, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 8, 33, N'Help', N'
Google????Google?????????????????,?????????????????????????????,??Android?iOS???????,???????????????????????API? Google?????????100????,??2017?5?,?????5??????', CAST(0x0000A87901255662 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87901255662 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (111, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 11, 33, N'NInvite Chinese', N'N
Google翻译是由Google开发的一种免费的多语言机器翻译服务，用于将文本从一种语言翻译成另一种语言。它提供了一个网站界面，用于Android和iOS的移动应用程序，以及帮助开发人员构建浏览器扩展和软件应用程序的API。 Google翻译支持各种级别的100多种语言，截至2017年5月，每天为超过5亿人提供服务', CAST(0x0000A87901299F50 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87901299F50 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (112, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 11, 33, N'NInvite Chinese', N'Nfff', CAST(0x0000A8790129E0E7 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790129E0E7 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (113, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 33, N'NSett', N'Nhhhhhhh', CAST(0x0000A879012AFD91 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012AFD91 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (114, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 33, N'N Google翻译是由Google开发的一种', N'N
Google翻译是由Google开发的一种免费的多语言机器翻译服务，用于将文本从一种语言翻译成另一种语言。它提供了一个网站界面，用于Android和iOS的移动应用程序，以及帮助开发人员构建浏览器扩展和软件应用程序的API。 Google翻译支持各种级别的100多种语言，截至2017年5月，每天为超过5亿人提供服务', CAST(0x0000A879012B2ABC AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012B2ABC AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (115, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 33, N' Google翻译是由Google开发的一种', N'
Google翻译是由Google开发的一种免费的多语言机器翻译服务，用于将文本从一种语言翻译成另一种语言。它提供了一个网站界面，用于Android和iOS的移动应用程序，以及帮助开发人员构建浏览器扩展和软件应用程序的API。 Google翻译支持各种级别的100多种语言，截至2017年5月，每天为超过5亿人提供服务', CAST(0x0000A879012D5EC7 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012D5EC7 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (116, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 33, N' 翻译是由Google开发的一种', N'Google翻譯是由Google開發的一種免費的多語言機器翻譯服務，用於將文本從一種語言翻譯成另一種語言。它提供了一個網站界面，用於Android和iOS的移動應用程序，以及幫助開發人員構建瀏覽器擴展和軟件應用程序的API。 Google翻譯支持各種級別的100多種語言，截至2017年5月，每天為超過5億人提供服務', CAST(0x0000A879012DEF72 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012DEF72 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (117, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 37, N'Google Traduction est un service de traduction', N'Google Traduction est un service de traduction automatique multilingue gratuit développé par Google pour traduire du texte d''une langue à une autre. Il propose une interface de site Web, des applications mobiles pour Android et iOS et une API qui aide les développeurs à créer des extensions de navigateur et des applications logicielles. Google Traduction prend en charge plus de 100 langues à différents niveaux et à partir de mai 2017, sert plus de 500 millions de personnes par jou', CAST(0x0000A879012EFDB6 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012EFDB6 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (118, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 38, N'Google Übersetzer ist ein kostenloser mehrsprachiger ', N'Google Übersetzer ist ein kostenloser mehrsprachiger maschineller Übersetzungsdienst, der von Google entwickelt wurde, um Texte von einer Sprache in eine andere zu übersetzen. Es bietet eine Website-Schnittstelle, mobile Apps für Android und iOS sowie eine API, die Entwickler beim Aufbau von Browsererweiterungen und Softwareanwendungen unterstützt. Google Translate unterstützt mehr als 100 Sprachen auf verschiedenen Ebenen und bedient ab Mai 2017 täglich über 500 Millionen Menschen', CAST(0x0000A879012F8D90 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879012F8D90 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (119, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 38, N'Google Translate - бесплатная многоязычная служба ', N'Google Translate - бесплатная многоязычная служба машинного перевода, разработанная Google, для перевода текста с одного языка на другой. Он предлагает интерфейс веб-сайта, мобильные приложения для Android и iOS и API, который помогает разработчикам создавать расширения браузера и программные приложения. Google Translate поддерживает более 100 языков на разных уровнях и по состоянию на май 2017 года ежедневно обслуживает более 500 миллионов человек', CAST(0x0000A87901306E0D AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87901306E0D AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (120, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 38, N'Google Translate är en gratis flerspråkig maskin ', N'Google Translate är en gratis flerspråkig maskin översättningstjänst som utvecklats av Google, för att översätta text från ett språk till ett annat. Den erbjuder ett webbplatsgränssnitt, mobilappar för Android och iOS och ett API som hjälper utvecklare att bygga webbläsartillägg och program. Google Translate stöder över 100 språk på olika nivåer och tjänar över 500 miljoner människor per maj 2017', CAST(0x0000A8790130FC6E AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790130FC6E AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (121, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 38, N'Google अनुवाद एक नि: शुल्क बहुभाषी मशीन अनुवाद सेवा है', N'
Google अनुवाद एक नि: शुल्क बहुभाषी मशीन अनुवाद सेवा है जिसे गूगल द्वारा विकसित किया गया है, ताकि एक भाषा में पाठ को दूसरे भाषा में अनुवाद किया जा सके। इसमें एक वेबसाइट इंटरफ़ेस, एंड्रॉइड और आईओएस के लिए मोबाइल ऐप, और एपीआई प्रदान करता है जो डेवलपर्स को ब्राउज़र एक्सटेंशन और सॉफ्टवेयर एप्लीकेशन बनाने में मदद करता है। Google अनुवाद विभिन्न स्तरों पर 100 से अधिक भाषाओं का समर्थन करता है और मई 2017 तक रोजाना 500 मिलियन से अधिक लोगों को सेवा प्रदान करता ', CAST(0x0000A87901316787 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87901316787 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (122, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 38, N'خدمة الترجمة من غوغل هي خدمة الترجمة الآلية المجانية متعددة اللغات التي ', N'خدمة الترجمة من غوغل هي خدمة الترجمة الآلية المجانية متعددة اللغات التي طورتها غوغل لترجمة النص من لغة إلى لغة أخرى. وهو يوفر واجهة على شبكة الإنترنت، تطبيقات الجوال لالروبوت ودائرة الرقابة الداخلية، و أبي التي تساعد المطورين بناء ملحقات المتصفح وتطبيقات البرمجيات. تدعم خدمة الترجمة من غوغل أكثر من 100 لغة على مختلف المستويات، وحتى أيار (مايو) 2017، تخدم أكثر من 500 مليون شخص يوميا', CAST(0x0000A8790131B514 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790131B514 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (123, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 39, N'Google Translate es un servicio gratuito de traducción', N'
Google Translate es un servicio gratuito de traducción automática multilingüe desarrollado por Google para traducir texto de un idioma a otro. Ofrece una interfaz de sitio web, aplicaciones móviles para Android e iOS, y una API que ayuda a los desarrolladores a construir extensiones de navegador y aplicaciones de software. Google Translate admite más de 100 idiomas en varios niveles y, a partir de mayo de 2017, atiende a más de 500 millones de personas a diario.', CAST(0x0000A87901324B7E AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87901324B7E AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (124, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 36, N'Η Μετάφραση Google είναι μια δωρεάν υπηρεσία ', N'
Η Μετάφραση Google είναι μια δωρεάν υπηρεσία πολυγλωσσικής μετάφρασης που αναπτύχθηκε από την Google για να μεταφράσει κείμενο από τη μία γλώσσα στην άλλη. Προσφέρει μια διεπαφή ιστότοπου, εφαρμογές για κινητά για Android και iOS και ένα API που βοηθά τους προγραμματιστές να αναπτύξουν επεκτάσεις προγράμματος περιήγησης και εφαρμογές λογισμικού. Η Μετάφραση Google υποστηρίζει πάνω από 100 γλώσσες σε διάφορα επίπεδα και από τον Μάιο του 2017 εξυπηρετεί πάνω από 500 εκατομμύρια άτομα ημερησίω', CAST(0x0000A8790132C826 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A8790132C826 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (125, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 36, N'ssss - !`~@#$%^&*()-_=+[{]}\|''";:,./?', N'!`~@#$%^&*()-_=+[{]}\|''";:,./?', CAST(0x0000A879013327B3 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A879013327B3 AS DateTime))
INSERT [dbo].[thac_serviceoption] ([Id], [CreatedUserId], [ServiceId], [LanguageOptionId], [ContentTitle], [ContentMessage], [CreatedDate], [IsActive], [UpdatedUserId], [UpdatedDate]) VALUES (126, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', 4, 36, N'Settings', N'Settings  simple text', CAST(0x0000A87901335427 AS DateTime), 0, N'62431dbb-fffe-4fe9-9a23-64db8ddc1c35', CAST(0x0000A87901335427 AS DateTime))
SET IDENTITY_INSERT [dbo].[thac_serviceoption] OFF
/****** Object:  StoredProcedure [dbo].[sp_GetAllContent]    Script Date: 02/21/2018 17:30:01 ******/
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


 select v5.ServiceOptionId,v5.Country,v5.Language ,v5.ServiceName,v5.ServiceId,v5.LanguageId,v5.CountryId,v5.ContentTitle, v5.ContentMessage,v5.UserName as CreatedUserName,v5.CreatedDate,v5.IsActive, v5.UpdatedDate,	usr2.UserName as UpdatedUserName
from (select v4.ServiceOptionId,v4.Country, v4.CountryId ,lng.Name as Language,v4.ServiceName, v4.ServiceId,v4.LanguageId,v4.ContentTitle ,v4.ContentMessage,v4.UserName,v4.CreatedDate,v4.IsActive, v4.UpdatedUserId,v4.UpdatedDate 
from(select v3.[ContentTitle],cnt.Id as CountryId, v3.[ContentMessage],v3.[CreatedDate],v3.[IsActive],v3.[UpdatedUserId],v3.[UpdatedDate], v3.UserName, v3.LanguageId ,cnt.Name as Country, v3.ServiceName, v3.ServiceId,v3.ServiceOptionId from (select v2.ServiceOptionId,v2.ServiceName, v2.ServiceId,v2.[ContentMessage],v2.[ContentTitle],v2.[CreatedDate],v2.[IsActive],v2.[UpdatedUserId],v2.[UpdatedDate], v2.UserName, lngOp.CountryId,lngOp.LanguageId 
from(select v1.ServiceOptionId,v1.[LanguageOptionId],v1.[ContentTitle],v1.[ContentMessage],v1.[CreatedDate],v1.[IsActive],v1.[UpdatedUserId],v1.[UpdatedDate], usr.UserName, v1.ServiceName, v1.[ServiceId] from (select SoP.ServiceOptionId,SoP.[LanguageOptionId],SoP.[ContentMessage],SoP.[ContentTitle],SoP.[CreatedDate],SoP.[IsActive],SoP.[UpdatedUserId],SoP.[UpdatedDate],SoP.CreatedUserId,srv.Name as ServiceName, srv.Id as ServiceId 
from (select [CreatedUserId],[ServiceId],[LanguageOptionId],[ContentTitle],[ContentMessage],[CreatedDate],[IsActive],[UpdatedUserId],[UpdatedDate], Id as ServiceOptionId from thac_serviceoption (nolock)) as SoP inner join thac_service (nolock) srv
on srv.id = SoP.ServiceId) v1 inner join AspNetUsers (nolock) usr on usr.id= v1.CreatedUserId)
 as v2 inner join thac_languageoption (nolock) lngOp on lngOp.Id=v2.LanguageOptionId)
 as v3 inner join thac_Country (nolock) cnt on cnt.Id=v3.CountryId) as v4
 inner join thac_Language (nolock) lng on lng.Id=v4.LanguageId) as v5
 inner join AspNetUsers usr2 (nolock) on usr2.Id = v5.UpdatedUserId
 order by ServiceOptionId desc


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
/****** Object:  StoredProcedure [dbo].[sp_InsertContent]    Script Date: 02/21/2018 17:30:01 ******/
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
	@ContentTitle nvarchar(max),
	@ContentMessage nvarchar(max),
	@IsActive bit,
	@ReturnValue int output,
	@ErrorCode int output
	--@ErrorMessage varchar(250)
AS

--Set NoCount On

BEGIN TRAN

BEGIN TRY
  
  BEGIN
   DECLARE @LangageOptionID int
   Set @LangageOptionID = (SELECT id FROM thac_languageoption WHERE CountryId = @CountryId AND LanguageId = @LanguageId )
   
   IF @LangageOptionID  IS NULL 			
			BEGIN
			--print 'not found @@LangageOptionID'
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
--	ELSE 
	      -- print 'found @@LangageOptionID get @ServiceOptionId'
		  -- DECLARE @ServiceOptionId int 
	      -- Set @ServiceOptionId = (SELECT id FROM thac_serviceoption 
	      -- WHERE LanguageOptionId = @LangageOptionID 
		  -- AND ServiceId = @ServiceId )

  --if @ServiceOptionId IS NULL
	
	          BEGIN
               --print 'add new record to service option'
			   --print 'not found @ServiceOptionId'
				 
					IF (@IsActive = 'True')
					Begin
						-- Make old entry as 'IsActive' 
						
						Update thac_serviceoption set IsActive = 'False', UpdatedUserId = @UserId, UpdatedDate = GETDATE()
						where ServiceId = @ServiceId and LanguageOptionId = @LangageOptionID and IsActive = 'True'
						
					End
					
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
						 N''+@ContentTitle+'', 
						 N''+@ContentMessage+'', 
						 @LangageOptionID,
						 @IsActive,
						 @UserId
				   )
				   
				   
					SET  @ReturnValue = SCOPE_IDENTITY()
					SET @ErrorCode = @@ERROR  -- 1
					--SET @ErrorMessage = 'success'

					--print 'added @ServiceOption record '
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

--IF @@ERROR <> 0
    
	 BEGIN
            ROLLBACK TRAN
			Set @ReturnValue = 0 
			SET @ErrorCode = @@ERROR  -- 0
			--SET @ErrorMessage = ERROR_PROCEDURE() + 'Message' + ERROR_MESSAGE() 
      END
  
END CATCH



 -- @ErrorCode: 1 for Success and 0 for Failure
GO
/****** Object:  StoredProcedure [dbo].[sp_GetContentByServcieOptionId]    Script Date: 02/21/2018 17:30:01 ******/
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
Create PROCEDURE [dbo].[sp_GetContentByServcieOptionId] 
	@serviceOptionId int 
	

AS
   
    
BEGIN
		
	    SELECT  id ,ContentMessage,ContentTitle, IsActive, ServiceId 
	          FROM thac_serviceoption (nolock)   WHERE 
	          id = @serviceOptionId  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetContentByServcieId]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetContentByNSId]    Script Date: 02/21/2018 17:30:01 ******/
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
/****** Object:  Default [DF_thac_service_crdate]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_service] ADD  CONSTRAINT [DF_thac_service_crdate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_thac_serviceoption_crdate]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_serviceoption] ADD  CONSTRAINT [DF_thac_serviceoption_crdate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_thac_serviceoption_UpdatedDate]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_serviceoption] ADD  CONSTRAINT [DF_thac_serviceoption_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[AspnetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspnetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[AspnetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspnetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[AspnetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspnetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_thaclanguageoption_thaccountry]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_languageoption]  WITH CHECK ADD  CONSTRAINT [FK_thaclanguageoption_thaccountry] FOREIGN KEY([CountryId])
REFERENCES [dbo].[thac_country] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_languageoption] CHECK CONSTRAINT [FK_thaclanguageoption_thaccountry]
GO
/****** Object:  ForeignKey [FK_thaclanguageoption_thaclanguage]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_languageoption]  WITH CHECK ADD  CONSTRAINT [FK_thaclanguageoption_thaclanguage] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[thac_language] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_languageoption] CHECK CONSTRAINT [FK_thaclanguageoption_thaclanguage]
GO
/****** Object:  ForeignKey [FK_content_aspnetusers]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_content_aspnetusers] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_content_aspnetusers]
GO
/****** Object:  ForeignKey [FK_thac_serviceoption_AspNetUsers]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_thac_serviceoption_AspNetUsers] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_thac_serviceoption_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_thac_serviceoption_thac_service]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_thac_serviceoption_thac_service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[thac_service] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_thac_serviceoption_thac_service]
GO
/****** Object:  ForeignKey [FK_thacserviceoption_thaclanguageoption]    Script Date: 02/21/2018 17:29:57 ******/
ALTER TABLE [dbo].[thac_serviceoption]  WITH CHECK ADD  CONSTRAINT [FK_thacserviceoption_thaclanguageoption] FOREIGN KEY([LanguageOptionId])
REFERENCES [dbo].[thac_languageoption] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[thac_serviceoption] CHECK CONSTRAINT [FK_thacserviceoption_thaclanguageoption]
GO
