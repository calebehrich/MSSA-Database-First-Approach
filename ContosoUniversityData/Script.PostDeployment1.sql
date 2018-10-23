merge into Course as Target
Using (values
		(1, 'Economics', 3),
		(2, 'Literature', 3),
		(3, 'Chemistry', 4)
	  )
as Source (CourseID, Title, Credits)
on Target.CourseID = Source.CourseID
when not matched by Target then 
insert (Title, Credits)
values (Title, Credits);

merge into Student as Target
using (values
		(1, 'Tibbetts', 'Donnie', '2013-09-01'),
		(2, 'Guzman', 'Liza', '2012-01-13'),
		(3, 'Catlett', 'Phil', '2011-09-03')
	  )
as Source (StudentID, LastName, FirstName, EnrollmentDate)
on Target.StudentID = Source.StudentID
when not matched by Target then
insert (LastName, FirstName, EnrollmentDate)
values (LastName, FirstName, EnrollmentDate);

merge into Enrollment as Target
using (values
		(1, 2.00, 1, 1),
		(2, 3.50, 1, 2),
		(3, 4.00, 2, 3),
		(4, 1.80, 2, 1),
		(5, 3.20, 3, 1),
		(6, 4.00, 3, 2)
	  )
as source (EnrollmentID, Grade, CourseID, StudentID)
on Target.EnrollmentID = Source.EnrollmentID
when not matched by Target then
insert (Grade, CourseID, StudentID)
values (Grade, CourseID, StudentID);