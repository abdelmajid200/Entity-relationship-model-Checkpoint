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
Relational model:
Gymnasium (GymID,Name,Address,PhoneNumber)

Member (MemberID,LastName,FirstName,Address,DateOfBirth,Gender,#GymID)

Session (SessionID, SportType,Schedule,MaxMembers,#GymID)  

Coach(CoachID, LastName,FirstName,Age,Specialty)

Registration (#SessionID ,#MemberID)

training(#SessionID,#CoachID)



                                                
