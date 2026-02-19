CREATE DATABASE SchoolDB;
GO

USE SchoolDB;
GO

CREATE TABLE Students
(
StudentId int IDENTITY(1,1) PRIMARY KEY,
LastName varchar(50) NOT NULL,
FirstName varchar(50) NOT NULL,
School varchar(50) NOT NULL
);
GO

INSERT INTO Students
(LastName,FirstName,School)
VALUES
('Tom','Max','Nursing'),('Ann','Fay','Mining'),('Joe','Sun','Nursing'),
('Sue','Fox','Computing'),('Ben','Ray','Mining'),('Zoe','Cox','Business'),
('Sam','Ray','Mining'),('Dan','Ash','Medicine'),('Pat','Lee','Computing'),
('Kim','Day','Nursing'),('Tim','Rex','Computing'),('Rob','Ram','Business'),
('Jan','Fry','Mining'),('Jim','Tex','Nursing'),('Ben','Kid','Business'),
('Mia','Chu','Medicine'),('Ted','Tao','Computing'),('Amy','Day','Business'),
('Ian','Roy','Nursing'),('Liz','Kit','Nursing'),('Mat','Tan','Medicine'),
('Deb','Roy','Medicine'),('Ana','Ray','Mining'),('Lyn','Poe','Computing'),
('Amy','Raj','Nursing'),('Kim','Ash','Mining'),('Bec','Kid','Nursing'),
('Eva','Fry','Computing'),('Eli','Lap','Business'),('Sam','Yim','Nursing'),
('Joe','Hui','Mining'),('Liz','Jin','Nursing'),('Ric','Kuo','Business'),
('Pam','Mak','Computing'),('Cat','Yao','Medicine'),('Lou','Zhu','Mining'),
('Tom','Dag','Business'),('Stu','Day','Business'),('Tom','Gad','Mining'),
('Bob','Bee','Business'),('Jim','Ots','Business'),('Tom','Mag','Business'),
('Hal','Doe','Mining'),('Roy','Kim','Mining'),('Vis','Cox','Nursing'),
('Kay','Aga','Nursing'),('Reo','Hui','Nursing'),('Bob','Roe','Mining'),
('Jay','Eff','Computing'),('Eva','Chu','Business'),('Lex','Rae','Nursing'),
('Lin','Dex','Mining'),('Tom','Dag','Business'),('Ben','Shy','Computing'),
('Rob','Bos','Nursing'),('Ali','Mac','Business'),('Ken','Sim','Medicine');
GO