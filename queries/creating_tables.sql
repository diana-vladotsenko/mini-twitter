USE master;
GO

CREATE DATABASE MiniTwitter;
GO

ALTER DATABASE MiniTwitter SET COMPATIBILITY_LEVEL = 140;
GO

USE MiniTwitter;
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

----------------------------------------------------------
-- TABLES
----------------------------------------------------------

-- Gender
CREATE TABLE dbo.Gender (
    ID INT IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_Gender PRIMARY KEY CLUSTERED (ID ASC)
);
GO

-- Users
CREATE TABLE dbo.Users (
    ID INT IDENTITY(1,1) NOT NULL,
    Full_Name NVARCHAR(300) NOT NULL,
    Username NVARCHAR(150) NOT NULL,
    Email NVARCHAR(200) NOT NULL,
    Gender_id INT NOT NULL,
    Created_at DATETIME2 NOT NULL DEFAULT sysdatetime(),
    CONSTRAINT PK_Users PRIMARY KEY CLUSTERED (ID ASC)
);
GO

-- Posts
CREATE TABLE dbo.Posts (
    ID INT IDENTITY(1,1) NOT NULL,
    Users_id INT NOT NULL,
    Content NVARCHAR(1000) NOT NULL,
    Created_at DATETIME2 NOT NULL DEFAULT sysdatetime(),
    CONSTRAINT PK_Posts PRIMARY KEY CLUSTERED (ID ASC)
);
GO

-- Comments
CREATE TABLE dbo.Comments (
    ID INT IDENTITY(1,1) NOT NULL,
    Users_id INT NOT NULL,
    Posts_id INT NOT NULL,
    Comment NVARCHAR(MAX) NOT NULL,
    Created_at DATETIME2 NOT NULL DEFAULT sysdatetime(),
    CONSTRAINT PK_Comments PRIMARY KEY CLUSTERED (ID ASC)
);
GO

-- Media
CREATE TABLE Media (
    ID int IDENTITY(1,1) PRIMARY KEY,
    Url nvarchar(500) NOT NULL,
    MediaType nvarchar(50) NOT NULL,
    Created_at datetime NOT NULL DEFAULT(GETUTCDATE())
);
GO

-- PostMedia
CREATE TABLE Post_Media (
    ID int IDENTITY(1,1) PRIMARY KEY,
    Posts_id int NOT NULL,
    Media_id int NOT NULL,
    CONSTRAINT FK_PostMedia_Post FOREIGN KEY (Posts_id) REFERENCES Posts(ID),
    CONSTRAINT FK_PostMedia_Media FOREIGN KEY (Media_id) REFERENCES Media(ID)
);
GO


-- Hashtags
CREATE TABLE dbo.Hashtags (
    ID INT IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(200) NOT NULL,
    CONSTRAINT PK_Hashtags PRIMARY KEY CLUSTERED (ID ASC)
);
GO

-- Post_Hastags
CREATE TABLE dbo.Post_Hastags (
    ID INT IDENTITY(1,1) NOT NULL,
    Posts_id INT NOT NULL,
    Hashtags_id INT NOT NULL,
    CONSTRAINT PK_Post_Hastags PRIMARY KEY CLUSTERED (ID ASC)
);
GO

-- Likes
CREATE TABLE dbo.Likes (
    ID INT IDENTITY(1,1) NOT NULL,
    Users_id INT NOT NULL,
    Posts_id INT NOT NULL,
    CONSTRAINT PK_Likes PRIMARY KEY CLUSTERED (ID ASC)
);
GO

----------------------------------------------------------
-- FOREIGN KEYS
----------------------------------------------------------

ALTER TABLE dbo.Users
ADD CONSTRAINT FK_Users_Gender
FOREIGN KEY (Gender_id) REFERENCES dbo.Gender(ID);
GO

ALTER TABLE dbo.Posts
ADD CONSTRAINT FK_Posts_Users
FOREIGN KEY (Users_id) REFERENCES dbo.Users(ID);
GO

ALTER TABLE dbo.Comments
ADD CONSTRAINT FK_Comments_Users
FOREIGN KEY (Users_id) REFERENCES dbo.Users(ID);
GO

ALTER TABLE dbo.Comments
ADD CONSTRAINT FK_Comments_Posts
FOREIGN KEY (Posts_id) REFERENCES dbo.Posts(ID);
GO

ALTER TABLE dbo.Likes
ADD CONSTRAINT FK_Likes_Users
FOREIGN KEY (Users_id) REFERENCES dbo.Users(ID);
GO

ALTER TABLE dbo.Likes
ADD CONSTRAINT FK_Likes_Posts
FOREIGN KEY (Posts_id) REFERENCES dbo.Posts(ID);
GO

ALTER TABLE dbo.Post_Hastags
ADD CONSTRAINT FK_PostHastags_Hashtags
FOREIGN KEY (Hashtags_id) REFERENCES dbo.Hashtags(ID);
GO

ALTER TABLE dbo.Post_Hastags
ADD CONSTRAINT FK_PostHastags_Posts
FOREIGN KEY (Posts_id) REFERENCES dbo.Posts(ID);
GO
