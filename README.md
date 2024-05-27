# Entity-relationship-model-Checkpoint
Entity–relationship model:
          M                                           1
        |----------------------------------------------|
----------------         ---------------        ----------------
|   Gymnasium   |M     1|    Member    |M     M|    Session   |
|---------------|-------|--------------|-------|--------------|
| Gym_ID        |       | Member_ID    |       | Session_ID   |
| Name          |       | Last_Name    |       | Sport_Type   |
| Address       |       | First_Name   |       | Schedule     |
| Phone_Number  |       | Address      |       | Max_Members  |
 ---------------        | Date_Of_Birth|       |              |
                        | Gender       |       ----------------
                         ---------------               M
                                                       |
                                                       |
                                                       M
                                                ----------------      
                                                |    Coach     |   
                                                |--------------|
                                                | Coach_ID     |
                                                | Last_Name    |      
                                                | First_Name   |       
                                                | Age          |
                                                | Specialty    |
                                                ----------------
------------------------------------------------------------------------------------------------------------------------------------------------------                                            
Relational model:
Gymnasium (GymID,Name,Address,PhoneNumber)

Member (MemberID,LastName,FirstName,Address,DateOfBirth,Gender,#GymID)

Session (SessionID, SportType,Schedule,MaxMembers,#GymID)  

Coach(CoachID, LastName,FirstName,Age,Specialty)

Registration (#SessionID ,#MemberID)

training(#SessionID,#CoachID)


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














                                                
