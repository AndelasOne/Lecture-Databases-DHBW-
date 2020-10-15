
create table XML_File(
 fileID	int primary key,
 version float,
 encoding varchar(32),
 xmlns	varchar(32)
);



create table Hat(
fileID int not null,
headerName varchar(32),
foreign key(fileID) references XML_File(fileID),
foreign key(headerName) references Header(headerName),
unique(fileID, headerName)
);



create table beinhaltet(
fileID int not null,
uID int,
foreign key(fileID) references XML_File(fileID),
foreign key(uID) references Method(uID)
);
