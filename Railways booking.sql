CREATE TABLE User(
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    U_Age INT,
    U_Gender VARCHAR(10),
    U_Email VARCHAR(30),
    U_City VARCHAR(25),
    U_State VARCHAR(25)
);

CREATE TABLE Passenger(
    P_ID INT NOT NULL PRIMARY KEY,
    P_Name VARCHAR(30),
    P_Age INT,
    P_Gender VARCHAR(10),
    Pnr_no INT,
    Reservation_status VARCHAR(15),
    Coach_no VARCHAR(5),
    Seat_Number VARCHAR(10)
);

CREATE TABLE TRAIN (
    T_Number INT NOT NULL PRIMARY KEY,
    T_Name VARCHAR(30),
    T_origin VARCHAR(30),
    T_Destination VARCHAR(30),
    T_Stops INT,
    T_Departure TIME,
    T_Arrival TIME,
    T_Time TIME
);

CREATE TABLE Ticketfare(
    T_Number INT PRIMARY KEY,
    T_Name VARCHAR(30),
    First_Ac INT,
    Second_Ac INT,
    Third_Ac INT,
    Third_Economy INT,
    CONSTRAINT Fk_No FOREIGN KEY(T_Number)REFERENCES TRAIN(T_Number)
);

CREATE TABLE Passengerdetails(
    T_Number INT,
    P_Id INT NOT NULL,
    Booked_Name VARCHAR(30),
    No_Passengers INT,
    Boarding_station VARCHAR(25),
    Destination_station VARCHAR(25),
    CONSTRAINT FK_Id FOREIGN KEY(P_Id)REFERENCES Passenger(P_Id)
    );
    

INSERT INTO User VALUES("Arun","Ganesh",27,"Male","Arunganesh2504@gmail.com","Chennai","Tamilnadu");
INSERT INTO User VALUES("Preethi","Dinesh",23,"Female","Preethideenu@gmail.com","Chennai","Tamilnadu");
INSERT INTO User VALUES("Imran","Abdul",30,"Male","Mohamedimran@gmail.com","Vijayawada","Andhrapradesh");
INSERT INTO User VALUES("Kiran","reddy",25,"Male","Kirannadar44@gmail.com","Warangal","Telangana");
INSERT INTO User VALUES("Reethu","Singh",31,"Female","Rithujayadev@gmail.com","Balharshah","Maharashtra");
INSERT INTO User VALUES("Jyoti","Amandeep",38,"Female","Amar5578@gmail.com","Nagpur","Maharashtra");
INSERT INTO User VALUES("Hrithik","Kumar",34,"Male","hritik001@gmail.com","Bhopal","Madhyapradesh");
INSERT INTO User VALUES("Emilt","Dsouza",40,"female","Souzaemile66@gmail.com","Agra","Uttarpradesh");
INSERT INTO User VALUES("Kowshalya","Prathap",36,"Female","Kowshalyamruham@gmail.com","Jhansi","Uttarpradesh");
INSERT INTO User VALUES("Gowtham","Arora",42,"Male","Gowthamyadav@gmail.com","Delhi","Newdelhi");
INSERT INTO User VALUES("Harish","Deva",26,"Male","harishmohanraj1208@gmail.com","Chennai","Tamilnadu");
INSERT INTO User VALUES("Vaishali","Naga",22,"Female","Vaishureddy0406@gmail.com","Vijayawada","Andhrapradesh");
INSERT INTO User VALUES("Rajesh","Mundra",32,"Male","Rajesh4509@gmail.com","Nagpur","Maharashtra");
INSERT INTO User VALUES("Sushanth","Sharma",21,"Male","Sushanthshan@gmail.com","Jhansi","Uttarpradesh");
INSERT INTO User VALUES("Devika","Ashwath",35,"Female","Deviash2127@gmail.com","Newdelhi","Delhi");

INSERT INTO Passenger VALUES(3763227,"Arun",27,"Male",450076019322,"CNF","B10","23/24/27/28/31/32");
INSERT INTO Passenger VALUES(3810074,"Preethi",23,"Female",450276019323,"CNF","B6","43/44");
INSERT INTO Passenger VALUES(3965519,"Imran",30,"Male",450176655345,"RAC","B2","Null");
INSERT INTO Passenger VALUES(3410508,"Kiran",25,"Male",460003255631,"CNF","A4","1/2/4/5");
INSERT INTO Passenger VALUES(3521050,"Reethu",31,"Female",450710089255,"WL","Null","Null");
INSERT INTO Passenger VALUES(3149082,"Jyoti",38,"Female",460413987501,"CNF","A1","12/13/14/15/16");
INSERT INTO Passenger VALUES(4075610,"Hrithik",34,"Male",461788543014,"RAC","H1","Null");
INSERT INTO Passenger VALUES(4228730,"Emily",40,"Female",455017930421,"CNF","B9","17/18/20");
INSERT INTO Passenger VALUES(4199654,"Kowshalya",36,"Female",461053330864,"CNF","H1","5/6/8");
INSERT INTO Passenger VALUES(4229649,"Gowtham",42,"Male",450086154432,"RAC","A3","Null");
INSERT INTO Passenger VALUES(4003490,"Harish",26,"Male",443256007619,"CNF","B3","49/51/53/55/56");
INSERT INTO Passenger VALUES(3775901,"Vaishali",22,"Female",460214330565,"CNF","B11","59/60/61");
INSERT INTO Passenger VALUES(4230566,"Rajesh",32,"Male",460457001325,"CNF","A2","47/48");
INSERT INTO Passenger VALUES(4240176,"Sushanth",21,"Male",450988612304,"CNF","B1","1");
INSERT INTO Passenger VALUES(4250012,"Devika",35,"Female",451432250478,"CNF","B8","35/37/39/40");

