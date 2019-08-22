Create database db_lassi

Use db_lassi

Go


CREATE TABLE tbl_librarybranch (
		branch_id INT PRIMARY KEY NOT NULL,
		branch_name VARCHAR(30),
		branch_address VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_publisher (
		publisher_name VARCHAR(30) PRIMARY KEY NOT NULL,
		publisher_address VARCHAR(50),
		publisher_phone VARCHAR(20)
	);


		CREATE TABLE tbl_books (
		book_id INT PRIMARY KEY NOT NULL,
		Title VARCHAR(50) NOT NULL,
		publisher_name VARCHAR(30) not null constraint fk_publisher_name Foreign key references tbl_publisher(publisher_name) on update cascade on delete cascade
	);

	
CREATE TABLE tbl_bookcopies (
		book_id INT  NOT NULL constraint fk_book_id foreign key references tbl_books(book_id) on update cascade on delete cascade,
		branch_id INT NOT NULL CONSTRAINT fk_branch_id Foreign Key References tbl_librarybranch(branch_id) on update cascade on delete cascade,
		no_of_copies INT ,
	);

		
CREATE TABLE tbl_borrower (
		card_no INT PRIMARY KEY NOT NULL,
		borrower_name VARCHAR(30) NOT NULL,
		borrower_address VARCHAR(30),
		borower_phone varchar(30)
	);


	
CREATE TABLE tbl_bookloans (
		book3_id INT NOT NULL constraint fk_book3_id foreign key references tbl_books(book_id) on update cascade on delete cascade,
		branch3_id int NOT NULL CONSTRAINT fk_branch3_id Foreign Key References tbl_librarybranch(branch_id) on update cascade on delete cascade,
		card_no INT constraint fk_card_no foreign key references tbl_borrower(card_no) on update cascade on delete cascade,
		Date_Out Datetime,
		Date_Due Datetime,		
	);


	
CREATE TABLE tbl_bookauthors (
		book2_id INT  NOT NULL constraint fk_book2_id foreign key references tbl_books(book_id) on update cascade on delete cascade,
		author_name VARCHAR(30)
	);

	Go

	Insert into tbl_librarybranch
	(branch_id, branch_name, branch_address)
	VALUES
	('1','tata', '18727 madda street athupuram'),
	('2', 'Sharpstown', '1888 pookupuram'),
	('3', 'central', '34754 lavadalassi'),
	('4','wheel','6758 dengey')

		Insert into tbl_publisher
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('gopal rao','dinnakudtha 958','12345678'),
	('subba rao','mamayadhi mogaltghru 8547','87654321'),
	('venkateswara rao','pattu okatosari 754896','15236476'),
	('srinu','nasa pettu moodosarei 754ht6896','1523645454')

	Insert into tbl_books
	(book_id, Title, publisher_name)
	Values
	('1','APJ','gopal rao'),
	('2','ABDUL','subba rao'),
	('3','KALAM','subba rao'),
	('4','PORINKI','subba rao'),
	('5','VIJAYAWADA','srinu'),
	('6','HYDERABAD','srinu'),
	('7','BANAGLORE','venkateswara rao'),
	('8','PUNE','srinu'),
	('9','The Lost tribe','subba rao'),
	('10','COORG','srinu'),
	('11','OOTY','gopal rao'),
	('12','MYSORE','srinu'),
	('13','RAJAHMUNDRY','gopal rao'),
	('14','PENAMALURU','srinu'),
	('15','DELHI','gopal rao'),
	('16','MUMBAI','subba rao'),
	('17','LANZA','venkateswara rao'),
	('18','PILOT','gopal rao'),
	('19','ATHUMUKKA','venkateswara rao'),
	('20','PAKKAKI DENGEY','venkateswara rao')


	Insert into tbl_bookauthors
	(book2_id, author_name)
	Values
	('1','kgr'),
	('2','kvsr'),
	('3','ksr'),
	('4','sasi'),
	('5','sriram'),
	('6','chintu'),
	('7','buddi'),
	('8','bhargav'),
	('9','priyanka'),
	('10','tanuja'),
	('11','anuja'),
	('12','kshetraj'),
	('13','suryansh'),
	('14','stephen king'),
	('15','sasi'),
	('16','stephen king'),
	('17','stephen king'),
	('18','sasi'),
	('19','sriram'),
	('20','kgr')

	Insert into tbl_bookcopies
	(book_id, branch_id, no_of_copies)
	Values
	('1','1','8'),
	('2','2','2'),
	('3','3','2'),
	('4','4','4'),
	('5','1','6'),
	('6','2','7'),
	('7','3','8'),
	('8','4','5'),
	('9','2','4'),
	('10','2','5'),
	('11','3','6'),
	('12','4','7'),
	('13','1','8'),
	('14','2','6'),
	('15','4','7'),
	('16','3','8'),
	('17','1','6'),
	('18','2','6'),
	('19','3','3'),
	('20','4','9')




	Insert into tbl_borrower
	(card_no, borrower_name, borrower_address, borower_phone)
	Values
	('1','sannasi','348 traveloity India','2563745'),
	('2','erri pooku','349 traveloity India','354678'),
	('3','madda','350 traveloity India','35467576'),
	('4','ripsy','341 traveloity India','34654678'),
	('5','niki','342 traveloity India','21435678'),
	('6','dharti','344 traveloity India','578789756'),
	('7','sashank','345 traveloity India','467675475'),
	('8','kunal','346 traveloity India','345754678')

	Insert into tbl_bookloans
	(book3_id, branch3_id, card_no, Date_Out, Date_Due)
	Values
	('1','1','2','08-12-2019','08-21-2019'),
	('2','2','2','08-12-2019','08-22-2019'),
	('3','3','2','08-12-2019','08-22-2019'),
	('4','4','2','08-12-2019','08-22-2019'),
	('5','2','2','08-12-2019','08-22-2019'),
	('6','1','1','08-13-2019','08-22-2019'),
	('7','2','1','08-13-2019','08-22-2019'),
	('8','3','1','08-13-2019','08-22-2019'),
	('9','4','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),

	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),

	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-21-2019'),
	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),

	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019'),

	('10','1','1','08-13-2019','08-22-2019'),
	('10','1','1','08-13-2019','08-22-2019')

	Go

	--Retreives no of book copies in the librabcy branch
	Create procedure getbooktitleinlibrabcybranch
	as
	Begin
	Select SUM (b4.no_of_copies) as Bookcopies_in_the_branch from dbo.tbl_librarybranch b1

	Inner join tbl_bookloans b2 on b1.branch_id=b2.branch3_id
	Inner join tbl_books b3 on b3.book_id=b2.book3_id
	Inner join tbl_bookcopies b4 on b4.book_id=b3.book_id
	Where b4.book_id='9'
	and b4.branch_id='2'
	End
	Go
	-- Retreives information about book caledd "The lost tribe" and  no of copies of it in each branch
	Create procedure getbookcopiesforeachbranch
	as
	
	Select b1.branch_id, b1.branch_name,  b4.no_of_copies from dbo.tbl_librarybranch b1
	Inner join tbl_bookcopies b4 on b4.branch_id=b1.branch_id
	Where b4.book_id='9'

	Go
	-- Retrieves names of borrowers with no books checked out
	Create procedure retirevenamesofborowerwithnobookscheckedout
	as
	
	Select b1.card_no, b1.borrower_name from tbl_borrower b1
	Left join tbl_bookloans b2 on b2.card_no=b1.card_no
	Where b1.card_no<>1
	and b1.card_no<>2
	Go
	-- Retrieves Boroower name, address for whose checked books due date is today
	Create procedure sharptownbranchduedatetoday
	as
	
	Select b1.branch_name, b3.Title, b4.borrower_name, b4.borrower_address from tbl_librarybranch b1

	Full Outer Join tbl_bookloans b2 on b2.branch3_id=b1.branch_id
	Full Outer Join tbl_borrower b4 on b4.card_no=b2.card_no
	Full Outer Join tbl_books b3 on b3.book_id=b2.book3_id
	

	Where b1.branch_name='Sharpstown'
	and b2.Date_Due='08-21-2019'

	Go
	-- Retrieves no of books loaned out from each branch
	Create procedure numberofbooksloanedoutfrombranch
	as
	Begin
	Select Count (b2.book3_id) as no_of_books_laoned , b1.branch_name, b2.book3_id   from tbl_librarybranch b1

	Inner Join tbl_bookloans b2 on b2.branch3_id=b1.branch_id
	where b1.branch_name in ('Sharpstown','central','tata','wheel')
	Group By b1.branch_name, b2.book3_id
	End

	Go
	-- -- Retrieves names of borrowers that has more than 5 books checked out for them
	Create procedure retrievenamesofborrowersmorethan5books
	as
	Begin
	Select b1.borrower_name, b1.borrower_address from tbl_borrower b1

	Inner join tbl_bookloans b2 on b2.card_no=b1.card_no
	Full outer Join tbl_bookcopies b3 on b3.book_id=b2.book3_id

	Where b1.card_no in ('2','1')
	and b3.no_of_copies>'5'
	End

	Go
	 -- Retrieves names of all books, no of copies written by Stephen king in "central" branch
	Create procedure stephenkingwrittenbooks
	as
	Begin
	Select b1.Title, b2.author_name, b1.book_id, b4.branch_name, b3.no_of_copies from tbl_books b1

	Full outer join tbl_bookauthors b2 on b2.book2_id=b1.book_id
	Full outer join tbl_bookcopies b3 on b3.book_id=b1.book_id
	Full outer join tbl_librarybranch b4 on b4.branch_id=b3.branch_id

	Where b4.branch_name='central'
	and b2.author_name='stephen king'
	End
	Go


	Exec  [dbo].[getbookcopiesforeachbranch]

	Exec  [dbo].[getbooktitleinlibrabcybranch]

	Exec  [dbo].[numberofbooksloanedoutfrombranch]

	Exec  [dbo].[retirevenamesofborowerwithnobookscheckedout]

	Exec  [dbo].[retrievenamesofborrowersmorethan5books]

	Exec  [dbo].[sharptownbranchduedatetoday]

	Exec  [dbo].[stephenkingwrittenbooks]

