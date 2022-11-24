USE [JobPortal]
GO
/****** Object:  Table [dbo].[DepartmentsMst]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentsMst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobsMst]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobsMst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LocationId] [int] NULL,
	[DepartmentId] [int] NULL,
	[ClosingDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationsMst]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationsMst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](100) NULL,
	[Zip] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMst]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DepartmentsMst] ON 
GO
INSERT [dbo].[DepartmentsMst] ([Id], [Title], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (1, N'IT', CAST(N'2022-11-24T09:48:15.320' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[DepartmentsMst] ([Id], [Title], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (2, N'HR', CAST(N'2022-11-24T09:48:15.320' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[DepartmentsMst] ([Id], [Title], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (3, N'QA', CAST(N'2022-11-24T09:48:15.320' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[DepartmentsMst] ([Id], [Title], [CreatedDate], [CreatedBy], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Accounts', CAST(N'2022-11-24T12:22:12.970' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DepartmentsMst] OFF
GO
SET IDENTITY_INSERT [dbo].[JobsMst] ON 
GO
INSERT [dbo].[JobsMst] ([Id], [Title], [Description], [LocationId], [DepartmentId], [ClosingDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Jr. Dot net Developer', N'Freasher - 1 year experience', 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-24T10:04:23.237' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[JobsMst] ([Id], [Title], [Description], [LocationId], [DepartmentId], [ClosingDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Mid Level Dot net Developer', N'1 - 2 Years', 2, 1, CAST(N'2022-11-24T00:00:00.000' AS DateTime), CAST(N'2022-11-24T10:04:23.237' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[JobsMst] ([Id], [Title], [Description], [LocationId], [DepartmentId], [ClosingDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Sr. Dot net developer', N'2-5 Years', 2, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-24T10:04:23.237' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[JobsMst] ([Id], [Title], [Description], [LocationId], [DepartmentId], [ClosingDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (4, N'SQL Developer', N'> 2 Years', 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-24T10:04:23.237' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[JobsMst] OFF
GO
SET IDENTITY_INSERT [dbo].[LocationsMst] ON 
GO
INSERT [dbo].[LocationsMst] ([Id], [Title], [City], [State], [Country], [Zip], [CreatedDate], [CreatedBy]) VALUES (1, N'US Head Office', N'California', N'Baltimore', N'USA', N'21202', CAST(N'2022-11-24T09:53:02.703' AS DateTime), 1)
GO
INSERT [dbo].[LocationsMst] ([Id], [Title], [City], [State], [Country], [Zip], [CreatedDate], [CreatedBy]) VALUES (2, N'Goa Office', N'Verna', N'Goa', N'India', N'403722', CAST(N'2022-11-24T09:53:02.703' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[LocationsMst] OFF
GO
/****** Object:  StoredProcedure [dbo].[Usp_CreateDepartment]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_CreateDepartment] (@title nvarchar(100), @createdBy int)
		as
		begin
			set nocount on 
			if exists( select 1 from DepartmentsMst where Title = @title)
				begin
					select 'Record already present' as OutputMsg, null as Id
				end
			else
				begin
				insert into DepartmentsMst(Title,	CreatedDate,	CreatedBy) values(@title,getdate(),@createdBy)
				select 'success' as OutputMsg, IDENT_CURRENT('dbo.DepartmentsMst') as Id 
				end
		end
GO
/****** Object:  StoredProcedure [dbo].[Usp_CreateJob]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_CreateJob] 
@title nvarchar(100),
@description nvarchar(max),
@locationId int,
@departmentId int,
@cloasingDate datetime,
@createdBy int
as
begin
	
	if not exists (select 1 from JobsMst where Title = @title)
		begin
			select 'Record already present' as OutputMsg, null as Id
		end
	else
		begin
			insert into JobsMst(Title,	Description,	LocationId,	DepartmentId,	ClosingDate,	CreatedDate,	CreatedBy) 
			values(@title,@description,@locationId,@departmentId,@cloasingDate,getdate(),@createdBy)
			select 'Success' as OutputMsg, IDENT_CURRENT('dbo.JobsMst') as Id
		end
end


GO
/****** Object:  StoredProcedure [dbo].[Usp_GetDepartmentById]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_GetDepartmentById] (@id int)
		as
		begin

			set nocount on 
			if exists(select 1 from DepartmentsMst where Id = @id)
			begin
				select 
				DM.Id, DM.Title, DM.CreatedDate, DM.CreatedBy from DepartmentsMst DM 
				where DM.Id = @id
			end
		end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetDepartments]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_GetDepartments]
		as
		begin
			set nocount on 

				select DM.Id, DM.Title, DM.CreatedDate, DM.CreatedBy from DepartmentsMst DM 
		end

	
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetJobByFilter]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_GetJobByFilter] (@title varchar(50))
		as
		begin

				select 
				JM.Id as JobId,
				'JOB-'+ Cast(JM.Id as nvarchar(10)) as code,
				JM.Title as title,
				JM.Description as description,
				LM.Id as LocationId,
				LM.Title as LocationTitle,
				LM.City as city,
				LM.State as state,
				LM.Country as Country,
				LM.Zip as zip,
				DM.Id as DepartmentId,
				DM.Title as DepartmentTitle,
				JM.CreatedDate as postedDate,
				JM.ClosingDate as closingDate 
				from JobsMst JM 
				inner join LocationsMst LM on JM.LocationId = LM.Id
				inner join DepartmentsMst DM on JM.DepartmentId = DM.Id
				where JM.title  like  '%'+@title+'%'
		end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetJobById]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_GetJobById] (@id int)
		as
		begin

			set nocount on 
			if exists(select 1 from JobsMst where Id = @id)
			begin
				select 
				JM.Id as JobId,
				'JOB-'+ Cast(JM.Id as nvarchar(10)) as code,
				JM.Title as title,
				JM.Description as description,
				LM.Id as LocationId,
				LM.Title as LocationTitle,
				LM.City as city,
				LM.State as state,
				LM.Country as Country,
				LM.Zip as zip,
				DM.Id as DepartmentId,
				DM.Title as DepartmentTitle,
				JM.CreatedDate as postedDate,
				JM.ClosingDate as closingDate 
				from JobsMst JM 
				inner join LocationsMst LM on JM.LocationId = LM.Id
				inner join DepartmentsMst DM on JM.DepartmentId = DM.Id
				where JM.Id = @id
			end
		end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetJobs]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_GetJobs]
		as
		begin

			set nocount on 

			select 
			JM.Id as JobId,
			'JOB-'+ Cast(JM.Id as nvarchar(10)) as code,
			JM.Title as title,
			JM.Description as description,
			LM.Id as LocationId,
			LM.Title as LocationTitle,
			LM.City as city,
			LM.State as state,
			LM.Country as Country,
			LM.Zip as zip,
			DM.Id as DepartmentId,
			DM.Title as DepartmentTitle,
			JM.CreatedDate as postedDate,
			JM.ClosingDate as closingDate 
			from JobsMst JM 
			inner join LocationsMst LM on JM.LocationId = LM.Id
			inner join DepartmentsMst DM on JM.DepartmentId = DM.Id

		end

		
--Testing
--{
--"id": 1055,
--"code": "JOB-01", // Autogenerated on the server
--"title": "Software Developer",
--"description": "Job description here...",
--"location": {
--"id": 10030,
--"title": "US Head Office",
--"city": "Baltimore",
--"state": "MD",
--"country": "United States",
--"zip": 21202
--},
--"department": {
--"id": 2085,
--"title": "Software Development"
--},
--"postedDate": "2021-08-30T18:43:31.877Z",
--"closingDate": "2021-08-30T18:43:31.877Z"
--}
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateDepartment]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_UpdateDepartment] (@title nvarchar(100), @modifiedBy int)
		as
		begin
			set nocount on 
			if not exists( select 1 from DepartmentsMst where Title = @title)
				begin
					select 'Record not found' as OutputMsg, null as Id
				end
			else
				begin
				update DepartmentsMst set Title = @title,	ModifiedBy = @modifiedBy,	ModifiedDate = getdate() where Title = @title
				select 'Update success' as OutputMsg, (select Id from DepartmentsMst where Title = @title) as Id 
				end
		end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateJob]    Script Date: 24-11-2022 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_UpdateJob] 
@id int,
@title nvarchar(100),
@description nvarchar(max),
@locationId int,
@departmentId int,
@cloasingDate datetime,
@updatedBy int
as
begin
	
	if not exists (select 1 from JobsMst where Title = @title)
		begin
			select 'Record not found' as OutputMsg, null as Id
		end
	else
		begin
			update JobsMst 
			set 
			Title = @title,
			Description = @description,
			LocationId = @locationId,
			DepartmentId = @departmentId,
			ClosingDate = @cloasingDate,
			ModifiedDate = getdate(),
			ModifiedBy = @updatedBy
			where Id = @id 
			select 'Update Success' as OutputMsg, @id as Id
		end
end
GO
