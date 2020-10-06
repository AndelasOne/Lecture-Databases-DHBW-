create table Method(
uID	int primary key,
methodName	varchar(64),
unit varchar(32)
);

create table Activity(
uID int,
activityName varchar(32),
startConfig varchar(32),
startOdometer_unit varchar(16),
startOdometer_value int,
odometerActivity_unit varchar(16),
odometerActivity_value int,
Foreign Key (uID) References Method(uID)
);


create table Scalar(
uID int,
scalarID int, 
scalarValue int,
Foreign Key (uID) References Method(uID)
);

create table Array(
uID int,
arrayID int, 
arrayIndex int,
arrayValue int,
Foreign Key (uID) References Method(uID)
);
create table List(
uID int,
listID int, 
listIndex int,
listValue int,
Foreign Key (uID) References Method(uID)
);