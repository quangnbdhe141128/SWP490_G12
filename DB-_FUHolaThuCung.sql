CREATE DATABASE PetHolaKingdom
GO
USE PetHolaKingdom
GO

--This table need write INSERT in this SQL File
--Danh sách các loại Role được ghi ở đây Admin, Employee, Customer, Veterinarian

CREATE TABLE Roles (
	id int IDENTITY(1,1) PRIMARY KEY,
	RoleName NVARCHAR(200) NOT NULL,
	CreatedDate DATETIME NOT NULL
);
GO
INSERT INTO Roles VALUES(N'Admin', GETDATE());
INSERT INTO Roles VALUES(N'Employee', GETDATE());
INSERT INTO Roles VALUES(N'Customer', GETDATE());
INSERT INTO Roles VALUES(N'Veterinarian', GETDATE());
GO
---Bảng này cần CRUD Screens, có thể bổ sung thêm cột khi code Sign in with Facebook account, Authentication bằng JWT
CREATE TABLE Users (
	id int IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(200) NOT NULL,
	MiddleName NVARCHAR(200) NOT NULL,
	LastName NVARCHAR(200) NOT NULL,
	DisplayName NVARCHAR(200) NOT NULL,
	[Password] NVARCHAR(50) NULL,
	ImageProfile NVARCHAR(500) NULL,
	PhoneNo NVARCHAR(20) NOT NULL,
	Email NVARCHAR(200) NOT NULL,
	[Status] NVARCHAR(200) NOT NULL, ---Lưu giá trị Active và Disabled
	CreatedDate DATETIME NOT NULL,
	LastModifiedDate DATETIME NOT NULL
);

--Bảng này khi nào sử dụng Screen Add User thì insert vào đây, khi add user thì phải chọn Roles thì sẽ lấy được role Id, User Id sẽ lấy sau khi add new User vào bảng Users trước
CREATE TABLE UserRole (
	id int IDENTITY(1,1) PRIMARY KEY,
	RoleId INT NOT NULL,
	UserId INT NOT NULL,
	CreatedDate DATETIME NOT NULL,
	CONSTRAINT FK_UserRole_User  FOREIGN KEY (Id) REFERENCES Users (Id),
	CONSTRAINT FK_UserRole_Role  FOREIGN KEY (Id) REFERENCES Roles (Id)
);
GO
CREATE TABLE PetCategory(
	id int IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	CreatedDate DATETIME NOT NULL
);
GO

INSERT INTO PetCategory VALUES(N'Chó', GETDATE());
INSERT INTO PetCategory VALUES(N'Mèo', GETDATE());

GO
CREATE TABLE Pets(
	id int IDENTITY(1,1) PRIMARY KEY,
	[Description] NVARCHAR(500) NOT NULL,
	DateOfBirth datetime NOT NULL,
	[Weight] float NOT NULL,
	[Gender] NVARCHAR(50) NOT NULL,--Go chon tren man hinh la duc hay cai	
	PetCategoryId int NOT NULL,
	UserId int NOT NULL,
	CreatedDate DATETIME NOT NULL,
	LastModifiedDate DATETIME NULL,
	CONSTRAINT FK_Pet_User  FOREIGN KEY (Id) REFERENCES Users (Id)
);
GO
CREATE TABLE PetsHistory(
	id int IDENTITY(1,1) PRIMARY KEY,
	[Description] NVARCHAR(500) NOT NULL,
	DateOfBirth datetime NOT NULL,
	[Weight] float NOT NULL,
	[Gender] NVARCHAR(50) NOT NULL,--Go chon tren man hinh la duc hay cai
	
	PetCategoryId int NOT NULL,
	UserId int NOT NULL,
	CreatedDate DATETIME NOT NULL,
	LastModifiedDate DATETIME NULL,
	CONSTRAINT FK_PetsHistory_Pets FOREIGN KEY (Id) REFERENCES Pets (Id)
);
GO
CREATE TABLE Courses(--Tìm hiểu tất cả các loại lesson để phù hợp với các loại petcategory thì sẽ có bài học tương ứng dành cho các pet loại đó
	id int IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	[thumbnail] [ntext] NULL,
	[banner] [ntext] NOT NULL,
	[Description] NVARCHAR(MAX) NOT NULL,
	CreatedDate DATETIME NOT NULL
);
GO
CREATE TABLE [Level](
id int IDENTITY(1,1) PRIMARY KEY,
[Name] NVARCHAR(200) NOT NULL,
);
GO
CREATE TABLE Lessons(
	id int IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	CreatedDate DATETIME NOT NULL,
	[Description] NVARCHAR(MAX) NOT NULL,
	[thumbnail] [ntext] NULL,
	[banner] NVARCHAR(200) NOT NULL,
	CourseCategoryId INT NOT NULL,
	LessonLevel INT NOT NULL,
	CONSTRAINT FK_Lessons_Course FOREIGN KEY (Id) REFERENCES Courses(Id)
);
GO
CREATE TABLE LessonsHistory(
id int IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	CreatedDate DATETIME NOT NULL,
);
GO
CREATE TABLE [BlogsCategory](
	id int IDENTITY(1,1) PRIMARY KEY,	
	[name] [nvarchar](100) NULL,
	CreatedDate DATETIME NOT NULL
	)
GO
INSERT INTO BlogsCategory VALUES(N'Sức khỏe', GETDATE());
INSERT INTO BlogsCategory VALUES(N'Khám phá', GETDATE());
INSERT INTO BlogsCategory VALUES(N'Sự kiện', GETDATE());
GO
CREATE TABLE [Blogs](
	id int IDENTITY(1,1) PRIMARY KEY,
	[blog_category_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[brief_infor] [nvarchar](300) NULL,
	[description] [nvarchar](max) NULL,
	[thumbnail] [ntext] NULL,
	[banner] [ntext] NOT NULL,
	[added_date] [datetime] NULL)