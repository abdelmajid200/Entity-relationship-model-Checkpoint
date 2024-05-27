# Entity-relationship-model-Checkpoint
Entity–relationship model:
-------------
https://drive.google.com/file/d/1Y-70ll07XcCL9qJYpa5V69KTg5iNCfe9/view?usp=sharing
                                           
------------------------------------------------------------------------------------------------------------------------------------------------------                                            
Relational model:
Gymnasium (GymID,Name,Address,PhoneNumber)

Member (MemberID,LastName,FirstName,Address,DateOfBirth,Gender,#GymID)

Session (SessionID, SportType,Schedule,MaxMembers,#GymID)  

Coach(CoachID, LastName,FirstName,Age,Specialty)

Registration (#SessionID ,#MemberID)

training(#SessionID,#CoachID)
 ---------------------------------------------------------------------         
https://drive.google.com/file/d/1qWVFOJHyKCDrzl8eThu56w9zhwq80jrH/view?usp=sharing

---------------------------
CREATE TABLE Gymnasium (
    GymID NUMBER PRIMARY KEY,
    Name VARCHAR(20),
    Address VARCHAR(20),
    PhoneNumber NUMBER
);
CREATE TABLE Member (
    MemberID NUMBER PRIMARY KEY,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Address VARCHAR(20),
    DateOfBirth DATE,
    Gender VARCHAR(20),
    GymID NUMBER,
    FOREIGN KEY (GymID) REFERENCES Gymnasium(GymID)
);
CREATE TABLE Session (
    SessionID NUMBER PRIMARY KEY,
    SportType VARCHAR(20),
    Schedule VARCHAR(20),
    MaxMembers NUMBER,
    GymID NUMBER,
    FOREIGN KEY (GymID) REFERENCES Gymnasium(GymID)
);
CREATE TABLE Coach (
    CoachID NUMBER PRIMARY KEY,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Age NUMBER,
    Specialty VARCHAR(20)
);
CREATE TABLE Registration (
    SessionID NUMBER,
    MemberID NUMBER,
    PRIMARY KEY (SessionID, MemberID),
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
CREATE TABLE Training (
    SessionID NUMBER,
    CoachID NUMBER,
    PRIMARY KEY (SessionID, CoachID),
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID),
    FOREIGN KEY (CoachID) REFERENCES Coach(CoachID)
);














                                                
