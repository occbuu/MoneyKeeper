USE [test]
GO
/****** Object:  Table [dbo].[account]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] NOT NULL,
	[id_user] [int] NULL,
	[id_code] [int] NULL,
	[name] [varchar](30) NULL,
	[balance] [float] NULL,
	[note] [text] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[common_code]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[common_code](
	[id] [int] NOT NULL,
	[id_type] [int] NULL,
	[value] [text] NULL,
	[sequence] [int] NULL,
	[id_parent] [int] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[common_type]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[common_type](
	[id] [int] NOT NULL,
	[type_name] [varchar](80) NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[func_role]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[func_role](
	[id_role] [int] NOT NULL,
	[id_func] [int] NOT NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC,
	[id_func] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[function]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[function](
	[id] [int] NOT NULL,
	[func_name] [varchar](30) NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[log]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[log](
	[log_date] [date] NOT NULL,
	[action] [varchar](10) NULL,
	[old_data] [text] NULL,
	[new_data] [text] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[log_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[role_name] [varchar](20) NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[user_name] [varchar](60) NULL,
	[password] [varchar](60) NULL,
	[role_id] [int] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users_log]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users_log](
	[date_log] [date] NOT NULL,
	[action] [varchar](10) NULL,
	[old_data] [text] NULL,
	[new_date] [text] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[date_log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [int] NOT NULL,
	[id_voucher] [varchar](16) NULL,
	[id_account] [int] NULL,
	[type_voucher] [varchar](10) NULL,
	[total] [float] NULL,
	[description] [text] NULL,
	[object] [text] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[voucher_detail]    Script Date: 5/3/2018 9:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[voucher_detail](
	[id] [int] NOT NULL,
	[id_master] [int] NULL,
	[id_code] [int] NULL,
	[amount] [float] NULL,
	[is_deleted] [varchar](10) NULL,
	[create_by] [int] NULL,
	[create_on] [date] NULL,
	[modify_by] [int] NULL,
	[modify_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_common_code] FOREIGN KEY([id_code])
REFERENCES [dbo].[common_code] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_common_code]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_users]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_users1]
GO
ALTER TABLE [dbo].[common_code]  WITH CHECK ADD  CONSTRAINT [FK_common_code_common_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[common_type] ([id])
GO
ALTER TABLE [dbo].[common_code] CHECK CONSTRAINT [FK_common_code_common_type]
GO
ALTER TABLE [dbo].[common_code]  WITH CHECK ADD  CONSTRAINT [FK_common_code_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[common_code] CHECK CONSTRAINT [FK_common_code_users]
GO
ALTER TABLE [dbo].[common_code]  WITH CHECK ADD  CONSTRAINT [FK_common_code_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[common_code] CHECK CONSTRAINT [FK_common_code_users1]
GO
ALTER TABLE [dbo].[common_type]  WITH CHECK ADD  CONSTRAINT [FK_common_type_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[common_type] CHECK CONSTRAINT [FK_common_type_users]
GO
ALTER TABLE [dbo].[common_type]  WITH CHECK ADD  CONSTRAINT [FK_common_type_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[common_type] CHECK CONSTRAINT [FK_common_type_users1]
GO
ALTER TABLE [dbo].[func_role]  WITH CHECK ADD  CONSTRAINT [FK_func_role_function] FOREIGN KEY([id_func])
REFERENCES [dbo].[function] ([id])
GO
ALTER TABLE [dbo].[func_role] CHECK CONSTRAINT [FK_func_role_function]
GO
ALTER TABLE [dbo].[func_role]  WITH CHECK ADD  CONSTRAINT [FK_func_role_role] FOREIGN KEY([id_role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[func_role] CHECK CONSTRAINT [FK_func_role_role]
GO
ALTER TABLE [dbo].[func_role]  WITH CHECK ADD  CONSTRAINT [FK_func_role_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[func_role] CHECK CONSTRAINT [FK_func_role_users]
GO
ALTER TABLE [dbo].[func_role]  WITH CHECK ADD  CONSTRAINT [FK_func_role_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[func_role] CHECK CONSTRAINT [FK_func_role_users1]
GO
ALTER TABLE [dbo].[function]  WITH CHECK ADD  CONSTRAINT [FK_function_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[function] CHECK CONSTRAINT [FK_function_users]
GO
ALTER TABLE [dbo].[function]  WITH CHECK ADD  CONSTRAINT [FK_function_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[function] CHECK CONSTRAINT [FK_function_users1]
GO
ALTER TABLE [dbo].[log]  WITH CHECK ADD  CONSTRAINT [FK_log_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[log] CHECK CONSTRAINT [FK_log_users]
GO
ALTER TABLE [dbo].[log]  WITH CHECK ADD  CONSTRAINT [FK_log_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[log] CHECK CONSTRAINT [FK_log_users1]
GO
ALTER TABLE [dbo].[role]  WITH CHECK ADD  CONSTRAINT [FK_role_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[role] CHECK CONSTRAINT [FK_role_users]
GO
ALTER TABLE [dbo].[role]  WITH CHECK ADD  CONSTRAINT [FK_role_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[role] CHECK CONSTRAINT [FK_role_users1]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_role]
GO
ALTER TABLE [dbo].[users_log]  WITH CHECK ADD  CONSTRAINT [FK_users_log_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users_log] CHECK CONSTRAINT [FK_users_log_users]
GO
ALTER TABLE [dbo].[users_log]  WITH CHECK ADD  CONSTRAINT [FK_users_log_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users_log] CHECK CONSTRAINT [FK_users_log_users1]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_voucher_account] FOREIGN KEY([id_account])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_voucher_account]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_voucher_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_voucher_users]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_voucher_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_voucher_users1]
GO
ALTER TABLE [dbo].[voucher_detail]  WITH CHECK ADD  CONSTRAINT [FK_voucher_detail_common_code] FOREIGN KEY([id_code])
REFERENCES [dbo].[common_code] ([id])
GO
ALTER TABLE [dbo].[voucher_detail] CHECK CONSTRAINT [FK_voucher_detail_common_code]
GO
ALTER TABLE [dbo].[voucher_detail]  WITH CHECK ADD  CONSTRAINT [FK_voucher_detail_users] FOREIGN KEY([create_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[voucher_detail] CHECK CONSTRAINT [FK_voucher_detail_users]
GO
ALTER TABLE [dbo].[voucher_detail]  WITH CHECK ADD  CONSTRAINT [FK_voucher_detail_users1] FOREIGN KEY([modify_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[voucher_detail] CHECK CONSTRAINT [FK_voucher_detail_users1]
GO
ALTER TABLE [dbo].[voucher_detail]  WITH CHECK ADD  CONSTRAINT [FK_voucher_detail_voucher] FOREIGN KEY([id_master])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[voucher_detail] CHECK CONSTRAINT [FK_voucher_detail_voucher]
GO
