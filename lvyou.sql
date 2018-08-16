USE [master]
GO
/****** Object:  Database [WDGZ_LvYou]    Script Date: 2018/6/17 10:34:39 ******/
CREATE DATABASE [WDGZ_LvYou]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WDGZ_LvYou', FILENAME = N'E:\MSSQL11.MSSQLSERVER\MSSQL\DATA\WDGZ_LvYou.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WDGZ_LvYou_log', FILENAME = N'E:\MSSQL11.MSSQLSERVER\MSSQL\DATA\WDGZ_LvYou_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WDGZ_LvYou] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WDGZ_LvYou].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WDGZ_LvYou] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET ARITHABORT OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WDGZ_LvYou] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WDGZ_LvYou] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WDGZ_LvYou] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WDGZ_LvYou] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WDGZ_LvYou] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET RECOVERY FULL 
GO
ALTER DATABASE [WDGZ_LvYou] SET  MULTI_USER 
GO
ALTER DATABASE [WDGZ_LvYou] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WDGZ_LvYou] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WDGZ_LvYou] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WDGZ_LvYou] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WDGZ_LvYou', N'ON'
GO
USE [WDGZ_LvYou]
GO
/****** Object:  Table [dbo].[GongKaiXinXi]    Script Date: 2018/6/17 10:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GongKaiXinXi](
	[BianHao] [int] IDENTITY(1,1) NOT NULL,
	[BiaoTi] [nvarchar](30) NOT NULL,
	[NeiRong] [nvarchar](max) NULL,
	[TuPian] [image] NULL,
	[LeiXing] [nvarchar](20) NULL,
	[FaBuShiJian] [datetime] NULL,
	[FaBuDanWei] [nvarchar](20) NULL,
	[ZuoZe] [nvarchar](20) NULL,
	[LiuLanCiShu] [int] NULL,
	[BeiZhu] [nvarchar](200) NULL,
 CONSTRAINT [PK_GongKaiXinXi] PRIMARY KEY CLUSTERED 
(
	[BianHao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LiuYanBan]    Script Date: 2018/6/17 10:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LiuYanBan](
	[BianHao] [int] IDENTITY(1,1) NOT NULL,
	[BiaoTi] [nchar](10) NOT NULL,
	[NeiRong] [nvarchar](200) NULL,
	[LiuYanRen] [nvarchar](12) NULL,
	[EMail] [nvarchar](20) NULL,
	[DianHua] [nvarchar](12) NULL,
	[BiaoQing] [varbinary](max) NULL,
	[LiuYanShiJian] [datetime] NULL,
	[HuiFuZhuangTai] [nvarchar](10) NULL,
	[HuiFuNeiRong] [nvarchar](200) NULL,
	[HuiFuShiJian] [datetime] NULL,
	[HuiFuRen] [nvarchar](12) NULL,
	[BeiZhu] [nvarchar](200) NULL,
 CONSTRAINT [PK_LiuYanBan] PRIMARY KEY CLUSTERED 
(
	[BianHao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LvYouGuiHuaXinXi]    Script Date: 2018/6/17 10:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvYouGuiHuaXinXi](
	[GHXMBianHao] [nchar](12) NOT NULL,
	[GHXMMingCheng] [nvarchar](50) NOT NULL,
	[GHXMJieShao] [nvarchar](200) NULL,
	[GuiHuaFanWei] [nvarchar](50) NULL,
	[GuiHuaMianJi] [nvarchar](20) NULL,
	[GuiHuaNianXian] [nvarchar](20) NULL,
	[GuiHuaMuBiao] [nvarchar](50) NULL,
	[GuiHuaRenWu] [nvarchar](50) NULL,
	[GuiHuaTu] [image] NULL,
	[GuiHuaShiJian] [datetime] NULL,
	[GuiHuaDanWei] [nvarchar](20) NULL,
	[FuZeRen] [nvarchar](20) NULL,
	[BeiZhu] [nvarchar](200) NULL,
 CONSTRAINT [PK_LvYouGuiHuaXinXi] PRIMARY KEY CLUSTERED 
(
	[GHXMBianHao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LvYouJingDianXinXi]    Script Date: 2018/6/17 10:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvYouJingDianXinXi](
	[JDBianHao] [int] IDENTITY(1,1) NOT NULL,
	[JDMingCheng] [nvarchar](50) NOT NULL,
	[JDJieShao] [nvarchar](200) NULL,
	[JDWeiZhi] [nvarchar](50) NULL,
	[JingDu] [nvarchar](10) NULL,
	[WeiDu] [nvarchar](10) NULL,
	[TuPian] [image] NULL,
	[LiuLanCiShu] [int] NULL,
	[FBShiJian] [datetime] NULL,
	[BeiZhu] [nvarchar](200) NULL,
 CONSTRAINT [PK_LvYouJingDianXinXi] PRIMARY KEY CLUSTERED 
(
	[JDBianHao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YouQingLianJie]    Script Date: 2018/6/17 10:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YouQingLianJie](
	[BianHao] [int] IDENTITY(1,1) NOT NULL,
	[WZMingCheng] [nvarchar](20) NOT NULL,
	[DiZhi] [nvarchar](30) NULL,
 CONSTRAINT [PK_YouQingLianJie] PRIMARY KEY CLUSTERED 
(
	[BianHao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[GongKaiXinXi] ON 

INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (199, N'SDGDSFGD', N'', NULL, N'通报', CAST(0x0000A8C5016E2CA5 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (204, N'11xxxx', N'', NULL, N'新闻', CAST(0x0000A8D00096B7A2 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (205, N'1111111111dddd', N'%3Cp%20style%3D%22text-align%3A%20left%3B%22%3E%3Cspan%20style%3D%22font-size%3A%2018px%3B%22%3E%3Cspan%20style%3D%22font-family%3A%20%u6977%u4F53%2C%20%u6977%u4F53_GB2312%2C%20SimKai%3B%22%3E%3Cstrong%3E%u5B8C%u6210%u4E00%u4E2A%u4FE1%u606F%u7BA1%u7406%u7CFB%u7EDF%uFF08%u7CFB%u7EDF%u540D%u5B57%u53EF%u4EE5%u6839%u636E%u81EA%u5DF1%u719F%u6089%u7684%u7CFB%u7EDF%u6D41%u7A0B%u6765%u505A%uFF0C%u4E5F%u53EF%u4EE5%u505A%u5B66%u751F%u4FE1%u606F%u7BA1%u7406%u7CFB%u7EDF%uFF09%uFF0C%u81F3%u5C11%u6709%u4E24%u7C7B%u7528%u6237%u6743%u9650%uFF0C%u4E00%u7C7B%u666E%u901A%u7528%u6237%uFF0C%u4E00%u7C7B%u7BA1%u7406%u5458%u7528%u6237%uFF0C%u6309%u71674%u4E2A%u6B65%u9AA4%u5B8C%u6210%u7CFB%u7EDF%u5F00%u53D1%uFF1A%3Cbr/%3E%uFF081%uFF09%u5148%u505A%u7CFB%u7EDF%u7684%u529F%u80FD%u9700%u6C42%uFF0C%u4EE5%u6587%u5B57%u7684%u5F62%u5F0F%u5F62%u6210%u7CFB%u7EDF%u7684%u9700%u6C42%u5206%u6790%u62A5%u544A%3Cbr/%3E%uFF082%uFF09%u8BBE%u8BA1%u6570%u636E%u8868%uFF0C%u5C06%u8868%u8BBE%u8BA1%u4E5F%u52A0%u5165%u5230%u9700%u6C42%u5206%u6790%u62A5%u544A%3Cbr/%3E%uFF083%uFF09%u753B%u51FA%u7CFB%u7EDF%u6267%u884C%u6D41%u7A0B%uFF0C%u7528visio%u753B%uFF0C%u653E%u5165%u5230%u9700%u6C42%u5206%u6790%u62A5%u544A%u4E2D%3Cbr/%3E%uFF084%uFF09%u7F16%u7801%uFF0C%u4E0D%u9700%u8981%u653E%u5230%u9700%u6C42%u5206%u6790%u62A5%u544A%u4E2D%3C/strong%3E%3Cbr/%3E%3C/span%3E%3C/span%3E%3Cbr/%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8D000981FAB AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (206, N'qqqqqq', N'', NULL, N'政策法规', CAST(0x0000A8D000988F61 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (207, N'111aa', N'', NULL, N'通报', CAST(0x0000A8E500AFBF28 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (208, N'111111111', N'%3Cp%3E111111111111111%3C/p%3E', NULL, N'政策法规', CAST(0x0000A8E600EC37DB AS DateTime), N'111111111111111', N'111111111111111111', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (212, N'问问我', N'%3Cp%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8BF01537E47 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (213, N'阿萨 ', N'', NULL, N'新闻', CAST(0x0000A8C0010A960E AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (214, N'A ', N'', NULL, N'新闻', CAST(0x0000A8C4016E0D3D AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (215, N'SDGDSFGD', N'', NULL, N'通报', CAST(0x0000A8C5016E2CA5 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (216, N'1111', N'%3Ctable%3E%3Ctbody%3E%3Ctr%20class%3D%22firstRow%22%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%22106%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Cp%3E%3Cbr/%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8C600A060AB AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (217, N'闪烁的焚石', N'%3Ctable%3E%3Ctbody%3E%3Ctr%20class%3D%22firstRow%22%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%u6240%u5F97%u5230%u7684%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%u7684%u7684%u7684%20%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20style%3D%22word-break%3A%20break-all%3B%22%20width%3D%2268%22%20valign%3D%22top%22%3E2222%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20style%3D%22word-break%3A%20break-all%3B%22%20width%3D%2268%22%20valign%3D%22top%22%3E2222%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3Ctd%20width%3D%2268%22%20valign%3D%22top%22%3E%3Cbr/%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Cp%3E%3Cbr/%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8C700A08179 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (218, N'1232', N'%3Cp%3E%3Cstrong%3E%3Cem%3E%3Cspan%20style%3D%22text-decoration%3A%20line-through%3B%22%3E12345654321%3C/span%3E%3C/em%3E%3C/strong%3E%3Cbr/%3E%3C/p%3E', NULL, N'通报', CAST(0x0000A8C800A0CC15 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (219, N'你住的', N'%3Cp%20style%3D%22text-align%3A%20left%3B%22%3E%3Cimg%20src%3D%22%20/upload/image/20180421/6365990986648703964565325.jpg%22%20title%3D%22gr68.jpg%22%20alt%3D%22gr68.jpg%22%20width%3D%22494%22%20height%3D%22333%22/%3E%3C/p%3E%3Cp%20style%3D%22text-align%3A%20left%3B%22%3E%3Cspan%20style%3D%22font-family%3A%20arial%2C%20helvetica%2C%20sans-serif%3B%22%3E%3Cstrong%3E%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%20%u6211%u662F%u52A8%u611F%u8D85%u4EBA%u54C8%u54C8%u54C8%u54C8%u65B0%u534E%u793E%u6210%u90FD5%u670812%u65E5%u7535%20%u6C76%u5DDD%u5730%u9707%u5341%u5468%u5E74%u56FD%u9645%u7814%u8BA8%u4F1A%u66A8%u7B2C%u56DB%u5C4A%u5927%u9646%u5730%u9707%u56FD%u9645%u7814%u8BA8%u4F1A12%u65E5%u5728%u56DB%u5DDD%u7701%u6210%u90FD%u5E02%u5F00%u5E55%uFF0C%u56FD%u5BB6%u4E3B%u5E2D%u4E60%u8FD1%u5E73%u5411%u4F1A%u8BAE%u81F4%u4FE1%u3002%3C/strong%3E%3C/span%3E%3C/p%3E%3Cp%20style%3D%22text-align%3A%20left%3B%22%3E%u3000%u3000%u4E60%u8FD1%u5E73%u6307%u51FA%uFF0C%u4ECA%u5E74%u662F%u6C76%u5DDD%u5730%u9707%u5341%u5468%u5E74%u3002%u5728%u4E2D%u56FD%u5171%u4EA7%u515A%u575A%u5F3A%u9886%u5BFC%u4E0B%uFF0C%u6C76%u5DDD%u5730%u9707%u707E%u533A%u6062%u590D%u91CD%u5EFA%u5DE5%u4F5C%u53D6%u5F97%u4E3E%u4E16%u77A9%u76EE%u6210%u5C31%uFF0C%u4E3A%u56FD%u9645%u793E%u4F1A%u5F00%u5C55%u707E%u540E%u6062%u590D%u91CD%u5EFA%u63D0%u4F9B%u4E86%u6709%u76CA%u7ECF%u9A8C%u548C%u542F%u793A%u3002%3C/p%3E%3Cp%20style%3D%22text-align%3A%20left%3B%22%3E%u3000%u3000%u4E60%u8FD1%u5E73%u5F3A%u8C03%uFF0C%u4EBA%u7C7B%u5BF9%u81EA%u7136%u89C4%u5F8B%u7684%u8BA4%u77E5%u6CA1%u6709%u6B62%u5883%uFF0C%u9632%u707E%u51CF%u707E%u3001%u6297%u707E%u6551%u707E%u662F%u4EBA%u7C7B%u751F%u5B58%u53D1%u5C55%u7684%u6C38%u6052%u8BFE%u9898%u3002%u79D1%u5B66%u8BA4%u8BC6%u81F4%u707E%u89C4%u5F8B%uFF0C%u6709%u6548%u51CF%u8F7B%u707E%u5BB3%u98CE%u9669%uFF0C%u5B9E%u73B0%u4EBA%u4E0E%u81EA%u7136%u548C%u8C10%u5171%u5904%uFF0C%u9700%u8981%u56FD%u9645%u793E%u4F1A%u5171%u540C%u52AA%u529B%u3002%u4E2D%u56FD%u5C06%u575A%u6301%u4EE5%u4EBA%u6C11%u4E3A%u4E2D%u5FC3%u7684%u53D1%u5C55%u7406%u5FF5%uFF0C%u575A%u6301%u4EE5%u9632%u4E3A%u4E3B%u3001%u9632%u707E%u6297%u707E%u6551%u707E%u76F8%u7ED3%u5408%uFF0C%u5168%u9762%u63D0%u5347%u7EFC%u5408%u9632%u707E%u80FD%u529B%uFF0C%u4E3A%u4EBA%u6C11%u751F%u547D%u8D22%u4EA7%u5B89%u5168%u63D0%u4F9B%u575A%u5B9E%u4FDD%u969C%u3002%u5E0C%u671B%u5404%u4F4D%u4EE3%u8868%u56F4%u7ED5%u672C%u6B21%u7814%u8BA8%u4F1A%u201C%u4E0E%u5730%u9707%u98CE%u9669%u5171%u5904%u201D%u7684%u4E3B%u9898%uFF0C%u8E0A%u8DC3%u53C2%u4E0E%uFF0C%u96C6%u601D%u5E7F%u76CA%uFF0C%u4E3A%u4FC3%u8FDB%u51CF%u707E%u56FD%u9645%u5408%u4F5C%u3001%u964D%u4F4E%u81EA%u7136%u707E%u5BB3%u98CE%u9669%u3001%u6784%u5EFA%u4EBA%u7C7B%u547D%u8FD0%u5171%u540C%u4F53%u4F5C%u51FA%u79EF%u6781%u8D21%u732E%u3002%3C/p%3E%3Cp%20style%3D%22text-align%3A%20left%3B%22%3E%u667A%u6167%u793E%u533A%u7EFC%u5408%u7BA1%u7406%u7CFB%u7EDF%3Cbr/%3E1%26nbsp%3B%u9700%u6C42%u5206%u6790%3Cbr/%3E%3Cem%3E2011%u5E742%u670819%u65E5%uFF0C%u80E1%u9526%u6D9B%u5728%u7701%u90E8%u7EA7%u9886%u5BFC%u5E72%u90E8%u793E%u4F1A%u7BA1%u7406%u7814%u8BA8%u73ED%u4E2D%u53D1%u8868%u91CD%u8981%u8BB2%u8BDD%uFF0C%u5F3A%u8C03%uFF1A%u6574%u5408%u57FA%u5C42%u8D44%u6E90%u3001%u5F3A%u5316%u57FA%u7840%u5DE5%u4F5C%uFF0C%u5F3A%u5316%u57CE%u4E61%u793E%u533A%u81EA%u6CBB%u548C%u670D%u52A1%3Cstrong%3E%u529F%u80FD%uFF0C%u5065%u5168%u65B0%u578B%u793E%u533A%u7BA1%u7406%u548C%u670D%u52A1%u4F53%u5236%u3002%3Cbr/%3E%u5EFA%u8BBE%u667A%u6167%u793E%u533A%u6709%u52A9%u4E8E%u8FDB%u4E00%u6B65%u521B%u65B0%u793E%u4F1A%u670D%u52A1%u7BA1%u7406%u7684%u65B9%u5F0F%u65B9%u6CD5%u3002%u901A%u8FC7%u6574%u5408%u8857%u9053%u7BA1%u7406%u548C%u670D%u52A1%u8FD0%u884C%u7684%u5173%u952E%u4FE1%u606F%uFF0C%u63A2%u7D22%u793E%u4F1A%u7BA1%u7406%u3001%u793E%u533A%u670D%u52A1%u3001%u60E0%u6C11%u5174%u4E1A%u7684%u53D1%u5C55%u65B0%u9014%u5F84%uFF0C%u6253%u9020%u7BA1%u7406%u7CBE%u786E%u5316%u3001%u670D%u52A1%u4EBA%u6587%u5316%u3001%u8FD0%u884C%u793E%u4F1A%u5316%u3001%u624B%u6BB5%u4FE1%u606F%u5316%u3001%u5DE5%u4F5C%u89C4%u8303%u5316%u3001%u6280%u672F%u73B0%u4EE3%u5316%u7684%u73B0%u4EE3%u8857%u9053%u3001%u793E%u533A%u5DE5%u4F5C%u8FD0%u884C%u65B0%u6A21%u5F0F%u3002%3C/strong%3E%3C/em%3E%3Cimg%20src%3D%22%20/upload/image/20180513/6366180439236628019743979.jpg%22%20title%3D%22bl112.jpg%22%20alt%3D%22bl112.jpg%22%20width%3D%22367%22%20height%3D%22249%22/%3E%3Cstrong%3E%u201C%u667A%u6167%u793E%u533A%u201D%u670D%u52A1%u4F53%u7CFB%u5728%u4FBF%u6C11%u670D%u52A1%u4E2D%u786E%u5B9E%u8D77%u5230%u4E86%u4E00%u5B9A%u7684%u4F5C%u7528%uFF0C%u4F46%u662F%u4E5F%u9762%u4E34%u4E00%u4E9B%u95EE%u9898%uFF0C%u5177%u4F53%u5982%u4E0B%uFF1A%3Cbr/%3E1%u3001%u8D44%u6E90%u6574%u5408%u529B%u5EA6%u4E0D%u591F%uFF0C%u5404%u533A%u53BF%u8857%u9053%u529E%u3001%u793E%u533A%u5206%u522B%u72EC%u7ACB%u5EFA%u8BBE%u3002%3Cbr/%3E2%u3001%u5BF9%u57FA%u7840%u6570%u636E%u5E93%u5EFA%u8BBE%u4E0D%u8DB3%uFF0C%u793E%u533A%u5C5E%u4E8E%u57FA%u5C42%u7EC4%u7EC7%uFF0C%u5BF9%u793E%3C/strong%3E%3Cspan%20style%3D%22text-decoration%3A%20underline%3B%22%3E%3Cstrong%3E%u533A%u7BA1%u7406%u8981%u6C42%u6BD4%u8F83%u9AD8%uFF0C%u5BF9%u6570%u636E%u7684%u51C6%u786E%u5EA6%u53CA%u7EC6%u5316%u7A0B%u5EA6%u8981%u6C42%u5F88%u9AD8%uFF0C%u9897%u7C92%u5EA6%u592A%u5927%u7684%u6570%u636E%u5BF9%u793E%u533A%u7BA1%u7406%u548C%u670D%u52A1%u4F5C%u7528%u4E0D%u662F%u5F88%u660E%u663E%uFF0C%u6240%u4EE5%u4E0D%u80FD%u53EA%u5EFA%u5E94%u7528%uFF0C%u800C%u5FFD%u7565%u4E86%u5BF9%u539F%u59CB%u6570%u636E%u7684%u5EFA%u8BBE%u3002%3Cbr/%3E3%u3001%u5BF9%u5DF2%u6709%u7684%u57FA%u7840%u4FE1%u606F%u8D44%u6E90%u5229%u7528%u4E0D%u8DB3%uFF0C%u6211%u7701%u5DF2%u5EFA%u6210%u4E86%u8986%u76D6%u5168%u7701%u7684%u4E09%3C/strong%3E%u7EA7%u4FE1%u606F%u5316%u652F%u6491%u5E73%u53F0%uFF0C%u5E76%u4E14%u56DB%u5927%u6570%u636E%u5E93%u90E8%u5206%u90FD%u5DF2%u5EFA%u6210%uFF0C%u57FA%u5C42%u793E%u533A%u5BF9%u7BA1%u7406%u670D%u52A1%u6240%u9700%u8981%u7528%u5230%u7684%u5404%u7C7B%u6570%u636E%u9879%u53EF%u4EE5%u4F9D%u6258%u6211%u7701%u3001%u5E02%u5DF2%u6709%u8D44%u6E90%u8FDB%u884C%u5EFA%u8BBE%uFF0C%u5C3D%u91CF%u51CF%u5C11%3C/span%3E%u518D%u6B21%u91CD%u65B0%u5BF9%u57FA%u5C42%u6570%u636E%u7684%u91C7%u96C6%u3002%u4EE5%u7F29%u77ED%u5EFA%u8BBE%u5468%u671F%uFF0C%u51CF%u5C11%u5EFA%u8BBE%u98CE%3Cstrong%3E%u5EFA%u8BBE%u4E0D%u8DB3%uFF0C%u793E%u533A%u5C5E%u4E8E%u57FA%u5C42%u7EC4%u7EC7%uFF0C%u5BF9%u793E%3C/strong%3E%3Cspan%20style%3D%22text-decoration%3A%20underline%3B%22%3E%3Cstrong%3E%u533A%u7BA1%u7406%u8981%u6C42%u6BD4%u8F83%u9AD8%uFF0C%u5BF9%u6570%u636E%u7684%u51C6%u786E%u5EA6%u53CA%u7EC6%u5316%u7A0B%u5EA6%u8981%u6C42%u5F88%u9AD8%uFF0C%u9897%u7C92%u5EA6%u592A%u5927%u7684%u6570%u636E%u5BF9%u793E%u533A%u7BA1%u7406%u548C%u670D%u52A1%u4F5C%u7528%u4E0D%u662F%u5F88%u660E%u663E%uFF0C%u6240%u4EE5%u4E0D%u80FD%u53EA%u5EFA%u5E94%u7528%uFF0C%u800C%u5FFD%u7565%u4E86%u5BF9%u539F%u59CB%u6570%u636E%u7684%u5EFA%u8BBE%u3002%3Cbr/%3E3%u3001%u5BF9%u5DF2%u6709%u7684%u57FA%u7840%u4FE1%u606F%u8D44%u6E90%u5229%u7528%u4E0D%u8DB3%uFF0C%u6211%u7701%u5DF2%u5EFA%u6210%u4E86%u8986%u76D6%u5168%u7701%u7684%u4E09%3C/strong%3E%u7EA7%u4FE1%u606F%u5316%u652F%u6491%u5E73%u53F0%uFF0C%u5E76%u4E14%u56DB%u5927%u6570%u636E%u5E93%u90E8%u5206%u90FD%u5DF2%u5EFA%u6210%uFF0C%u57FA%u5C42%u793E%u533A%u5BF9%u7BA1%u7406%u670D%u52A1%u6240%u9700%u8981%u7528%u5230%u7684%u5404%u7C7B%u6570%u636E%u9879%u53EF%u4EE5%u4F9D%u6258%u6211%u7701%u3001%u5E02%u5DF2%u6709%u8D44%u6E90%u8FDB%u884C%u5EFA%u8BBE%uFF0C%u5C3D%u91CF%u51CF%u5C11%3C/span%3E%u518D%u6B21%u91CD%u65B0%u5BF9%u57FA%u5C42%u6570%u636E%u7684%u91C7%u96C6%u3002%u4EE5%u7F29%u77ED%u5EFA%u8BBE%u5468%u671F%uFF0C%u51CF%u5C11%u5EFA%u8BBE%u98CE%3C/p%3E', NULL, N'通报', CAST(0x0000A8C900C12D43 AS DateTime), N'我租了一间公寓', N'巷子里', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (224, N'管承涛', N'%3Cp%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8BF01537E47 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (238, N'111111', N'', NULL, N'新闻', CAST(0x0000A8F40116B74B AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (239, N'管承涛DGD', N'', NULL, N'通报', CAST(0x0000A8C5016E2CA5 AS DateTime), N'阿三', N'道德', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (240, N'其实哇', N'%3Cp%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8BF01537E47 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (241, N'阿萨顶顶顶顶顶', N'', NULL, N'新闻', CAST(0x0000A8C0010A960E AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (242, N'其实哇', N'%3Cp%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8BF01537E47 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (243, N'其实哇', N'%3Cp%3E%3C/p%3E', NULL, N'新闻', CAST(0x0000A8BF01537E47 AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (248, N'去去去', N'', NULL, N'新闻', CAST(0x0000A8F40129E5BF AS DateTime), N'', N'', 0, N'')
INSERT [dbo].[GongKaiXinXi] ([BianHao], [BiaoTi], [NeiRong], [TuPian], [LeiXing], [FaBuShiJian], [FaBuDanWei], [ZuoZe], [LiuLanCiShu], [BeiZhu]) VALUES (249, N'管承涛', N'', NULL, N'通报', CAST(0x0000A8C5016E2CA5 AS DateTime), N'管承涛', N'管承涛', 0, N'')
SET IDENTITY_INSERT [dbo].[GongKaiXinXi] OFF
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'11          ', N'11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8CB0171A8CD AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'111111111111', N'1111111111111111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8CC016DAC47 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'11111111231 ', N'12312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8CC01738DF1 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'1121        ', N'', NULL, NULL, NULL, N'2018-04--2018', NULL, NULL, NULL, CAST(0x0000A8CC0174A879 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'12212       ', N'1232131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C901032640 AS DateTime), N'山东农业大学', N'管承涛', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'1221256     ', N'1232131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C9010CFFCC AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'12312       ', N'12312', NULL, NULL, NULL, N'2018-05---2018-05', NULL, NULL, NULL, CAST(0x0000A8D30100779D AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'aaa         ', N'1232131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C9010D1733 AS DateTime), N'山东农业大学', N'555', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'aaaaw       ', N'aawww', NULL, NULL, NULL, N'2018-05———2018-05', NULL, NULL, NULL, CAST(0x0000A8D301127D3F AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'abcdefghijkl', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C901113F32 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'asdasdsasda ', N'', NULL, NULL, NULL, N'2018-05---2018-05', NULL, NULL, NULL, CAST(0x0000A8D30111E208 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'g 111       ', N'a ', NULL, NULL, NULL, N'2018-05---2018-05', NULL, NULL, NULL, CAST(0x0000A8D301112455 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'SDAU20180428', N'啊你妹', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'阿斯蒂芬        ', N'', NULL, NULL, NULL, N'2018-04', NULL, NULL, NULL, CAST(0x0000A8CC0174502F AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'啊2嗯嗯        ', N'', NULL, NULL, NULL, N'2018-04-01', NULL, NULL, NULL, CAST(0x0000A8CC0173CF6A AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'啊啊          ', N'啊啊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C9010DA81F AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'按时大大        ', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C901041986 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'大闸蟹好多个      ', N'', NULL, NULL, NULL, N'2018-04--2018-04', NULL, NULL, NULL, CAST(0x0000A8CC0174CDE3 AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'灌灌灌灌灌过过过    ', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C9011119AF AS DateTime), N'山东农业大学', N'', NULL)
INSERT [dbo].[LvYouGuiHuaXinXi] ([GHXMBianHao], [GHXMMingCheng], [GHXMJieShao], [GuiHuaFanWei], [GuiHuaMianJi], [GuiHuaNianXian], [GuiHuaMuBiao], [GuiHuaRenWu], [GuiHuaTu], [GuiHuaShiJian], [GuiHuaDanWei], [FuZeRen], [BeiZhu]) VALUES (N'卡住          ', N'', NULL, NULL, NULL, N'2018-04-24', NULL, NULL, NULL, CAST(0x0000A8CC0173B071 AS DateTime), N'山东农业大学', N'', NULL)
SET IDENTITY_INSERT [dbo].[LvYouJingDianXinXi] ON 

INSERT [dbo].[LvYouJingDianXinXi] ([JDBianHao], [JDMingCheng], [JDJieShao], [JDWeiZhi], [JingDu], [WeiDu], [TuPian], [LiuLanCiShu], [FBShiJian], [BeiZhu]) VALUES (1, N'hhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LvYouJingDianXinXi] ([JDBianHao], [JDMingCheng], [JDJieShao], [JDWeiZhi], [JingDu], [WeiDu], [TuPian], [LiuLanCiShu], [FBShiJian], [BeiZhu]) VALUES (2, N'llll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LvYouJingDianXinXi] ([JDBianHao], [JDMingCheng], [JDJieShao], [JDWeiZhi], [JingDu], [WeiDu], [TuPian], [LiuLanCiShu], [FBShiJian], [BeiZhu]) VALUES (8, N'山', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LvYouJingDianXinXi] ([JDBianHao], [JDMingCheng], [JDJieShao], [JDWeiZhi], [JingDu], [WeiDu], [TuPian], [LiuLanCiShu], [FBShiJian], [BeiZhu]) VALUES (9, N'水', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LvYouJingDianXinXi] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GongKaiXinXi]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_GongKaiXinXi] ON [dbo].[GongKaiXinXi]
(
	[BiaoTi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GongKaiXinXi_1]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_GongKaiXinXi_1] ON [dbo].[GongKaiXinXi]
(
	[FaBuShiJian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GongKaiXinXi_2]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_GongKaiXinXi_2] ON [dbo].[GongKaiXinXi]
(
	[FaBuDanWei] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LiuYanBan]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_LiuYanBan] ON [dbo].[LiuYanBan]
(
	[BiaoTi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LvYouGuiHuaXinXi]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_LvYouGuiHuaXinXi] ON [dbo].[LvYouGuiHuaXinXi]
(
	[GHXMMingCheng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LvYouGuiHuaXinXi_1]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_LvYouGuiHuaXinXi_1] ON [dbo].[LvYouGuiHuaXinXi]
(
	[GuiHuaShiJian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LvYouGuiHuaXinXi_2]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_LvYouGuiHuaXinXi_2] ON [dbo].[LvYouGuiHuaXinXi]
(
	[GuiHuaDanWei] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LvYouGuiHuaXinXi_3]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_LvYouGuiHuaXinXi_3] ON [dbo].[LvYouGuiHuaXinXi]
(
	[BeiZhu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LvYouJingDianXinXi]    Script Date: 2018/6/17 10:34:39 ******/
CREATE NONCLUSTERED INDEX [IX_LvYouJingDianXinXi] ON [dbo].[LvYouJingDianXinXi]
(
	[JDMingCheng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [WDGZ_LvYou] SET  READ_WRITE 
GO
