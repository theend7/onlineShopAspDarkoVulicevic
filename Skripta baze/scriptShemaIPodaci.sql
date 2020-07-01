USE [ShopAsp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/1/2020 4:52:00 PM ******/
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
/****** Object:  Table [dbo].[Cene]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cene](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[CenaP] [decimal](18, 2) NOT NULL,
	[ProizvodId] [int] NOT NULL,
 CONSTRAINT [PK_Cene] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetaljiPorudzbina]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetaljiPorudzbina](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[Naziv] [nvarchar](max) NULL,
	[Kolicina] [int] NOT NULL,
	[Cena] [decimal](18, 2) NOT NULL,
	[PorudzbinaId] [int] NOT NULL,
	[ProizvodId] [int] NULL,
 CONSTRAINT [PK_DetaljiPorudzbina] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorije]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorije](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[NazivKategorije] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Kategorije] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klijenti]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klijenti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[Jmbg] [bigint] NOT NULL,
	[Ime] [nvarchar](30) NOT NULL,
	[Prezime] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](55) NOT NULL,
	[Lozinka] [nvarchar](140) NOT NULL,
	[IdUloga] [int] NOT NULL,
 CONSTRAINT [PK_Klijenti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KlijentUseCases]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KlijentUseCases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KlijentId] [int] NOT NULL,
	[UseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_KlijentUseCases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Porudzbine]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Porudzbine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[DatumPorudzbine] [datetime2](7) NOT NULL,
	[KlijentId] [int] NOT NULL,
	[Adresa] [nvarchar](max) NULL,
	[PorudzbinaStatus] [int] NOT NULL,
 CONSTRAINT [PK_Porudzbine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proizvodi]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvodi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[NazivProizvoda] [nvarchar](60) NOT NULL,
	[OpisProizvoda] [nvarchar](200) NOT NULL,
	[KolicinaProizvoda] [int] NOT NULL,
	[SlikaProizvoda] [nvarchar](150) NOT NULL,
	[IdKategorija] [int] NOT NULL,
 CONSTRAINT [PK_Proizvodi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slike]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[SlikaPutanja] [nvarchar](150) NOT NULL,
	[ProizvodId] [int] NOT NULL,
 CONSTRAINT [PK_Slike] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uloge]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uloge](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[isActive] [bit] NOT NULL,
	[NazivUloge] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Uloge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 7/1/2020 4:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [datetime2](7) NOT NULL,
	[UseCaseNaziv] [nvarchar](max) NULL,
	[Podaci] [nvarchar](max) NULL,
	[Actor] [nvarchar](max) NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625192858_added_again_tables', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625203552_added_relation_cena_proizvod', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625210155_added_relation_slika_proizvod', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625220752_added_relations_klijent_proizvod_porudzbina_detaljiPorudzbine', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626151717_change_name_of_detalji_porudzbine', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200627132737_added_klijent_use_case_table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200627133742_remove_some_columns_in_klijent_use_case', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200627200432_added_use_case_log_table', N'3.1.5')
GO
SET IDENTITY_INSERT [dbo].[Cene] ON 

INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (4, CAST(N'2020-06-27T15:55:54.1731843' AS DateTime2), NULL, 0, NULL, 1, CAST(1850.00 AS Decimal(18, 2)), 11)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (5, CAST(N'2020-06-27T15:56:05.3753199' AS DateTime2), NULL, 0, NULL, 1, CAST(1850.99 AS Decimal(18, 2)), 12)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (6, CAST(N'2020-06-28T15:03:29.4216931' AS DateTime2), NULL, 0, NULL, 1, CAST(1980.99 AS Decimal(18, 2)), 21)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (7, CAST(N'2020-06-28T15:14:51.0253169' AS DateTime2), NULL, 0, NULL, 1, CAST(3200.00 AS Decimal(18, 2)), 22)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (8, CAST(N'2020-06-28T23:59:55.7824211' AS DateTime2), NULL, 0, NULL, 1, CAST(3899.99 AS Decimal(18, 2)), 22)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (9, CAST(N'2020-06-30T21:04:25.4352631' AS DateTime2), NULL, 0, NULL, 1, CAST(1550.00 AS Decimal(18, 2)), 24)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (10, CAST(N'2020-07-01T00:22:30.9554531' AS DateTime2), NULL, 1, CAST(N'2020-07-01T00:28:45.4281237' AS DateTime2), 0, CAST(1299.99 AS Decimal(18, 2)), 25)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (11, CAST(N'2020-07-01T02:18:33.2737596' AS DateTime2), NULL, 0, NULL, 1, CAST(1234.99 AS Decimal(18, 2)), 11)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (12, CAST(N'2020-07-01T13:32:13.5711000' AS DateTime2), NULL, 0, NULL, 1, CAST(1299.99 AS Decimal(18, 2)), 26)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (13, CAST(N'2020-07-01T14:36:19.1128548' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:54:46.4518659' AS DateTime2), 0, CAST(1799.99 AS Decimal(18, 2)), 27)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (14, CAST(N'2020-07-01T14:37:28.0149536' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:55:16.8740261' AS DateTime2), 0, CAST(1999.99 AS Decimal(18, 2)), 28)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (15, CAST(N'2020-07-01T14:38:14.7425484' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:55:20.7718882' AS DateTime2), 0, CAST(4999.99 AS Decimal(18, 2)), 29)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (16, CAST(N'2020-07-01T14:40:19.9048650' AS DateTime2), NULL, 0, NULL, 1, CAST(6999.99 AS Decimal(18, 2)), 30)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (17, CAST(N'2020-07-01T14:56:50.7354722' AS DateTime2), NULL, 0, NULL, 1, CAST(7999.99 AS Decimal(18, 2)), 31)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (18, CAST(N'2020-07-01T14:58:27.1878547' AS DateTime2), NULL, 0, NULL, 1, CAST(7669.99 AS Decimal(18, 2)), 32)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (19, CAST(N'2020-07-01T14:59:05.6987491' AS DateTime2), NULL, 0, NULL, 1, CAST(7629.99 AS Decimal(18, 2)), 33)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (20, CAST(N'2020-07-01T15:01:08.8785855' AS DateTime2), NULL, 0, NULL, 1, CAST(8000.00 AS Decimal(18, 2)), 34)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (21, CAST(N'2020-07-01T15:01:35.5631279' AS DateTime2), NULL, 0, NULL, 1, CAST(9999.99 AS Decimal(18, 2)), 35)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (22, CAST(N'2020-07-01T15:02:08.6937370' AS DateTime2), NULL, 0, NULL, 1, CAST(12500.00 AS Decimal(18, 2)), 36)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (23, CAST(N'2020-07-01T15:04:25.4445821' AS DateTime2), NULL, 0, NULL, 1, CAST(199.99 AS Decimal(18, 2)), 37)
INSERT [dbo].[Cene] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [CenaP], [ProizvodId]) VALUES (24, CAST(N'2020-07-01T15:05:04.8860398' AS DateTime2), NULL, 0, NULL, 1, CAST(499.99 AS Decimal(18, 2)), 38)
SET IDENTITY_INSERT [dbo].[Cene] OFF
GO
SET IDENTITY_INSERT [dbo].[DetaljiPorudzbina] ON 

INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (4, CAST(N'2020-06-28T17:56:16.7468621' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 1, CAST(3200.00 AS Decimal(18, 2)), 4, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (5, CAST(N'2020-06-29T14:55:15.1678553' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 3, CAST(3899.99 AS Decimal(18, 2)), 5, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (7, CAST(N'2020-07-01T14:08:34.1620921' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 5, CAST(3899.99 AS Decimal(18, 2)), 7, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (8, CAST(N'2020-07-01T15:13:28.5324655' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 5, CAST(3899.99 AS Decimal(18, 2)), 8, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (9, CAST(N'2020-07-01T15:13:37.7974436' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 5, CAST(3899.99 AS Decimal(18, 2)), 9, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (10, CAST(N'2020-07-01T15:15:02.3216012' AS DateTime2), NULL, 0, NULL, 1, N'Proizvod1', 5, CAST(1980.99 AS Decimal(18, 2)), 10, 21)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (11, CAST(N'2020-07-01T15:15:09.7537644' AS DateTime2), NULL, 0, NULL, 1, N'Proizvod1', 5, CAST(1980.99 AS Decimal(18, 2)), 11, 21)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (12, CAST(N'2020-07-01T15:16:37.5622084' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 1, CAST(3899.99 AS Decimal(18, 2)), 12, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (13, CAST(N'2020-07-01T15:16:44.9764649' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 1, CAST(3899.99 AS Decimal(18, 2)), 13, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (14, CAST(N'2020-07-01T15:16:51.6843486' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 1, CAST(3899.99 AS Decimal(18, 2)), 14, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (15, CAST(N'2020-07-01T15:18:10.5092088' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 1, CAST(3899.99 AS Decimal(18, 2)), 15, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (16, CAST(N'2020-07-01T15:18:16.1875174' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 1500', 1, CAST(3899.99 AS Decimal(18, 2)), 16, 22)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (17, CAST(N'2020-07-01T15:19:28.4134350' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 17, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (18, CAST(N'2020-07-01T15:19:32.5017075' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 18, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (19, CAST(N'2020-07-01T15:19:36.2553956' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 19, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (20, CAST(N'2020-07-01T15:19:40.2585335' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 20, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (21, CAST(N'2020-07-01T15:21:24.7733083' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 21, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (22, CAST(N'2020-07-01T15:21:29.9555782' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 22, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (23, CAST(N'2020-07-01T15:22:10.4299008' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 23, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (24, CAST(N'2020-07-01T15:22:13.8417554' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 24, 38)
INSERT [dbo].[DetaljiPorudzbina] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Naziv], [Kolicina], [Cena], [PorudzbinaId], [ProizvodId]) VALUES (25, CAST(N'2020-07-01T15:22:18.3602411' AS DateTime2), NULL, 0, NULL, 1, N'Adpter sata za hard disk', 1, CAST(499.99 AS Decimal(18, 2)), 25, 38)
SET IDENTITY_INSERT [dbo].[DetaljiPorudzbina] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategorije] ON 

INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (3, CAST(N'2020-06-27T15:46:27.2118135' AS DateTime2), NULL, 0, NULL, 1, N'Misevi')
INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (4, CAST(N'2020-06-27T15:46:36.6293999' AS DateTime2), CAST(N'2020-06-30T22:57:53.4799397' AS DateTime2), 0, NULL, 1, N'Tastature')
INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (5, CAST(N'2020-06-30T20:58:22.4710343' AS DateTime2), NULL, 1, CAST(N'2020-06-30T21:06:05.0595251' AS DateTime2), 0, N'Kablovi')
INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (6, CAST(N'2020-07-01T13:27:48.6788705' AS DateTime2), NULL, 0, NULL, 1, N'Adapteri')
INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (7, CAST(N'2020-07-01T13:28:08.5650167' AS DateTime2), NULL, 0, NULL, 1, N'Slusalice')
INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (8, CAST(N'2020-07-01T13:28:23.7328434' AS DateTime2), NULL, 0, NULL, 1, N'Mikrofoni')
INSERT [dbo].[Kategorije] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivKategorije]) VALUES (9, CAST(N'2020-07-01T13:28:28.5755282' AS DateTime2), NULL, 1, CAST(N'2020-07-01T13:33:16.1209608' AS DateTime2), 0, N'Kamere')
SET IDENTITY_INSERT [dbo].[Kategorije] OFF
GO
SET IDENTITY_INSERT [dbo].[Klijenti] ON 

INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (7, CAST(N'2020-06-27T16:26:25.4396390' AS DateTime2), CAST(N'2020-07-01T13:36:32.7807365' AS DateTime2), 0, NULL, 1, 2701998761064, N'Darko', N'Vulicevic', N'darko@gmail.com', N'826db186ff72c75877e68a5be37ebc83', 3)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (9, CAST(N'2020-06-27T21:32:01.8753851' AS DateTime2), CAST(N'2020-07-01T13:37:22.5048680' AS DateTime2), 0, NULL, 1, 2608776564352, N'Milos', N'Perkic', N'milosperkic@gmail.com', N'982818a2819ba4a436a1bba634bdc01b', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (10, CAST(N'2020-06-27T22:25:27.2978034' AS DateTime2), CAST(N'2020-07-01T13:38:11.2573188' AS DateTime2), 0, NULL, 1, 2608776564334, N'Andrea', N'Kulkic', N'adreak98@gmail.com', N'15fb85c5befd6cc72c9555253a70775a', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (14, CAST(N'2020-06-27T23:42:59.2859109' AS DateTime2), CAST(N'2020-07-01T13:38:47.3683401' AS DateTime2), 0, NULL, 1, 2608776564399, N'Milomir', N'Cekic', N'milomir98@gmail.com', N'e700f3cd72b59325985195cab87e9d21', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (20, CAST(N'2020-06-30T14:32:32.6268374' AS DateTime2), CAST(N'2020-07-01T13:43:24.5089618' AS DateTime2), 0, NULL, 1, 27045664122345, N'Valentina', N'Valentic', N'valentina98@gmail.com', N'c02d515c14cf58cb870a67f7819bdb76', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (21, CAST(N'2020-06-30T14:44:59.7237286' AS DateTime2), NULL, 0, NULL, 1, 27045344122345, N'Minja', N'Minic', N'minam96@gmail.com', N'75b19bedfe15b9a70e8b9929035827da', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (22, CAST(N'2020-06-30T14:50:43.2258809' AS DateTime2), CAST(N'2020-06-30T17:16:12.8652505' AS DateTime2), 0, NULL, 1, 27045344142345, N'Julija', N'Kostandinovic', N'julija98@gmail.com', N'afccaa1c765b316e178f13e2e152e982', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (24, CAST(N'2020-06-30T21:12:59.4936923' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:11:58.8113059' AS DateTime2), 0, 9702345653462, N'Danijel', N'Biukovic', N'danijel@gmail.com', N'acbe71bd2951789b6aa2d6b95802520c', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (25, CAST(N'2020-07-01T13:24:21.9868887' AS DateTime2), NULL, 0, NULL, 1, 9807634120987, N'Marija', N'Djurdjevic', N'marijadj@gmail.com', N'8ca1b7c6f54bc34d1ce59ba4a45a059f', 5)
INSERT [dbo].[Klijenti] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [Jmbg], [Ime], [Prezime], [Email], [Lozinka], [IdUloga]) VALUES (26, CAST(N'2020-07-01T16:15:06.7197480' AS DateTime2), NULL, 0, NULL, 1, 1763564329763, N'Milica', N'Milicic', N'milica966@gmail.com', N'a3375bd2e96b24400b60d593c6bce113', 5)
SET IDENTITY_INSERT [dbo].[Klijenti] OFF
GO
SET IDENTITY_INSERT [dbo].[KlijentUseCases] ON 

INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (16, 7, 2)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (17, 7, 3)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (18, 7, 4)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (19, 7, 5)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (20, 7, 6)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (21, 7, 7)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (23, 7, 9)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (34, 7, 10)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (35, 7, 11)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (44, 7, 12)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (45, 7, 13)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (46, 7, 14)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (47, 7, 15)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (48, 7, 16)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (49, 7, 17)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (50, 7, 18)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (51, 7, 19)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (52, 7, 20)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (53, 7, 21)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (54, 7, 22)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (55, 7, 23)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (56, 7, 24)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (57, 7, 25)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (58, 7, 26)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (59, 7, 27)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (60, 7, 28)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (61, 7, 29)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (65, 20, 8)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (66, 20, 10)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (67, 20, 26)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (68, 26, 8)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (69, 26, 10)
INSERT [dbo].[KlijentUseCases] ([Id], [KlijentId], [UseCaseId]) VALUES (70, 26, 26)
SET IDENTITY_INSERT [dbo].[KlijentUseCases] OFF
GO
SET IDENTITY_INSERT [dbo].[Porudzbine] ON 

INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (4, CAST(N'2020-06-28T17:56:16.7462192' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-28T15:50:45.2450000' AS DateTime2), 7, N'Kolonija', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (5, CAST(N'2020-06-29T14:55:15.1667893' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), 7, N'Smed Palanka BB', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (7, CAST(N'2020-07-01T14:08:34.1620736' AS DateTime2), CAST(N'2020-07-01T14:11:00.4191517' AS DateTime2), 0, NULL, 1, CAST(N'2020-07-10T00:00:00.0000000' AS DateTime2), 24, N'Cukarica', 3)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (8, CAST(N'2020-07-01T15:13:28.5321772' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-11T00:00:00.0000000' AS DateTime2), 20, N'Cukaricav2', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (9, CAST(N'2020-07-01T15:13:37.7974097' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-13T00:00:00.0000000' AS DateTime2), 20, N'Cukaricav3', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (10, CAST(N'2020-07-01T15:15:02.3215555' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-15T00:00:00.0000000' AS DateTime2), 20, N'Cukaricav4', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (11, CAST(N'2020-07-01T15:15:09.7537511' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-16T00:00:00.0000000' AS DateTime2), 20, N'Cukarica5', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (12, CAST(N'2020-07-01T15:16:37.5621957' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-18T00:00:00.0000000' AS DateTime2), 20, N'Cukarica6', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (13, CAST(N'2020-07-01T15:16:44.9764505' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-19T00:00:00.0000000' AS DateTime2), 20, N'Cukarica7', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (14, CAST(N'2020-07-01T15:16:51.6843320' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2), 20, N'Cukarica8', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (15, CAST(N'2020-07-01T15:18:10.5091952' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 20, N'Zemun', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (16, CAST(N'2020-07-01T15:18:16.1875023' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 20, N'Zemun v1', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (17, CAST(N'2020-07-01T15:19:28.4134200' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 20, N'Zemun v3', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (18, CAST(N'2020-07-01T15:19:32.5016976' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 20, N'Zemun v4', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (19, CAST(N'2020-07-01T15:19:36.2553386' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 20, N'Zemun v5', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (20, CAST(N'2020-07-01T15:19:40.2585211' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), 20, N'Zemun v6', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (21, CAST(N'2020-07-01T15:21:24.7732847' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 20, N'Karaburma v6', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (22, CAST(N'2020-07-01T15:21:29.9555625' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 20, N'Karaburma v7', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (23, CAST(N'2020-07-01T15:22:10.4298906' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-24T00:00:00.0000000' AS DateTime2), 20, N'Mirijevo', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (24, CAST(N'2020-07-01T15:22:13.8417433' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-24T00:00:00.0000000' AS DateTime2), 20, N'Mirijevo v2', 0)
INSERT [dbo].[Porudzbine] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [DatumPorudzbine], [KlijentId], [Adresa], [PorudzbinaStatus]) VALUES (25, CAST(N'2020-07-01T15:22:18.3602254' AS DateTime2), NULL, 0, NULL, 1, CAST(N'2020-07-24T00:00:00.0000000' AS DateTime2), 20, N'Mirijevo v3', 0)
SET IDENTITY_INSERT [dbo].[Porudzbine] OFF
GO
SET IDENTITY_INSERT [dbo].[Proizvodi] ON 

INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (11, CAST(N'2020-06-27T15:50:44.3078936' AS DateTime2), CAST(N'2020-07-01T02:18:33.0185661' AS DateTime2), 0, NULL, 1, N'Mis Altos 4055', N'Proizvodv2', 250, N'2431243b-3191-4acd-836b-876d645c1796.jpg', 3)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (12, CAST(N'2020-06-27T15:51:02.7771845' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 505', N'Mis sa srednjim DPI-om,solidan za gaming', 60, N'assets/images/misaltosv2.jpg', 3)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (13, CAST(N'2020-06-27T15:51:27.4045109' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 605', N'Mis sa srednjim DPI-om,solidan za gaming,dobar izbor', 65, N'assets/images/misaltosv3.jpg', 3)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (14, CAST(N'2020-06-27T15:51:50.3948909' AS DateTime2), NULL, 0, NULL, 1, N'Mis Altos 705', N'Najbolji iz verzije 705', 70, N'assets/images/misaltosv4.jpg', 3)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (15, CAST(N'2020-06-27T15:52:10.6549762' AS DateTime2), NULL, 0, NULL, 1, N'Mis Razer 100', N'Najbolji iz verzije 100', 75, N'assets/images/misaltosv5.jpg', 3)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (16, CAST(N'2020-06-27T15:52:31.6239596' AS DateTime2), NULL, 0, NULL, 1, N'Tastatura Razer 100', N'Najbolja iz verzije 100', 20, N'assets/images/tastaturarazer.jpg', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (17, CAST(N'2020-06-27T15:52:42.7756101' AS DateTime2), NULL, 0, NULL, 1, N'Tastatura Razer 200', N'Najbolja iz verzije 200', 30, N'assets/images/tastaturarazerv1.jpg', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (18, CAST(N'2020-06-27T15:52:56.0586441' AS DateTime2), NULL, 0, NULL, 1, N'Tastatura Razer 300', N'Najbolja iz verzije 300', 35, N'assets/images/tastaturarazerv2.jpg', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (19, CAST(N'2020-06-27T15:53:07.3527425' AS DateTime2), NULL, 0, NULL, 1, N'Tastatura Razer 400', N'Najbolja iz verzije 400', 40, N'assets/images/tastaturarazerv3.jpg', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (20, CAST(N'2020-06-27T15:53:46.0465787' AS DateTime2), NULL, 0, NULL, 1, N'Tastatura Razer 500', N'Najbolja iz verzije 500', 50, N'assets/images/tastaturarazerv4.jpg', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (21, CAST(N'2020-06-28T15:03:09.0028370' AS DateTime2), CAST(N'2020-07-01T15:15:09.7537672' AS DateTime2), 0, NULL, 1, N'Proizvod1', N'Proizvod1', 0, N'6659e713-f2ec-4bff-bcdd-94cb8ccc6679.PNG', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (22, CAST(N'2020-06-28T15:14:50.1189923' AS DateTime2), CAST(N'2020-07-01T15:18:16.1875202' AS DateTime2), 0, NULL, 1, N'Mis Altos 1500', N'Best Buy mis', 0, N'8ed4052c-23da-4dd7-9a64-1385d2491a23.jpg', 3)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (24, CAST(N'2020-06-30T21:04:24.8411847' AS DateTime2), NULL, 1, CAST(N'2020-06-30T21:06:04.8288026' AS DateTime2), 0, N'Kabal', N'Dobar kabal', 20, N'3208847f-a60f-4f20-a2c9-4b1e7d91dbc1.jpg', 5)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (25, CAST(N'2020-07-01T00:22:29.3608343' AS DateTime2), NULL, 1, CAST(N'2020-07-01T00:28:45.5464677' AS DateTime2), 0, N'Proizvod2', N'Proizvod2', 30, N'1e78a048-581b-4395-a7e3-6f72f65040d5.jpg', 4)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (26, CAST(N'2020-07-01T13:32:12.8954069' AS DateTime2), NULL, 1, CAST(N'2020-07-01T13:33:16.0742169' AS DateTime2), 0, N'Kamera Nikon', N'Najbolji fokus', 120, N'3e2063ba-74c6-40ad-a352-3d45108c4033.png', 9)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (27, CAST(N'2020-07-01T14:36:17.1008345' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:54:46.8407422' AS DateTime2), 0, N'Kamera Nikon v2', N'Dobar fokus', 235, N'b1ba2192-86ff-4a40-8fac-096194245d9d.png', 9)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (28, CAST(N'2020-07-01T14:37:27.9762543' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:55:16.9371776' AS DateTime2), 0, N'Kamera Nikon v3', N'Odlican fokus', 250, N'0d79ed0c-8c14-4817-a078-52ecc561a4f3.jpg', 9)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (29, CAST(N'2020-07-01T14:38:14.7245862' AS DateTime2), NULL, 1, CAST(N'2020-07-01T14:55:20.7877225' AS DateTime2), 0, N'Kamera Nikon v4', N'Solidan fokus', 280, N'5e8a7a71-71fa-47cf-9466-370c00ee369d.jpg', 9)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (30, CAST(N'2020-07-01T14:40:19.8953731' AS DateTime2), NULL, 0, NULL, 1, N'Slusalice Siberia', N'Odlican bas', 350, N'566d90aa-fc15-44a4-82d1-75c363ad060d.jpg', 7)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (31, CAST(N'2020-07-01T14:56:50.5669812' AS DateTime2), NULL, 0, NULL, 1, N'Slusalice Siberia v2', N'Solidan bas', 150, N'5e85fa39-0c57-4121-891e-5b744d513f90.png', 7)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (32, CAST(N'2020-07-01T14:58:26.7598210' AS DateTime2), NULL, 0, NULL, 1, N'Slusalice Siberia v3', N'Bluetooth ', 200, N'b8ef447e-bb18-4772-b775-19310b73fbe2.jpg', 7)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (33, CAST(N'2020-07-01T14:59:05.5273962' AS DateTime2), NULL, 0, NULL, 1, N'Slusalice Siberia v4', N'Bluetooth dobar bass', 200, N'635d10a1-7a1b-4689-b85b-5a301a6eb7d7.jpg', 7)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (34, CAST(N'2020-07-01T15:01:08.8627175' AS DateTime2), NULL, 0, NULL, 1, N'Mikrofon Siberia v1', N'Mikrofon sa stalkom', 200, N'2de80678-129e-499f-8b7f-93d517bc872e.jpg', 8)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (35, CAST(N'2020-07-01T15:01:35.5251095' AS DateTime2), NULL, 0, NULL, 1, N'Mikrofon Siberia v2', N'Mikrofon sa stalkom i dobrim odzivom', 260, N'3965caee-079b-4410-8fe5-3737532e270b.jpg', 8)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (36, CAST(N'2020-07-01T15:02:08.6527950' AS DateTime2), NULL, 0, NULL, 1, N'Mikrofon Siberia v3', N'Izuzetno dobar mikrofon', 456, N'54171f05-fa2d-4421-a735-6d1b878b062a.jpg', 8)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (37, CAST(N'2020-07-01T15:04:25.3196025' AS DateTime2), NULL, 0, NULL, 1, N'Adapter usb na lan', N'Odlicnog kvaliteta', 550, N'2a5b2795-1d78-4c3d-8561-6ed958e73860.png', 6)
INSERT [dbo].[Proizvodi] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivProizvoda], [OpisProizvoda], [KolicinaProizvoda], [SlikaProizvoda], [IdKategorija]) VALUES (38, CAST(N'2020-07-01T15:05:04.8619666' AS DateTime2), CAST(N'2020-07-01T15:22:18.3602441' AS DateTime2), 0, NULL, 1, N'Adpter sata za hard disk', N'Izuzetno dobrog odziva', 691, N'8495b3a8-3cb2-41c3-9928-d3a1e02f6c4b.jpg', 6)
SET IDENTITY_INSERT [dbo].[Proizvodi] OFF
GO
SET IDENTITY_INSERT [dbo].[Slike] ON 

INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (3, CAST(N'2020-06-28T15:03:23.0853072' AS DateTime2), NULL, 0, NULL, 1, N'f5453452-33b2-4d0a-b0f9-2eb44181aab3.PNG', 21)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (4, CAST(N'2020-06-28T15:14:50.7842157' AS DateTime2), NULL, 0, NULL, 1, N'70c96c68-6457-417e-8207-7c92b37cfb27.jpg', 22)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (5, CAST(N'2020-06-28T15:14:50.7842493' AS DateTime2), NULL, 0, NULL, 1, N'78bfcbd2-b8cf-467f-87a9-39cc16054871.jpg', 22)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (6, CAST(N'2020-06-30T21:04:25.0578965' AS DateTime2), NULL, 0, NULL, 1, N'e209cb31-a652-4b61-adcd-ec5681ecdf0f.jpg', 24)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (7, CAST(N'2020-07-01T00:22:30.3691562' AS DateTime2), NULL, 1, CAST(N'2020-07-01T00:28:45.3456514' AS DateTime2), 0, N'faebc5b5-65fa-4be2-ab39-f18bc75e1e0c.jpg', 25)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (8, CAST(N'2020-07-01T03:21:54.6919615' AS DateTime2), NULL, 1, CAST(N'2020-07-01T04:08:56.4775260' AS DateTime2), 0, N'7cddc860-9d65-477e-9ae0-3d67f0ed26c1.jpg', 22)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (9, CAST(N'2020-07-01T03:21:54.6936326' AS DateTime2), NULL, 1, CAST(N'2020-07-01T04:08:56.4966743' AS DateTime2), 0, N'1cabaf86-ed33-4a1d-8d40-7f86718c7660.jpg', 22)
INSERT [dbo].[Slike] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [SlikaPutanja], [ProizvodId]) VALUES (10, CAST(N'2020-07-01T13:32:13.1605998' AS DateTime2), NULL, 0, NULL, 1, N'69faa5fc-c3ee-424e-9aa5-681b8626b6b2.jpg', 26)
SET IDENTITY_INSERT [dbo].[Slike] OFF
GO
SET IDENTITY_INSERT [dbo].[Uloge] ON 

INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (3, CAST(N'2020-06-27T15:45:36.6740808' AS DateTime2), CAST(N'2020-06-30T23:03:33.6812684' AS DateTime2), 0, NULL, 1, N'Admin')
INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (5, CAST(N'2020-06-30T13:45:54.4687073' AS DateTime2), CAST(N'2020-06-30T19:03:53.1895086' AS DateTime2), 0, NULL, 1, N'AutorizovaniKlijent')
INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (6, CAST(N'2020-06-30T16:40:28.0715782' AS DateTime2), NULL, 1, CAST(N'2020-06-30T16:44:34.8918501' AS DateTime2), 0, N'Moderator')
INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (7, CAST(N'2020-07-01T00:39:31.9997340' AS DateTime2), NULL, 1, CAST(N'2020-07-01T00:40:47.9879528' AS DateTime2), 0, N'UlogaProba1')
INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (8, CAST(N'2020-07-01T13:19:59.1044261' AS DateTime2), NULL, 1, CAST(N'2020-07-01T13:25:49.9095185' AS DateTime2), 0, N'Uloga22')
INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (9, CAST(N'2020-07-01T13:20:05.8107309' AS DateTime2), NULL, 0, NULL, 1, N'Uloga3')
INSERT [dbo].[Uloge] ([Id], [CreatedAt], [ModifiedAt], [isDeleted], [DeletedAt], [isActive], [NazivUloge]) VALUES (10, CAST(N'2020-07-01T13:20:10.7124599' AS DateTime2), CAST(N'2020-07-01T14:27:20.6411602' AS DateTime2), 0, NULL, 1, N'Uloga44')
SET IDENTITY_INSERT [dbo].[Uloge] OFF
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (408, CAST(N'2020-07-01T12:26:40.7249077' AS DateTime2), N'Dohvatanje Logova iz baze pomocu EF-a', N'{"EmailKlijenta":"darko@gmail.com","Datum":"0001-01-01T00:00:00","NazivUseCase":null,"NeUlogovaniKlijent":false,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (409, CAST(N'2020-07-01T12:27:20.6037964' AS DateTime2), N'Update-ovanje uloge pomocu EF-a', N'{"IdUloga":10,"NazivUloge":"Uloga44"}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (410, CAST(N'2020-07-01T12:27:34.7165635' AS DateTime2), N'Dohvatanje Logova iz baze pomocu EF-a', N'{"EmailKlijenta":null,"Datum":"0001-01-01T00:00:00","NazivUseCase":null,"NeUlogovaniKlijent":false,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (411, CAST(N'2020-07-01T12:27:44.6724354' AS DateTime2), N'Dohvatanje Logova iz baze pomocu EF-a', N'{"EmailKlijenta":null,"Datum":"0001-01-01T00:00:00","NazivUseCase":null,"NeUlogovaniKlijent":false,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (412, CAST(N'2020-07-01T12:27:52.0576616' AS DateTime2), N'Dohvatanje Logova iz baze pomocu EF-a', N'{"EmailKlijenta":null,"Datum":"0001-01-01T00:00:00","NazivUseCase":null,"NeUlogovaniKlijent":true,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (413, CAST(N'2020-07-01T12:28:12.4084515' AS DateTime2), N'Dohvatanje Logova iz baze pomocu EF-a', N'{"EmailKlijenta":null,"Datum":"0001-01-01T00:00:00","NazivUseCase":"Updat","NeUlogovaniKlijent":false,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (414, CAST(N'2020-07-01T12:30:16.2289998' AS DateTime2), N'Dohvatanja jednog proizvoda pomocu EF-a', N'11', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (415, CAST(N'2020-07-01T12:30:22.1944305' AS DateTime2), N'Dohvatanja jednog proizvoda pomocu EF-a', N'12', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (416, CAST(N'2020-07-01T12:33:40.4787727' AS DateTime2), N'Dohvatanje slika oredjenog proizvoda preko EF-a', N'22', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (417, CAST(N'2020-07-01T12:34:21.9117544' AS DateTime2), N'Dohvatanja jednog proizvoda pomocu EF-a', N'22', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (418, CAST(N'2020-07-01T12:36:16.1410285' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Kamera Nikon v2","OpisP":"Dobar fokus","KolicinaP":235,"CenaP":1799.99,"IdKategorija":9,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"dott.png\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"dott.png\""],"Content-Type":["image/png"]},"Length":213,"Name":"SlikeP","FileName":"dott.png"},{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"ban661.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"ban661.jpg\""],"Content-Type":["image/jpeg"]},"Length":22761,"Name":"SlikeP","FileName":"ban661.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (419, CAST(N'2020-07-01T12:37:27.8395365' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Kamera Nikon v3","OpisP":"Odlican fokus","KolicinaP":250,"CenaP":1999.99,"IdKategorija":9,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"c2.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"c2.jpg\""],"Content-Type":["image/jpeg"]},"Length":126234,"Name":"SlikeP","FileName":"c2.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (420, CAST(N'2020-07-01T12:38:14.5808876' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Kamera Nikon v4","OpisP":"Solidan fokus","KolicinaP":280,"CenaP":4999.99,"IdKategorija":9,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"ab5.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"ab5.jpg\""],"Content-Type":["image/jpeg"]},"Length":21634,"Name":"SlikeP","FileName":"ab5.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (421, CAST(N'2020-07-01T12:40:19.7909317' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Slusalice Siberia","OpisP":"Odlican bas","KolicinaP":350,"CenaP":6999.99,"IdKategorija":7,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"gal66.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"gal66.jpg\""],"Content-Type":["image/jpeg"]},"Length":30623,"Name":"SlikeP","FileName":"gal66.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (422, CAST(N'2020-07-01T12:48:16.0938966' AS DateTime2), N'Update-ovanje kategorije pomocu EF-a', N'{"IdKategorija":9,"NazivKategorije":"Kamereee"}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (423, CAST(N'2020-07-01T12:54:33.3669183' AS DateTime2), N'Brisanje proizvoda pomocu EF-a', N'27', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (424, CAST(N'2020-07-01T12:55:16.6332931' AS DateTime2), N'Brisanje proizvoda pomocu EF-a', N'28', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (425, CAST(N'2020-07-01T12:55:20.7118003' AS DateTime2), N'Brisanje proizvoda pomocu EF-a', N'29', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (426, CAST(N'2020-07-01T12:56:49.1654739' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Slusalice Siberia v2","OpisP":"Solidan bas","KolicinaP":150,"CenaP":7999.99,"IdKategorija":7,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"dott.png\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"dott.png\""],"Content-Type":["image/png"]},"Length":213,"Name":"SlikeP","FileName":"dott.png"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (427, CAST(N'2020-07-01T12:58:25.5236720' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Slusalice Siberia v3","OpisP":"Bluetooth ","KolicinaP":200,"CenaP":7669.99,"IdKategorija":7,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"gal77.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"gal77.jpg\""],"Content-Type":["image/jpeg"]},"Length":33476,"Name":"SlikeP","FileName":"gal77.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (428, CAST(N'2020-07-01T12:59:05.1212018' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Slusalice Siberia v4","OpisP":"Bluetooth dobar bass","KolicinaP":200,"CenaP":7629.99,"IdKategorija":7,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"gal99.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"gal99.jpg\""],"Content-Type":["image/jpeg"]},"Length":31258,"Name":"SlikeP","FileName":"gal99.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (429, CAST(N'2020-07-01T13:01:08.7039303' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Mikrofon Siberia v1","OpisP":"Mikrofon sa stalkom","KolicinaP":200,"CenaP":8000.00,"IdKategorija":8,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"c2.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"c2.jpg\""],"Content-Type":["image/jpeg"]},"Length":126234,"Name":"SlikeP","FileName":"c2.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (430, CAST(N'2020-07-01T13:01:35.3937674' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Mikrofon Siberia v2","OpisP":"Mikrofon sa stalkom i dobrim odzivom","KolicinaP":260,"CenaP":9999.99,"IdKategorija":8,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"ab5.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"ab5.jpg\""],"Content-Type":["image/jpeg"]},"Length":21634,"Name":"SlikeP","FileName":"ab5.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (431, CAST(N'2020-07-01T13:02:08.5414772' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Mikrofon Siberia v3","OpisP":"Izuzetno dobar mikrofon","KolicinaP":456,"CenaP":12500.00,"IdKategorija":8,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"gal88.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"gal88.jpg\""],"Content-Type":["image/jpeg"]},"Length":19409,"Name":"SlikeP","FileName":"gal88.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (432, CAST(N'2020-07-01T13:04:24.4743466' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Adapter usb na lan","OpisP":"Odlicnog kvaliteta","KolicinaP":550,"CenaP":199.99,"IdKategorija":6,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"arrow.png\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"arrow.png\""],"Content-Type":["image/png"]},"Length":452,"Name":"SlikeP","FileName":"arrow.png"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (433, CAST(N'2020-07-01T13:05:04.8230981' AS DateTime2), N'Kreiranje proizvoda pomocu EF', N'{"NazivP":"Adpter sata za hard disk","OpisP":"Izuzetno dobrog odziva","KolicinaP":700,"CenaP":499.99,"IdKategorija":6,"SlikeP":[{"ContentDisposition":"form-data; name=\"SlikeP\"; filename=\"gal11.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"SlikeP\"; filename=\"gal11.jpg\""],"Content-Type":["image/jpeg"]},"Length":11890,"Name":"SlikeP","FileName":"gal11.jpg"}]}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (434, CAST(N'2020-07-01T13:05:54.0024406' AS DateTime2), N'Pretraga proizvoda', N'{"NazivProizvoda":null,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (435, CAST(N'2020-07-01T13:11:06.0966052' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-11T00:00:00","Adresa":"Cukaricav2","Items":[{"ProizvodId":22,"Kolicina":5,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (436, CAST(N'2020-07-01T13:13:28.1286975' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-11T00:00:00","Adresa":"Cukaricav2","Items":[{"ProizvodId":22,"Kolicina":5,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (437, CAST(N'2020-07-01T13:13:37.7386499' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-13T00:00:00","Adresa":"Cukaricav3","Items":[{"ProizvodId":22,"Kolicina":5,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (438, CAST(N'2020-07-01T13:15:02.2538114' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-15T00:00:00","Adresa":"Cukaricav4","Items":[{"ProizvodId":21,"Kolicina":5,"IdCena":6}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (439, CAST(N'2020-07-01T13:15:09.7342090' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-16T00:00:00","Adresa":"Cukarica5","Items":[{"ProizvodId":21,"Kolicina":5,"IdCena":6}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (440, CAST(N'2020-07-01T13:15:50.2243331' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-17T00:00:00","Adresa":"Cukarica6","Items":[{"ProizvodId":21,"Kolicina":5,"IdCena":6}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (441, CAST(N'2020-07-01T13:16:37.5121019' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-18T00:00:00","Adresa":"Cukarica6","Items":[{"ProizvodId":22,"Kolicina":1,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (442, CAST(N'2020-07-01T13:16:44.9378926' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-19T00:00:00","Adresa":"Cukarica7","Items":[{"ProizvodId":22,"Kolicina":1,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (443, CAST(N'2020-07-01T13:16:51.6359798' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-20T00:00:00","Adresa":"Cukarica8","Items":[{"ProizvodId":22,"Kolicina":1,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (444, CAST(N'2020-07-01T13:18:10.4176162' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun","Items":[{"ProizvodId":22,"Kolicina":1,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (445, CAST(N'2020-07-01T13:18:16.0463089' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun v1","Items":[{"ProizvodId":22,"Kolicina":1,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (446, CAST(N'2020-07-01T13:18:22.3273852' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun v2","Items":[{"ProizvodId":22,"Kolicina":1,"IdCena":8}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (447, CAST(N'2020-07-01T13:19:28.3728777' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun v3","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (448, CAST(N'2020-07-01T13:19:32.4774940' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun v4","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (449, CAST(N'2020-07-01T13:19:36.2361841' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun v5","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (450, CAST(N'2020-07-01T13:19:40.2380173' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-21T00:00:00","Adresa":"Zemun v6","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (451, CAST(N'2020-07-01T13:21:24.7268192' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-23T00:00:00","Adresa":"Karaburma v6","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (452, CAST(N'2020-07-01T13:21:29.9143760' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-23T00:00:00","Adresa":"Karaburma v7","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (453, CAST(N'2020-07-01T13:22:10.3846076' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-24T00:00:00","Adresa":"Mirijevo","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (454, CAST(N'2020-07-01T13:22:13.7271632' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-24T00:00:00","Adresa":"Mirijevo v2","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (455, CAST(N'2020-07-01T13:22:18.3217042' AS DateTime2), N'Kreiranje Porudzbine putem EF-a', N'{"PorudzbinaDatum":"2020-07-24T00:00:00","Adresa":"Mirijevo v3","Items":[{"ProizvodId":38,"Kolicina":1,"IdCena":24}]}', N'valentina98@gmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (456, CAST(N'2020-07-01T13:39:36.4219760' AS DateTime2), N'Pretraga proizvoda', N'{"NazivProizvoda":null,"IdKategorija":4,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (457, CAST(N'2020-07-01T13:40:17.1748329' AS DateTime2), N'Pretraga proizvoda', N'{"NazivProizvoda":null,"IdKategorija":3,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (458, CAST(N'2020-07-01T13:42:15.0101179' AS DateTime2), N'Pretraga proizvoda', N'{"NazivProizvoda":null,"PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (459, CAST(N'2020-07-01T13:42:29.1130052' AS DateTime2), N'Pretraga proizvoda', N'{"NazivProizvoda":"asasas","PerPage":10,"Page":1}', N'Ne ulogovani klijent')
INSERT [dbo].[UseCaseLogs] ([Id], [Datum], [UseCaseNaziv], [Podaci], [Actor]) VALUES (460, CAST(N'2020-07-01T14:14:57.4541771' AS DateTime2), N'Kreiranje korisnika pomocu EF', N'{"Jmbg":1763564329763,"Ime":"Milica","Prezime":"Milicic","Email":"milica966@gmail.com","Lozinka":"milica96"}', N'Ne ulogovani klijent')
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
ALTER TABLE [dbo].[Porudzbine] ADD  DEFAULT ((0)) FOR [PorudzbinaStatus]
GO
ALTER TABLE [dbo].[Cene]  WITH CHECK ADD  CONSTRAINT [FK_Cene_Proizvodi_ProizvodId] FOREIGN KEY([ProizvodId])
REFERENCES [dbo].[Proizvodi] ([Id])
GO
ALTER TABLE [dbo].[Cene] CHECK CONSTRAINT [FK_Cene_Proizvodi_ProizvodId]
GO
ALTER TABLE [dbo].[DetaljiPorudzbina]  WITH CHECK ADD  CONSTRAINT [FK_DetaljiPorudzbina_Porudzbine_PorudzbinaId] FOREIGN KEY([PorudzbinaId])
REFERENCES [dbo].[Porudzbine] ([Id])
GO
ALTER TABLE [dbo].[DetaljiPorudzbina] CHECK CONSTRAINT [FK_DetaljiPorudzbina_Porudzbine_PorudzbinaId]
GO
ALTER TABLE [dbo].[DetaljiPorudzbina]  WITH CHECK ADD  CONSTRAINT [FK_DetaljiPorudzbina_Proizvodi_ProizvodId] FOREIGN KEY([ProizvodId])
REFERENCES [dbo].[Proizvodi] ([Id])
GO
ALTER TABLE [dbo].[DetaljiPorudzbina] CHECK CONSTRAINT [FK_DetaljiPorudzbina_Proizvodi_ProizvodId]
GO
ALTER TABLE [dbo].[Klijenti]  WITH CHECK ADD  CONSTRAINT [FK_Klijenti_Uloge_IdUloga] FOREIGN KEY([IdUloga])
REFERENCES [dbo].[Uloge] ([Id])
GO
ALTER TABLE [dbo].[Klijenti] CHECK CONSTRAINT [FK_Klijenti_Uloge_IdUloga]
GO
ALTER TABLE [dbo].[KlijentUseCases]  WITH CHECK ADD  CONSTRAINT [FK_KlijentUseCases_Klijenti_KlijentId] FOREIGN KEY([KlijentId])
REFERENCES [dbo].[Klijenti] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KlijentUseCases] CHECK CONSTRAINT [FK_KlijentUseCases_Klijenti_KlijentId]
GO
ALTER TABLE [dbo].[Porudzbine]  WITH CHECK ADD  CONSTRAINT [FK_Porudzbine_Klijenti_KlijentId] FOREIGN KEY([KlijentId])
REFERENCES [dbo].[Klijenti] ([Id])
GO
ALTER TABLE [dbo].[Porudzbine] CHECK CONSTRAINT [FK_Porudzbine_Klijenti_KlijentId]
GO
ALTER TABLE [dbo].[Proizvodi]  WITH CHECK ADD  CONSTRAINT [FK_Proizvodi_Kategorije_IdKategorija] FOREIGN KEY([IdKategorija])
REFERENCES [dbo].[Kategorije] ([Id])
GO
ALTER TABLE [dbo].[Proizvodi] CHECK CONSTRAINT [FK_Proizvodi_Kategorije_IdKategorija]
GO
ALTER TABLE [dbo].[Slike]  WITH CHECK ADD  CONSTRAINT [FK_Slike_Proizvodi_ProizvodId] FOREIGN KEY([ProizvodId])
REFERENCES [dbo].[Proizvodi] ([Id])
GO
ALTER TABLE [dbo].[Slike] CHECK CONSTRAINT [FK_Slike_Proizvodi_ProizvodId]
GO
