CREATE TABLE [dbo].[Enrollment]
(
	[EnrollmentID] int identity(1,1) not null,
	[Grade] decimal(3,2) null,
	[CourseID] int not null,
	[StudentID] int not null,
	primary key clustered ([EnrollmentID] asc),
	constraint [FK_dbo.Enrollment_dbo.Course_CourseID] foreign key ([CourseID])
		references [dbo].[Course] ([CourseID]) on delete cascade,
	constraint [FK_dbo.Enrollment_dbo.Student_StudentID] foreign key ([StudentID])
		references [dbo].[Student] ([StudentID]) on delete cascade
)
