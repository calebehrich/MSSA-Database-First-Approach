CREATE TABLE [dbo].[Student]
(
	[StudentID] int identity(1,1) not null,
	[LastName] nvarchar(50) null,
	[FirstName] nvarchar(50) null,
	[MiddleName] nvarchar(50) null,
	[EnrollmentDate] datetime null,
	Primary key clustered ([StudentID] asc)
)
