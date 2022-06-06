USE ex4
GO
CREATE TABLE Book(
    BookCode int PRIMARY KEY,
    BookTitle varchar(100),
    Author varchar(50),
    Edition int IDENTITY,
    BookPrice money ,
    Copies int
)
CREATE TABLE Member(
    MemberCode int PRIMARY KEY,
    Name varchar(50),
    Address varchar(100),
    PhoneNumber int 
)
CREATE TABLE IssueDetails(
    BookCode int CONSTRAINT fk FOREIGN KEY(BookCode) REFERENCES Book(BookCode),
    MemberCode int CONSTRAINT ck FOREIGN KEY (MemberCode) REFERENCES Member(MemberCode),
    IssueDate datetime,
    ReturnDate datetime
)
INSERT INTO Book(BookCode,BookTitle,Author,BookPrice,Copies)
    VALUES(1,'ABC','MXT',1,1)
	INSERT INTO Book(BookCode,BookTitle,Author,BookPrice,Copies)
    VALUES(1000,'AdBC','MdXT',11,12)
	INSERT INTO Book(BookCode,BookTitle,Author,BookPrice,Copies)
    VALUES(1300,'Ad3BC','MqdXT',1122,121)
SELECT * FROM Book
INSERT INTO Member(MemberCode,Name,Address,PhoneNumber)
    VALUES(1,'Tien','Doi Nhan',0988362662)
	INSERT INTO Member(MemberCode,Name,Address,PhoneNumber)
    VALUES(2,'Thinh','dep trai',0968668874)
INSERT INTO IssueDetails(BookCode,MemberCode,IssueDate,ReturnDate)
    VALUES(1,1,'05-12-2022','05-19-2022')
	SELECT * FROM Member
ALTER TABLE IssueDetails
    DROP CONSTRAINT fk;
ALTER TABLE Book
    DROP CONSTRAINT PK__Book__0A5FFCC69C68AF3F;
ALTER TABLE Book
    ADD CONSTRAINT pk PRIMARY KEY (BookCode)
ALTER TABLE Book
    ADD CONSTRAINT CHK PRIMARY KEY (BookPrice)

ALTER TABLE IssueDetails
    DROP CONSTRAINT ck;
ALTER TABLE Member
    DROP CONSTRAINT PK__Member__84CA637669BF0638;
ALTER TABLE Member
    ADD CONSTRAINT CK PRIMARY KEY (MemberCode)

ALTER TABLE IssueDetails
    ADD CONSTRAINT MK FOREIGN KEY (BookCode) REFERENCES Book(BookCode)
ALTER TABLE IssueDetails
    ADD CONSTRAINT DK FOREIGN KEY (MemberCode) REFERENCES Member(MemberCode)


ALTER TABLE Book
    ADD CONSTRAINT pkh CHECK (BookPrice >0 AND BookPrice<200)
ALTER TABLE Member
    ADD CONSTRAINT duynhat UNIQUE  (PhoneNumber)
ALTER TABLE IssueDetails
	ALTER COLUMN BookCode int NOT NULL;
ALTER TABLE IssueDetails
	ALTER COLUMN MemberCode int NOT NULL;
ALTER TABLE IssueDetails
	ADD CONSTRAINT khoachinh PRIMARY KEY (BookCode, MemberCode);
select *from IssueDetails
select *from Member
select *from Book
create table hiii(
hi1 int not null,
hi2 int null
)
go
INSERT INTO hiii(hi1,hi2)
    VALUES(1,1)
INSERT INTO hiii(hi1)
    VALUES(1)
INSERT INTO hiii(hi2)
    VALUES(1)
	select * from hiii
create table milu(
ten int not null,
tuoi int null,
ngaysinh date
)
go
INSERT INTO milu(ten,tuoi,ngaysinh)
    VALUES(1,22,'19980410')
INSERT INTO milu(ten,tuoi,ngaysinh)
    VALUES(2,23,'19980411')

UPDATE milu
SET ten = 12, tuoi = 33, ngaysinh = '19990411'
WHERE ten=1;
select * from milu
delete from milu
where ten=2
delete from milu
where ten=1
delete from milu
where ten=12
select * from milu
ALTER TABLE milu
  ADD id int;
ALTER TABLE milu
ADD CONSTRAINT daylakhoa PRIMARY KEY (id);
ALTER TABLE milu
ADD CONSTRAINT daylakhoa2 PRIMARY KEY (id);
ALTER TABLE milu
  ADD id2 int not null;
ALTER TABLE milu
ADD CONSTRAINT daylakhoa3 PRIMARY KEY (id2);
create table milu2(
malop int not null PRIMARY KEY,
tenlop int null
)
ALTER TABLE milu2
ADD CONSTRAINT daylakhoaphu
  FOREIGN KEY (malop)
  REFERENCES milu (id2);
  select * from milu
 INSERT INTO milu(ten,tuoi,ngaysinh,id,id2)
    VALUES(2,23,'19980411',1,1)
  select * from milu2
   INSERT INTO milu2(malop,tenlop)
    VALUES(1,22)
