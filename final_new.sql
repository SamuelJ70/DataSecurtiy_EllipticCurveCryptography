USE [master]
GO
/****** Object:  Database [ECC_FINAL]    Script Date: 06/27/2018 18:20:02 ******/
CREATE DATABASE [ECC_FINAL] ON  PRIMARY 
( NAME = N'ECC_FINAL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ECC_FINAL.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ECC_FINAL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ECC_FINAL_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ECC_FINAL] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECC_FINAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECC_FINAL] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ECC_FINAL] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ECC_FINAL] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ECC_FINAL] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ECC_FINAL] SET ARITHABORT OFF
GO
ALTER DATABASE [ECC_FINAL] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ECC_FINAL] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ECC_FINAL] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ECC_FINAL] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ECC_FINAL] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ECC_FINAL] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ECC_FINAL] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ECC_FINAL] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ECC_FINAL] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ECC_FINAL] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ECC_FINAL] SET  DISABLE_BROKER
GO
ALTER DATABASE [ECC_FINAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ECC_FINAL] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ECC_FINAL] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ECC_FINAL] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ECC_FINAL] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ECC_FINAL] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ECC_FINAL] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ECC_FINAL] SET  READ_WRITE
GO
ALTER DATABASE [ECC_FINAL] SET RECOVERY FULL
GO
ALTER DATABASE [ECC_FINAL] SET  MULTI_USER
GO
ALTER DATABASE [ECC_FINAL] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ECC_FINAL] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ECC_FINAL', N'ON'
GO
USE [ECC_FINAL]
GO
/****** Object:  Table [dbo].[FileLog]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileLog](
	[logId] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[share_id] [int] NULL,
	[LogType] [int] NULL,
	[LogDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File_Master]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Master](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_path] [nvarchar](max) NULL,
	[key_value] [nvarchar](50) NULL,
	[file_name] [nvarchar](max) NULL,
	[FileKey] [image] NULL,
	[IV] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[File_Master] ON
INSERT [dbo].[File_Master] ([file_id], [file_path], [key_value], [file_name], [FileKey], [IV]) VALUES (1, N'van_enc1.jpg', N'D6dwG5b5QfLsCpTL', N'van.jpg', 0x398BF775C492FA44AF5BB2D8820E48D2F5AADA24D95E27C39B3775593B9571F5, 0x62223E5E14666E93BB50DCB2036F214F)
INSERT [dbo].[File_Master] ([file_id], [file_path], [key_value], [file_name], [FileKey], [IV]) VALUES (2, N'2_enc1.jpg', N'n7B1DuiIN0m6ZxIH', N'2.jpg', 0xC1178C1720F9F00CBBD40CDF487B937D99298ADB552C0AB2B7CFCCAE9941E976, 0x90F28BCB851B68AFCA1704992C5BCF22)
INSERT [dbo].[File_Master] ([file_id], [file_path], [key_value], [file_name], [FileKey], [IV]) VALUES (3, N'College List_enc1.txt', N'KezM2QyHrzSykUG8', N'College List.txt', 0x6B1F47A45FF483A636BDF8D139E5A72479F9C598E37ED4AE54B2D72595F7DA2C, 0xD93448FA634413E0305F3F0C8DEFEA9D)
INSERT [dbo].[File_Master] ([file_id], [file_path], [key_value], [file_name], [FileKey], [IV]) VALUES (4, N'Alphabets_enc1.docx', N'ototObNbfEhlyMJM', N'Alphabets.docx', 0x2762633B23187227F915CB6DB66FF8055DFA5F1BA2E89508E44F326F3464A83B, 0xD3560B5A8D968A60F06855B6FFFCDB92)
INSERT [dbo].[File_Master] ([file_id], [file_path], [key_value], [file_name], [FileKey], [IV]) VALUES (5, N'research_enc1.txt', N'eSkgUf7TGHnewoGP', N'research.txt', 0xCB28582036F57A77400A2FA3018C3E1D972F1AFAA4FD576121E6F54C07072FC4, 0x83DE2E7EDF61EFE9ED545E4A197E7221)
INSERT [dbo].[File_Master] ([file_id], [file_path], [key_value], [file_name], [FileKey], [IV]) VALUES (6, N'research_enc1.txt', N'TqAj0QA5YG9MQ6Tv', N'research.txt', 0x8BB1EEB54238DA70ECC082B5A41C81F2E0DA24B0275849A88EBAEEA0ADDCBA85, 0x9AFF00331B2E05EC83EC5ADCE9C29472)
SET IDENTITY_INSERT [dbo].[File_Master] OFF
/****** Object:  Table [dbo].[File_Info]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Info](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [nvarchar](50) NULL,
	[key1] [nvarchar](50) NULL,
	[cloud1_file_path] [nvarchar](max) NULL,
	[cloud2_file_path] [nvarchar](max) NULL,
	[cloud3_file_path] [nvarchar](max) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[File_Info] ON
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (1, N'Data.txt', N'ototObNbfEhlyMJM', N'Data_enc1.txt', N'Data_enc2.txt', N'Data_enc3.txt')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (2, N'pp.jpg', N'TqAj0QA5YG9MQ6Tv', N'pp_enc1.jpg', N'pp_enc2.jpg', N'pp_enc3.jpg')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (3, N'The 30-Second Video.mp4', N'hmwhoNoffvOWNqqP', N'The 30-Second Video_enc1.mp4', N'The 30-Second Video_enc2.mp4', N'The 30-Second Video_enc3.mp4')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (4, N'LLL.jpg', N'HhOF5M4iSBDqH9t5', N'LLL_enc1.jpg', N'LLL_enc2.jpg', N'LLL_enc3.jpg')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (5, N'abc.txt', N'49piNgLbCag98txg', N'abc_enc1.txt', N'abc_enc2.txt', N'abc_enc3.txt')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (6, N'DatatExam.txt', N'QHIF1Jy8x0Dx33ND', N'DatatExam_enc1.txt', N'DatatExam_enc2.txt', N'DatatExam_enc3.txt')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (7, N'52175178.jpg', N'SONnbF9VhOTQeMkG', N'52175178_enc1.jpg', N'52175178_enc2.jpg', N'52175178_enc3.jpg')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (8, N'unique.jpg', N'NZoDpCFtMvp4zh7c', N'unique_enc1.jpg', N'unique_enc2.jpg', N'unique_enc3.jpg')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (9, N'van.jpg', N'D6dwG5b5QfLsCpTL', N'van_enc1.jpg', N'van_enc2.jpg', N'van_enc3.jpg')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (10, N'2.jpg', N'n7B1DuiIN0m6ZxIH', N'2_enc1.jpg', N'2_enc2.jpg', N'2_enc3.jpg')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (11, N'College List.txt', N'KezM2QyHrzSykUG8', N'College List_enc1.txt', N'College List_enc2.txt', N'College List_enc3.txt')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (12, N'Alphabets.docx', N'ototObNbfEhlyMJM', N'Alphabets_enc1.docx', N'Alphabets_enc2.docx', N'Alphabets_enc3.docx')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (13, N'research.txt', N'eSkgUf7TGHnewoGP', N'research_enc1.txt', N'research_enc2.txt', N'research_enc3.txt')
INSERT [dbo].[File_Info] ([file_id], [file_name], [key1], [cloud1_file_path], [cloud2_file_path], [cloud3_file_path]) VALUES (14, N'research.txt', N'TqAj0QA5YG9MQ6Tv', N'research_enc1.txt', N'research_enc2.txt', N'research_enc3.txt')
SET IDENTITY_INSERT [dbo].[File_Info] OFF
/****** Object:  Table [dbo].[auto_keys]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auto_keys](
	[key_id] [int] IDENTITY(1,1) NOT NULL,
	[key_value] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auto_keys] ON
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (1, N'HhOF5M4iSBDqH9t5')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (2, N'RSsXECK53QMENjwx')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (3, N'KezM2QyHrzSykUG8')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (4, N'NZoDpCFtMvp4zh7c')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (5, N'hTAN4Pd4pLdbpWek')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (6, N'I4y8UvLFTbXxvnwz')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (7, N'n7B1DuiIN0m6ZxIH')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (8, N'WP3A9IVt9SR0uKtX')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (9, N'D6dwG5b5QfLsCpTL')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (10, N'49piNgLbCag98txg')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (11, N'hmwhoNoffvOWNqqP')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (12, N'p6nYt32NVTLSAcy5')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (13, N'SONnbF9VhOTQeMkG')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (14, N'jrsqOV5Fr5ac0Bks')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (15, N'ZCMXpvaRk7tcNftr')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (16, N'QHIF1Jy8x0Dx33ND')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (17, N'eSkgUf7TGHnewoGP')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (18, N'ototObNbfEhlyMJM')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (19, N'zGr7z0f5AjRiSyYZ')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (20, N'TqAj0QA5YG9MQ6Tv')
INSERT [dbo].[auto_keys] ([key_id], [key_value]) VALUES (21, N'abc456dxfdgy5754rtgdfr')
SET IDENTITY_INSERT [dbo].[auto_keys] OFF
/****** Object:  Table [dbo].[admin_login]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_login](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin_login] ON
INSERT [dbo].[admin_login] ([admin_id], [username], [password]) VALUES (1, N'123', N'123')
SET IDENTITY_INSERT [dbo].[admin_login] OFF
/****** Object:  Table [dbo].[Share_Master]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share_Master](
	[share_id] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[cloud_id] [nvarchar](50) NULL,
	[fid] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Share_Master] ON
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (1, N'Data.txt', N'nivrutikore@gmail.com', N'Cloud', 1)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (2, N'pp.jpg', N'nivrutikore@gmail.com', N'Cloud', 2)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (3, N'The 30-Second Video.mp4', N'nivrutikore@gmail.com', N'Cloud', 3)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (4, N'LLL.jpg', N'nivrutikore@gmail.com', N'Cloud', 4)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (5, N'LLL.jpg', N'guidance@projectideas.co.in', N'Cloud', 4)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (6, N'pp.jpg', N'guidance@projectideas.co.in', N'Cloud', 2)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (7, N'abc.txt', N'nivrutikore@gmail.com', N'Cloud', 5)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (8, N'DatatExam.txt', N'nivrutikore@gmail.com', N'Cloud', 6)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (9, N'52175178.jpg', N'guidance@projectideas.co.in', N'Cloud', 7)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (10, N'52175178.jpg', N'guidance@projectideas.co.in', N'Cloud', 7)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (11, N'52175178.jpg', N'guidance@projectideas.co.in', N'Cloud', 7)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (12, N'unique.jpg', N'guidance@projectideas.co.in', N'Cloud', 7)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (13, N'2.jpg', N'guidance@projectideas.co.in', N'Cloud', 2)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (14, N'College List.txt', N'guidance@projectideas.co.in', N'Cloud', 3)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (15, N'College List.txt', N'guidance@projectideas.co.in', N'Cloud', 3)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (16, N'Alphabets.docx', N'guidance@projectideas.co.in', N'Cloud', 4)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (17, N'research.txt', N'guidance@projectideas.co.in', N'Cloud', 5)
INSERT [dbo].[Share_Master] ([share_id], [file_name], [username], [cloud_id], [fid]) VALUES (18, N'research.txt', N'tejas18mohite@gmail.com', N'Cloud', 5)
SET IDENTITY_INSERT [dbo].[Share_Master] OFF
/****** Object:  Table [dbo].[User_Master]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Master](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[email_id] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User_Master] ON
INSERT [dbo].[User_Master] ([user_id], [full_name], [contact_no], [email_id], [address], [password]) VALUES (1, N'Nivruti B Kore', N'9632587410', N'nivrutikore@gmail.com', N'Ghansoli , New Mumbai', N'12345')
INSERT [dbo].[User_Master] ([user_id], [full_name], [contact_no], [email_id], [address], [password]) VALUES (3, N'chintan', N'9892369017', N'guidance@projectideas.co.in', N'Kandivali-west', N'9A0v0eim')
INSERT [dbo].[User_Master] ([user_id], [full_name], [contact_no], [email_id], [address], [password]) VALUES (4, N'maher', N'9892369017', N'tejas18mohite@gmail.com', N'Kandivali-west', N'PUi5lZbI')
SET IDENTITY_INSERT [dbo].[User_Master] OFF
/****** Object:  StoredProcedure [dbo].[Upload_Data_on_Cloud]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Upload_Data_on_Cloud]
	@file_path nvarchar(200),
	@key_value nvarchar(50),
	@file_name nvarchar(200),
	@FileKey image,
	@IV image
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert Into File_Master values(@file_path,@key_value, @file_name,@FileKey,@IV)
END
GO
/****** Object:  StoredProcedure [dbo].[Select_info]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_info]
	@file_name nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from File_Master where file_name=@file_name
END
GO
/****** Object:  StoredProcedure [dbo].[Select_Data]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Data]
	@file_name nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from File_Master where file_name=@file_name
END
GO
/****** Object:  StoredProcedure [dbo].[CompareKeys]    Script Date: 06/27/2018 18:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CompareKeys]
	@key_value varchar(500)
As
BEGIN
	SET NOCOUNT ON;
	Declare @count int;
	set @count = 0;
	-- Check key id 
	
	Declare @keyValue varchar(500);
	--select @keyValue = key_id from ECC_algorithm.dbo.auto_keys where key_value = @key_value
	Select @keyValue=key_value from File_Master where key_value = @key_value
	if(@keyValue is not null)
	begin		
		begin
			select file_id, file_path,file_name from File_Master where key_value = @keyValue
		end
		
		
 	End
 	else 
 	begin
 		-- key value is wrong
 		
 		return 0;
 	end 
 	
 	 
 	
END
GO