INSERT INTO TRAIN  VALUES(12433,"ChennaiRajdhani","Chennai","Hazratnizamuddin",8,"6:00","10:30","28:30");

INSERT INTO Ticketfare VALUES(12433,"ChennaiRajdhani",6975,5575,3840,2240);

INSERT  INTO Passengerdetails VALUES(12433,3763227,"Arun",6,"Chennai","Agra");
INSERT INTO Passengerdetails VALUES(12433,3810074,"Preethi",2,"Chennai","Nagpur");
INSERT INTO Passengerdetails VALUES(12433,3965519,"Imran",4,"Vijayawada","Hazratnizamuddin");
INSERT INTO Passengerdetails VALUES(12433,3410508,"Kiran",4,"Warangal","Agra");
INSERT INTO Passengerdetails VALUES(12433,3521050,"Reethu",Null,"Balharshah","Hazratnizamuddin");
INSERT INTO Passengerdetails VALUES(12433,3149082,"Jyoti",5,"Chennai","Nagpur");
INSERT INTO Passengerdetails VALUES(12433,4075610,"Hrithik",2,"Chennai","Bhopal");
INSERT INTO Passengerdetails VALUES(12433,4228730,"Emily",3,"Nagpur","Agra");
INSERT INTO Passengerdetails VALUES(12433,4199654,"Kowshalya",3,"Vijayawada","Jhansi");
INSERT INTO Passengerdetails VALUES(12433,4229649,"Gowtham",2,"Chennai","Hazratnizamuddin");
INSERT INTO Passengerdetails VALUES(12433,4003490,"Harish",5,"Chennai","Gwalior");
INSERT INTO Passengerdetails VALUES(12433,3775901,"Vaishali",3,"Vijayawada","Bhopal");
INSERT INTO Passengerdetails VALUES(12433,4230566,"Rajesh",2,"Chennai","Nagpur");
INSERT INTO Passengerdetails VALUES(12433,4240176,"Sushanth",1,"Vijayawada","Jhansi");
INSERT INTO Passengerdetails VALUES(12433,4250012,"Devika",4,"Chennai","Hazratnizamuddin");

SELECT Passenger.P_Id, Passenger.P_Name,Passenger.Pnr_no,Passenger.Reservation_status,Passenger.Coach_no,
Passenger.Seat_Number,TRAIN.T_Number,TRAIN.T_Name,TRAIN.T_Departure,Passengerdetails.No_Passengers,
Passengerdetails.Boarding_station,Passengerdetails.Destination_station,Ticketfare.Third_Ac * Passengerdetails.No_Passengers
FROM Passenger
JOIN TRAIN
JOIN Ticketfare    
JOIN Passengerdetails
ON Passengerdetails.P_Id = Passenger.P_Id
WHERE Passenger.Coach_no LIKE 'B%'
LIMIT 8;

SELECT Passenger.P_Id, Passenger.P_Name,Passenger.Pnr_no,Passenger.Reservation_status,Passenger.Coach_no,
Passenger.Seat_Number,TRAIN.T_Number,TRAIN.T_Name,TRAIN.T_Departure,Passengerdetails.No_Passengers,
Passengerdetails.Boarding_station,Passengerdetails.Destination_station,Ticketfare.Second_Ac * Passengerdetails.No_Passengers
FROM Passenger
JOIN TRAIN
JOIN Ticketfare    
JOIN Passengerdetails
ON Passengerdetails.P_Id = Passenger.P_Id
WHERE Passenger.Coach_no LIKE 'A%'
LIMIT 5;

SELECT Passenger.P_Id, Passenger.P_Name,Passenger.Pnr_no,Passenger.Reservation_status,Passenger.Coach_no,
Passenger.Seat_Number,TRAIN.T_Number,TRAIN.T_Name,TRAIN.T_Departure,Passengerdetails.No_Passengers,
Passengerdetails.Boarding_station,Passengerdetails.Destination_station,Ticketfare.First_Ac * Passengerdetails.No_Passengers
FROM Passenger
INNER JOIN TRAIN
INNER JOIN Ticketfare    
INNER JOIN Passengerdetails
ON Passengerdetails.P_Id = Passenger.P_Id
WHERE Passenger.Coach_no LIKE 'H%'
LIMIT 2;
