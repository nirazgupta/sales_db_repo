USE [SP_DB]
GO
/****** Object:  Table [dbo].[P]    Script Date: 12/1/2017 2:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P](
	[P#] [int] IDENTITY(1,1) NOT NULL,
	[pname] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[weight] [int] NULL,
	[p_city] [nvarchar](50) NULL,
 CONSTRAINT [PK_P] PRIMARY KEY CLUSTERED 
(
	[P#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S]    Script Date: 12/1/2017 2:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S](
	[s#] [int] IDENTITY(1,1) NOT NULL,
	[sname] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
 CONSTRAINT [PK_S] PRIMARY KEY CLUSTERED 
(
	[s#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SP]    Script Date: 12/1/2017 2:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP](
	[sp#] [int] IDENTITY(1,1) NOT NULL,
	[S#] [int] NULL,
	[P#] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [PK_SP] PRIMARY KEY CLUSTERED 
(
	[sp#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[P] ON 

INSERT [dbo].[P] ([P#], [pname], [color], [weight], [p_city]) VALUES (1002, N'Bolt', N'Green', 17, N'Paris')
INSERT [dbo].[P] ([P#], [pname], [color], [weight], [p_city]) VALUES (1003, N'Cam', N'Blue', 12, N'Paris')
INSERT [dbo].[P] ([P#], [pname], [color], [weight], [p_city]) VALUES (1004, N'Cog', N'Red', 19, N'London')
INSERT [dbo].[P] ([P#], [pname], [color], [weight], [p_city]) VALUES (1005, N'Nut', N'Red', 12, N'London')
INSERT [dbo].[P] ([P#], [pname], [color], [weight], [p_city]) VALUES (1006, N'Screw', N'Blue', 17, N'Rom')
INSERT [dbo].[P] ([P#], [pname], [color], [weight], [p_city]) VALUES (1007, N'Screw', N'Red', 14, N'London')
SET IDENTITY_INSERT [dbo].[P] OFF
SET IDENTITY_INSERT [dbo].[S] ON 

INSERT [dbo].[S] ([s#], [sname], [status], [city]) VALUES (1002, N'Black', N'30', N'Paris')
INSERT [dbo].[S] ([s#], [sname], [status], [city]) VALUES (1003, N'Clark', N'20', N'London')
INSERT [dbo].[S] ([s#], [sname], [status], [city]) VALUES (1004, N'Jones', N'10', N'Paris')
INSERT [dbo].[S] ([s#], [sname], [status], [city]) VALUES (1005, N'Smith', N'20', N'London')
SET IDENTITY_INSERT [dbo].[S] OFF
SET IDENTITY_INSERT [dbo].[SP] ON 

INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1002, 1005, 1003, 100)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1003, 1005, 1004, 100)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1004, 1002, 1002, 200)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1005, 1003, 1002, 200)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1006, 1005, 1002, 200)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1007, 1005, 1007, 200)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1008, 1004, 1005, 300)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1009, 1005, 1005, 300)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1010, 1003, 1007, 300)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1011, 1004, 1002, 400)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1012, 1003, 1003, 400)
INSERT [dbo].[SP] ([sp#], [S#], [P#], [qty]) VALUES (1013, 1005, 1006, 400)
SET IDENTITY_INSERT [dbo].[SP] OFF
