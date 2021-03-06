USE [DB_QUIZ]
GO
/****** Object:  Table [dbo].[tbl_user_registration]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_registration](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_mb1] [nvarchar](50) NOT NULL,
	[user_mb2] [nvarchar](50) NOT NULL,
	[user_teamname] [nvarchar](50) NOT NULL,
	[user_address] [nvarchar](max) NOT NULL,
	[user_email] [nvarchar](50) NOT NULL,
	[user_phone] [numeric](18, 0) NOT NULL,
	[user_password] [nvarchar](50) NOT NULL,
	[user_username] [nvarchar](50) NOT NULL,
	[user_question] [nvarchar](50) NOT NULL,
	[user_answer] [nvarchar](50) NOT NULL,
	[quiz_id] [int] NOT NULL,
 CONSTRAINT [PK_user_informations] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_section]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[section_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_section] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_rules]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rules](
	[rule_id] [int] IDENTITY(1,1) NOT NULL,
	[rule_name] [nvarchar](max) NOT NULL,
	[quiz_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_rules] PRIMARY KEY CLUSTERED 
(
	[rule_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_result]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_result](
	[result_id] [int] IDENTITY(1,1) NOT NULL,
	[total_mark] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_result] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_quiz]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_quiz](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_name] [nvarchar](50) NOT NULL,
	[quiz_date] [date] NOT NULL,
	[quiz_description] [nvarchar](max) NOT NULL,
	[quiz_venue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_question]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[section_id] [int] NOT NULL,
	[question] [nvarchar](max) NOT NULL,
	[opt1] [nvarchar](50) NOT NULL,
	[opt2] [nvarchar](50) NOT NULL,
	[opt3] [nvarchar](50) NOT NULL,
	[opt4] [nvarchar](50) NOT NULL,
	[answer] [nvarchar](50) NOT NULL,
	[quiz_id] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_question] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_marks]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_marks](
	[mark_id] [int] IDENTITY(1,1) NOT NULL,
	[marks_obtained] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
	[section_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_marks] PRIMARY KEY CLUSTERED 
(
	[mark_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_feedback]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback_que] [nvarchar](max) NOT NULL,
	[feedback_answer] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_1] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 05/13/2018 20:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[ad_uname] [nvarchar](50) NOT NULL,
	[ad_pswd] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
