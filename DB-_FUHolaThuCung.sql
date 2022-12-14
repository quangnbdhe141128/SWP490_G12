USE [PetHolaKingdom]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/12/2022 3:52:27 AM ******/
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
	[status] [bit] NULL,
 CONSTRAINT [PK__Blogs__3213E83F6AA98DFC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogsCategory]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogsCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Image] [ntext] NULL,
	[Description] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CurriculumId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Courses__3213E83F6E272E61] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Image] [ntext] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonDetails]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[Description] [ntext] NULL,
	[Image] [nchar](10) NULL,
	[LessonId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_LessonDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonLearning]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonLearning](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[LessonDetailId] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_LessonLearning] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonRegister]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonRegister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[LessonId] [int] NULL,
	[isactive] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_LessonRegister] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 11/12/2022 3:52:27 AM ******/
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
	[CourseCategoryId] [int] NULL,
	[LevelId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Lessons__3213E83FEEE03794] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonsHistory]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonsHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](200) NOT NULL,
	[Action_by] [nvarchar](200) NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK__LessonsH__3213E83FDFD4912F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetClinic]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetClinic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PetClinic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 11/12/2022 3:52:27 AM ******/
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
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetsHistory]    Script Date: 11/12/2022 3:52:27 AM ******/
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
/****** Object:  Table [dbo].[Review]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[LessonDetailId] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[Create_date] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[ImageProfile] [ntext] NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[PetClinicId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/12/2022 3:52:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[ImageProfile] [ntext] NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Users__3213E83F8DB597CA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date], [status]) VALUES (1, 4, 1, N'tin tức 1', N'ccc', N'cccc', N'https://lygopetshop.com/wp-content/uploads/2021/11/Blue-Best-Quality-Pet-Food-Instagram-Post-800x800.png', N'cccc', CAST(N'2019-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date], [status]) VALUES (2, 4, 1, N'tin tức 2', N'ccc', N'cccc', N'https://bizweb.dktcdn.net/100/426/888/articles/blog1.jpg?v=1621476532357', N'cccc', CAST(N'2019-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date], [status]) VALUES (3, 5, 1, N'tin tức 3', N'cccc', N'ccc', N'http://cdn.tgdd.vn/Files/2021/04/20/1344829/cam-nang-cach-nuoi-cho-poodle-hieu-qua-mau-lon-danh-cho-nguoi-moi-202104200902138740.jpg', N'cccc', CAST(N'2019-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date], [status]) VALUES (5, 5, 1, N'tin tức update3', N'ccc', N'ccc', N'http://cdn.tgdd.vn/Files/2021/04/20/1344829/cam-nang-cach-nuoi-cho-poodle-hieu-qua-mau-lon-danh-cho-nguoi-moi-202104200902138740.jpg', N'ccc', CAST(N'2020-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date], [status]) VALUES (6, 5, 1, N'tin tức nổi phần 4', N'ccc', N'cccc', N'https://bizweb.dktcdn.net/100/426/888/articles/blog1.jpg?v=1621476532357', N'ccc', CAST(N'2020-08-09T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Blogs] ([id], [blog_category_id], [user_id], [title], [brief_infor], [description], [Image], [banner], [added_date], [status]) VALUES (8, 4, 1, N'tin bên lề', N'cc', N'ccc', N'https://bizweb.dktcdn.net/100/426/888/articles/blog1.jpg?v=1621476532357', N'cccc', CAST(N'2020-10-10T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogsCategory] ON 

INSERT [dbo].[BlogsCategory] ([id], [name], [CreatedDate], [Status]) VALUES (4, N'Cẩm nang', CAST(N'2019-08-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[BlogsCategory] ([id], [name], [CreatedDate], [Status]) VALUES (5, N'Sức khỏe', CAST(N'2019-08-24T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[BlogsCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([id], [Name], [Image], [Description], [CreatedDate], [CurriculumId], [Status]) VALUES (1, N'Chó Pitbull hi hibbbhhhhhh', N'image.png', N'<p>ch&oacute; pitbull rất gh&ecirc; ddos nha caanr thaanj maasy nhok dddd</p>', CAST(N'2021-11-11T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[Courses] ([id], [Name], [Image], [Description], [CreatedDate], [CurriculumId], [Status]) VALUES (2, N'Chó Shiba', N'https://baovedatviet.com/wp-content/uploads/2019/12/cach-huan-luyen-cho-pitbull-bao-ve-chu.jpg', N'chó shiaba cực chảnh', CAST(N'2021-11-11T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Courses] ([id], [Name], [Image], [Description], [CreatedDate], [CurriculumId], [Status]) VALUES (3, N'Chó Ngao', N'https://baovedatviet.com/wp-content/uploads/2019/12/cach-huan-luyen-cho-pitbull-bao-ve-chu.jpg', N'chó ngao rất hung dữ', CAST(N'2021-11-12T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[Courses] ([id], [Name], [Image], [Description], [CreatedDate], [CurriculumId], [Status]) VALUES (4, N'Chó Bẹc giê', N'https://baovedatviet.com/wp-content/uploads/2019/12/cach-huan-luyen-cho-pitbull-bao-ve-chu.jpg', N'chó bẹc giê rất bố láo', CAST(N'2021-11-12T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Courses] ([id], [Name], [Image], [Description], [CreatedDate], [CurriculumId], [Status]) VALUES (5, N'chó vàng', N'bang-xanh-viet-phan-aa.jpg', N'<p>&nbsp;</p><h3>Trung t&acirc;m huấn luyện ch&oacute; Ho&agrave;ng Gia , gửi tới kh&aacute;ch h&agrave;ng <a href="/vi/63/2/Bang-bao-gia-huan-luyen-cho-tai-Ha-Noi.html">bảng b&aacute;o gi&aacute; huấn luyện ch&oacute; tại H&agrave; Nội</a> , ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; dịch vụ huấn luyện ch&oacute; tại nh&agrave; gi&aacute; rẻ nhất với nhiều ưu đ&atilde;i d&agrave;nh cho kh&aacute;ch h&agrave;ng</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><h2>Bảng <a href="/vi/63/2/Bang-bao-gia-huan-luyen-cho-tai-Ha-Noi.html">gi&aacute; huấn luyện ch&oacute;</a> tại H&agrave; Nội mới cập nhật</h2><p><br /><strong>Lưu &yacute;: </strong><br />Đ&acirc;y l&agrave; số tiền trọn g&oacute;i, trong đ&oacute; c&oacute; cả tiền ăn, chăm s&oacute;c, ph&ograve;ng trị bệnh, huấn luyện. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước 70% chi ph&iacute; số c&ograve;n lại thanh to&aacute;n sau khi b&agrave;n giao ch&oacute;<br /><br /><strong>Gi&aacute; huấn luyện c&aacute;c giống ch&oacute; lớn như:</strong> Alaska, Pug, Ch&oacute; ta , Ph&uacute; quốc , Becgie , Doberman, Rottweiler, Corgi, Lạp xưởng , Bull , Golden , Husky<br /><br />+ Gi&aacute; huấn luyện ch&oacute; : 3.5000.000 VNĐ/th&aacute;ng<br />+ Thời gian huấn luyện ch&oacute; tối thiểu : 90 ng&agrave;y<br />+ Tổng chi ph&iacute; cho 3 th&aacute;ng huấn luyện: 10.500.000 VNĐ<br />+ Phương thức thanh to&aacute;n : Thanh to&aacute;n từng th&aacute;ng<br /><br /><br /><strong>Gi&aacute; huấn luyện c&aacute;c giống ch&oacute; nhỏ như : </strong>Maltese , Bichon Frise, Ch&oacute; Bắc Kinh , Poodle, Phốc S&oacute;c, Chihuahua, Ch&oacute; Nhật<br /><br />+Gi&aacute; huấn luyện ch&oacute; : 3.000.000VNĐ/th&aacute;ng<br />+Thời gian huấn luyện ch&oacute; tối thiểu : 90 ng&agrave;y<br />+Tổng chi ph&iacute; cho 3 th&aacute;ng huấn luyện: 9.000.000VNĐ</p><p>&nbsp;</p><p>&nbsp;</p><p>+ Phương thức thanh to&aacute;n : Thanh to&aacute;n từng th&aacute;ng<br /><br /><br />Y&ecirc;u cầu ch&oacute; phải đủ từ 3 th&aacute;ng trở l&ecirc;n mới nhận huấn luyện , ch&oacute; nhỏ hơn c&oacute; thể huấn luyện được nhưng sức đề kh&aacute;ng c&ograve;n yếu, chưa n&ecirc;n đưa v&agrave;o m&ocirc;i trường huấn luyện. Ch&oacute; tr&ecirc;n 5 tuổi ch&uacute;ng t&ocirc;i xin t&iacute;nh th&ecirc;m ph&iacute;.</p><p>Ph&oacute;ng Sự Của VTV1 tại Trung T&acirc;m Huấn Luyện Ch&oacute; Ho&agrave;ng Gia</p><p><br />&nbsp;</p><p>Ph&oacute;ng Sự Của ANTV Tại Trung T&acirc;m Huấn Luyện Ch&oacute; Ho&agrave;ng Gia</p><p><br /><br /><br /><br /><br />&nbsp;</p>', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Curriculum] ON 

INSERT [dbo].[Curriculum] ([id], [Name], [CreatedDate], [Image], [Status]) VALUES (1, N'Chó', CAST(N'2019-10-12T00:00:00.000' AS DateTime), N'https://symbols.vn/wp-content/uploads/2021/11/Mau-bieu-tuong-cho-shiba-cute.jpg', NULL)
INSERT [dbo].[Curriculum] ([id], [Name], [CreatedDate], [Image], [Status]) VALUES (2, N'Mèo', CAST(N'2020-09-07T00:00:00.000' AS DateTime), N'https://i.pinimg.com/550x/43/19/3c/43193cad0301771d3e40aba386e558ee.jpg', NULL)
INSERT [dbo].[Curriculum] ([id], [Name], [CreatedDate], [Image], [Status]) VALUES (4, N'Chó Husky', CAST(N'2021-09-23T00:00:00.000' AS DateTime), N'data:image/jpeg;base64,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', NULL)
INSERT [dbo].[Curriculum] ([id], [Name], [CreatedDate], [Image], [Status]) VALUES (8, N'Loài khác', CAST(N'2020-08-09T00:00:00.000' AS DateTime), N'https://static.vecteezy.com/system/resources/thumbnails/004/914/942/small/icons-set-of-pets-and-veterinary-editable-stroke-free-vector.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Curriculum] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([id], [Name], [CreatedDate], [Description], [Image], [CourseCategoryId], [LevelId], [Status]) VALUES (1, N'Bài tập về hiệu lệnh tại nhà', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Các động tác đơn giản', N'https://cdn1.tuoitre.vn/zoom/600_315/2022/8/31/hinh-anh-cho-pitbull-1661931027134195852291-crop-16619310968851108745084.jpg', 1, 1, NULL)
INSERT [dbo].[Lessons] ([id], [Name], [CreatedDate], [Description], [Image], [CourseCategoryId], [LevelId], [Status]) VALUES (5, N'Bài tập về nghiệp vụ', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Phục vụ trong các nhiệm vụ đặc biệt', N'https://cdn1.tuoitre.vn/zoom/600_315/2022/8/31/hinh-anh-cho-pitbull-1661931027134195852291-crop-16619310968851108745084.jpg', 1, 2, NULL)
INSERT [dbo].[Lessons] ([id], [Name], [CreatedDate], [Description], [Image], [CourseCategoryId], [LevelId], [Status]) VALUES (7, N'Bài tập về rèn dũa bản năng', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Thay đổi bản năng của chó theo hướng tích cực', N'https://cdn1.tuoitre.vn/zoom/600_315/2022/8/31/hinh-anh-cho-pitbull-1661931027134195852291-crop-16619310968851108745084.jpg', 2, 3, NULL)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([id], [Name], [Status]) VALUES (1, N'Dễ', NULL)
INSERT [dbo].[Level] ([id], [Name], [Status]) VALUES (2, N'Trung bình', NULL)
INSERT [dbo].[Level] ([id], [Name], [Status]) VALUES (3, N'Khó', NULL)
INSERT [dbo].[Level] ([id], [Name], [Status]) VALUES (4, N'Chuyên nghiệp', NULL)
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
SET IDENTITY_INSERT [dbo].[PetClinic] ON 

INSERT [dbo].[PetClinic] ([id], [Name], [Status]) VALUES (1, N'Chương Mỹ, Hà Nội', 1)
SET IDENTITY_INSERT [dbo].[PetClinic] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [RoleName], [CreatedDate], [Status]) VALUES (1, N'Admin', CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Roles] ([id], [RoleName], [CreatedDate], [Status]) VALUES (2, N'Employee', CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Roles] ([id], [RoleName], [CreatedDate], [Status]) VALUES (3, N'Veterinarian', CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Roles] ([id], [RoleName], [CreatedDate], [Status]) VALUES (4, N'Customer', CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [FirstName], [MiddleName], [LastName], [DisplayName], [Password], [Address], [ImageProfile], [PhoneNo], [Email], [CreatedDate], [LastModifiedDate], [PetClinicId], [Status]) VALUES (2, N'doctor', N'strange', N'imba', N'doctorstrange', N'123', N'fffff', N'ffffff', N'ffffffff', N'lam@mail', CAST(N'2020-11-11T00:00:00.000' AS DateTime), CAST(N'2020-12-12T00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([id], [RoleId], [UserId], [CreatedDate], [Status]) VALUES (1, 4, 2, CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [FirstName], [MiddleName], [LastName], [DisplayName], [Password], [Address], [ImageProfile], [PhoneNo], [Email], [CreatedDate], [LastModifiedDate], [Status]) VALUES (1, N'Nguyễn', N'Bùi Đức', N'Quang', N'Quang', N'123', NULL, N'no', N'0931750680', N'quangvodoiss@gmail.com', CAST(N'2020-10-20T00:00:00.000' AS DateTime), CAST(N'2020-12-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Users] ([id], [FirstName], [MiddleName], [LastName], [DisplayName], [Password], [Address], [ImageProfile], [PhoneNo], [Email], [CreatedDate], [LastModifiedDate], [Status]) VALUES (2, N'nguyen', N'duc', N'quang', NULL, N'56B0FBC82E5050909A1FBD10DE711DBD', N'18 Hoa Son- Chuc Son', NULL, N'0931750683', N'quang2@mail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [FirstName], [MiddleName], [LastName], [DisplayName], [Password], [Address], [ImageProfile], [PhoneNo], [Email], [CreatedDate], [LastModifiedDate], [Status]) VALUES (3, N'anh', N'quang', N'teo', NULL, N'202CB962AC59075B964B07152D234B70', NULL, NULL, N'0931750684', N'sup@mail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [FirstName], [MiddleName], [LastName], [DisplayName], [Password], [Address], [ImageProfile], [PhoneNo], [Email], [CreatedDate], [LastModifiedDate], [Status]) VALUES (4, N'sinh', N'vio', N'teo', NULL, N'202CB962AC59075B964B07152D234B70', NULL, NULL, N'09317506', N'lam@mail', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [FirstName], [MiddleName], [LastName], [DisplayName], [Password], [Address], [ImageProfile], [PhoneNo], [Email], [CreatedDate], [LastModifiedDate], [Status]) VALUES (1004, N'nguyen', N'anh', N'dung', NULL, N'202CB962AC59075B964B07152D234B70', N'20 Hoa Lac', NULL, N'0931750689', N'quang6@mail.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_BlogsCategory] FOREIGN KEY([blog_category_id])
REFERENCES [dbo].[BlogsCategory] ([id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_BlogsCategory]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_PetCategory] FOREIGN KEY([CurriculumId])
REFERENCES [dbo].[Curriculum] ([id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_PetCategory]
GO
ALTER TABLE [dbo].[LessonDetails]  WITH CHECK ADD  CONSTRAINT [FK_LessonDetails_Lessons] FOREIGN KEY([LessonId])
REFERENCES [dbo].[Lessons] ([id])
GO
ALTER TABLE [dbo].[LessonDetails] CHECK CONSTRAINT [FK_LessonDetails_Lessons]
GO
ALTER TABLE [dbo].[LessonLearning]  WITH CHECK ADD  CONSTRAINT [FK_LessonLearning_LessonDetails] FOREIGN KEY([LessonDetailId])
REFERENCES [dbo].[LessonDetails] ([id])
GO
ALTER TABLE [dbo].[LessonLearning] CHECK CONSTRAINT [FK_LessonLearning_LessonDetails]
GO
ALTER TABLE [dbo].[LessonLearning]  WITH CHECK ADD  CONSTRAINT [FK_LessonLearning_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[LessonLearning] CHECK CONSTRAINT [FK_LessonLearning_Users]
GO
ALTER TABLE [dbo].[LessonRegister]  WITH CHECK ADD  CONSTRAINT [FK_LessonRegister_Lessons] FOREIGN KEY([LessonId])
REFERENCES [dbo].[Lessons] ([id])
GO
ALTER TABLE [dbo].[LessonRegister] CHECK CONSTRAINT [FK_LessonRegister_Lessons]
GO
ALTER TABLE [dbo].[LessonRegister]  WITH CHECK ADD  CONSTRAINT [FK_LessonRegister_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[LessonRegister] CHECK CONSTRAINT [FK_LessonRegister_Users]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Courses] FOREIGN KEY([CourseCategoryId])
REFERENCES [dbo].[Courses] ([id])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Courses]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([id])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Level]
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
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_LessonDetails] FOREIGN KEY([LessonDetailId])
REFERENCES [dbo].[LessonDetails] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_LessonDetails]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Users]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_PetClinic] FOREIGN KEY([PetClinicId])
REFERENCES [dbo].[PetClinic] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_PetClinic]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Roles]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Staff] FOREIGN KEY([UserId])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Staff]
GO
