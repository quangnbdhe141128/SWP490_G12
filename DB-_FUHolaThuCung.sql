USE [PetHolaKingdom]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[blog_category_id] [int] NULL,
	[user_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[brief_infor] [nvarchar](300) NULL,
	[description] [nvarchar](max) NULL,
	[Image] [ntext] NULL,
	[banner] [ntext] NOT NULL,
	[added_date] [datetime] NULL,
 CONSTRAINT [PK__Blogs__3213E83F6AA98DFC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogsCategory]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogsCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Image] [ntext] NULL,
	[banner] [ntext] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CurriculumId] [int] NULL,
	[LevelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [ntext] NULL,
	[banner] [nvarchar](200) NOT NULL,
	[CourseCategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonsHistory]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonsHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetCategory]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Image] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Weight] [float] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[PetCategoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetsHistory]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetsHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Weight] [float] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[PetCategoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/26/2022 9:20:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[MiddleName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[ImageProfile] [nvarchar](500) NULL,
	[PhoneNo] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Status] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date]) VALUES (1, 4, 1, N'tin tức 1', N'ccc', N'cccc', N'https://lygopetshop.com/wp-content/uploads/2021/11/Blue-Best-Quality-Pet-Food-Instagram-Post-800x800.png', N'cccc', CAST(N'2019-09-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date]) VALUES (2, 4, 1, N'tin tức 2', N'ccc', N'cccc', N'https://bizweb.dktcdn.net/100/426/888/articles/blog1.jpg?v=1621476532357', N'cccc', CAST(N'2019-09-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date]) VALUES (3, 5, 1, N'tin tức 3', N'cccc', N'ccc', N'http://cdn.tgdd.vn/Files/2021/04/20/1344829/cam-nang-cach-nuoi-cho-poodle-hieu-qua-mau-lon-danh-cho-nguoi-moi-202104200902138740.jpg', N'cccc', CAST(N'2019-09-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogsCategory] ON 

INSERT [dbo].[BlogsCategory] ([id], [name], [CreatedDate]) VALUES (4, N'Cẩm nang', CAST(N'2019-08-24T00:00:00.000' AS DateTime))
INSERT [dbo].[BlogsCategory] ([id], [name], [CreatedDate]) VALUES (5, N'Sức khỏe', CAST(N'2019-08-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[BlogsCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([id], [Name], [Image], [banner], [Description], [CreatedDate], [CurriculumId], [LevelId]) VALUES (1, N'Huấn luyện Pitbull', NULL, N'ccccc', N'Các bài tập cơ bản', CAST(N'2021-11-11T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Courses] ([id], [Name], [Image], [banner], [Description], [CreatedDate], [CurriculumId], [LevelId]) VALUES (2, N'Huấn luyện Pitbull', NULL, N'cccc', N'Các bài tập nâng cao', CAST(N'2021-11-11T00:00:00.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([id], [Name], [CreatedDate], [Description], [Image], [banner], [CourseCategoryId]) VALUES (1, N'huấn luyện chó đứng, đứng yên', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Huấn luyện chó Pitbull đứng yên tại chỗ là bài học cơ bản đầu tiên giúp bạn kiểm soát được chú chó của mình, đặc biệt là khi đưa chúng ra ngoài.', N'https://cdn1.tuoitre.vn/zoom/600_315/2022/8/31/hinh-anh-cho-pitbull-1661931027134195852291-crop-16619310968851108745084.jpg', N'cccc', 1)
INSERT [dbo].[Lessons] ([id], [Name], [CreatedDate], [Description], [Image], [banner], [CourseCategoryId]) VALUES (5, N'huấn luyện chó ngồi, ngồi yên', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Đứng trước mặt chó Pitbull. Tay cầm thức ăn để phía trên mũi của chú chó Pitbull. Di chuyển tay từ từ về phía đỉnh đầu, tại vị trí giữa hai tai. Khi đó cún theo phản xạ sẽ ngồi xuống, bạn sẽ hô khẩu lệnh “Ngồi”. Thưởng cho cún.', N'https://cdn1.tuoitre.vn/zoom/600_315/2022/8/31/hinh-anh-cho-pitbull-1661931027134195852291-crop-16619310968851108745084.jpg', N'ccc', 1)
INSERT [dbo].[Lessons] ([id], [Name], [CreatedDate], [Description], [Image], [banner], [CourseCategoryId]) VALUES (7, N'huấn luyện chó tìm đồ vật và gắp mang lại', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Huấn luyện chó Pitbull tìm đồ vật và gắp mang lại', N'https://cdn1.tuoitre.vn/zoom/600_315/2022/8/31/hinh-anh-cho-pitbull-1661931027134195852291-crop-16619310968851108745084.jpg', N'ccc', 2)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([id], [Name]) VALUES (1, N'Cơ bản')
INSERT [dbo].[Level] ([id], [Name]) VALUES (2, N'Nâng cao')
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
SET IDENTITY_INSERT [dbo].[PetCategory] ON 

INSERT [dbo].[PetCategory] ([id], [Name], [CreatedDate], [Image]) VALUES (1, N'Chó Pitbull', CAST(N'2019-10-12T00:00:00.000' AS DateTime), N'https://zoipet.com/wp-content/uploads/2020/03/chi-pitbull.jpg')
INSERT [dbo].[PetCategory] ([id], [Name], [CreatedDate], [Image]) VALUES (2, N'Chó Chihuahua', CAST(N'2020-09-07T00:00:00.000' AS DateTime), N'https://petmaster.vn/petroom/wp-content/uploads/2020/03/cho-chihuahua-3.jpg')
INSERT [dbo].[PetCategory] ([id], [Name], [CreatedDate], [Image]) VALUES (4, N'Chó Husky', CAST(N'2021-09-23T00:00:00.000' AS DateTime), N'data:image/jpeg;base64,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')
INSERT [dbo].[PetCategory] ([id], [Name], [CreatedDate], [Image]) VALUES (6, N'Mèo tam thể', CAST(N'2020-12-27T00:00:00.000' AS DateTime), N'https://blogchomeo.com/wp-content/uploads/2022/08/hinh_anh_meo_tam_the35.jpg')
INSERT [dbo].[PetCategory] ([id], [Name], [CreatedDate], [Image]) VALUES (7, N'Mèo ba tư', CAST(N'2020-11-26T00:00:00.000' AS DateTime), N'https://petmaster.vn/petroom/wp-content/uploads/2020/04/meo-ba-tu-2.jpg')
SET IDENTITY_INSERT [dbo].[PetCategory] OFF
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Level]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_PetCategory] FOREIGN KEY([CurriculumId])
REFERENCES [dbo].[PetCategory] ([id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_PetCategory]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Courses] FOREIGN KEY([CourseCategoryId])
REFERENCES [dbo].[Courses] ([id])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Courses]
GO
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_Users]
GO
ALTER TABLE [dbo].[PetsHistory]  WITH CHECK ADD  CONSTRAINT [FK_PetsHistory_Pets] FOREIGN KEY([id])
REFERENCES [dbo].[Pets] ([id])
GO
ALTER TABLE [dbo].[PetsHistory] CHECK CONSTRAINT [FK_PetsHistory_Pets]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Roles]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Users]
GO
