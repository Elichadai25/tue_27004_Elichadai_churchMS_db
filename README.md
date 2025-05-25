# tue_27004_Elichadai_churchMS_db
# NAMES:Hatunguramye elichadai
# ID:27004
# 📌 Problem Statement – Church Management System
Traditional church management often relies on manual paperwork, fragmented tools, and informal tracking methods. This creates operational bottlenecks, data inconsistency, and limited oversight across essential functions such as membership tracking, event planning, donations, and volunteer coordination.

To address these challenges, this project proposes a fully integrated Church Management System built using Oracle PL/SQL. The system is designed to centralize core activities in a relational database environment, providing automated workflows, accurate recordkeeping, and robust access control.

# Problem Definition:
Managing church operations (member records, donations, events, and volunteer coordination) is time-consuming and prone to errors.
Many churches rely on spreadsheets or manual records, leading to inefficiency and data inconsistency.
# Context:
This system will be used by churches to streamline administrative tasks, ensuring accurate record-keeping and automation of processes.
# Target Users:
Church administrators, pastors, and members who need access to services like event registrations and donation tracking.

# ✅ PHASE II: Business Process Modeling (Church Management System - MIS)
# 🔹 1. Define the Scope
Business Process: Member Registration and Event Management

Scope:
We will model the process of registering new church members and managing their participation in church events. This includes collecting member information, assigning them to ministries or groups, and allowing them to sign up for events or volunteer roles.

Objectives:

Streamline member registration and data capture

Organize event participation records

Facilitate data-driven decisions for event planning and member engagement

Expected Outcomes:

A more organized, digital member database

Faster and more accurate event coordination

Enhanced decision-making for church staff

# 🔹 2. Identify Key Entities
Entity	Role
New Member	Registers with the church, provides personal info, selects ministry
Church Staff	Approves registration, adds to system, manages events
Database	Stores member data, event participation records
Event System	Notifies members, tracks sign-ups and attendance
MIS Dashboard	Summarizes data for decision-making

# 🔹 3. Swimlanes (Visual Separation)
We’ll use 4 swimlanes in the BPMN/UML diagram:

Member

Church Staff

Database

Event System

Each lane will clearly show who is responsible for which part of the process.

![Image](https://github.com/user-attachments/assets/3be25252-3997-4702-a52a-fdee4229bc3b)
This Business Process Model and Notation (BPMN) diagram illustrates the flow of the Member 
Registration and Event Management process within a Church Management System. It is 
structured using four swimlanes: Member, Church Staff, Database, and Event System, 
representing the key actors and systems involved.
The process begins with a new member filling out a digital registration form. Upon submission, 
the church staff reviews the form and either approves or rejects the registration. If approved, the 
member's data is saved in the church database, and they are assigned to a relevant ministry or 
group.
The member is then notified of upcoming events and given the option to sign up. The event 
system checks for capacity and updates attendance records. Throughout the process, data is 
stored and accessed through the MIS, allowing for real-time updates and accurate tracking.
This BPMN model supports MIS functions by:
 Automating data collection and reducing manual errors
 Providing a centralized information flow
 Supporting decision-making for staff via real-time dashboards
 Enhancing operational efficiency in managing people and events
By clearly visualizing how users, staff, and systems interact, this process model demonstrates 
how MIS contributes to organized, data-driven church operations.

# ✅ Phase III: Logical Model Design – Summary
This phase involves creating a detailed logical data model that aligns with your problem statement and business process model.

# 1. Entity-Relationship (ER) Model
Defined key entities: Member, Ministry, Membership, Event, Attendance, Offering.

Specified attributes with appropriate data types (e.g., VARCHAR2, DATE, NUMBER).

Identified primary keys (PKs) and foreign keys (FKs) to establish clear relationships.

# 2. Relationships & Constraints
Established relationships:

Many-to-many: Member ↔ Ministry via Membership.

Many-to-many: Member ↔ Event via Attendance.

One-to-many: Member → Offering.

Applied constraints: NOT NULL, UNIQUE, CHECK, and DEFAULT to ensure data integrity.

# 3. Normalization
Ensured the model is in Third Normal Form (3NF):

Removed redundancy.

Ensured attributes depend only on primary keys.

No transitive dependencies.

# 4. Handling Real-World Scenarios
The model supports:

Multi-ministry memberships.

Event tracking and attendance.

Multiple offering types.

Extensible for future features like member roles or statuses.

# 5. Presentation & Feedback
![Image](https://github.com/user-attachments/assets/f6f86b50-55c6-4d61-8c24-dc03ce495564)
 ## 🔹 1NF (First Normal Form)
Ensure all values are atomic (no multiple values in one cell).

Remove multivalued fields like ministries and events.

Convert into separate rows for each value.

## 🔹 2NF (Second Normal Form)
Must be in 1NF.

Remove partial dependencies (non-key fields depending on part of a composite key).

Create separate tables for:

Members

Ministries

Events

Use associative tables for many-to-many relationships:

MemberMinistries

MemberEvents

## 🔹 3NF (Third Normal Form)
Must be in 2NF.

Remove transitive dependencies (non-key fields depending on other non-key fields).

Create separate table for Address info if needed (like City and ZipCode).

Link Members to Address using a foreign key (AddressID).

## ✅ Final Tables:
Members(MemberID, Name, AddressID)

Addresses(AddressID, Street, City, ZipCode)

Ministries(MinistryID, MinistryName)

MemberMinistries(MemberID, MinistryID)

Events(EventID, EventName)

MemberEvents(MemberID, EventID)


## ✅ PHASE IV: Database Creation and Naming
📌 Objective
Create a dedicated pluggable database (PDB) with proper naming and super admin access.
🧾 SQL Used
sql
Copy
Edit
CREATE PLUGGABLE DATABASE Tue_27004_Elichadai_churchMS_db
  ADMIN USER Elichadai IDENTIFIED BY Elichadai
  ROLES = (DBA)
  FILE_NAME_CONVERT = (
    '/u01/app/oracle/oradata/CDB1/pdbseed/',
    '/u01/app/oracle/oradata/CDB1/Tue_27004_Elichadai_churchMS_db/'
  );
ALTER PLUGGABLE DATABASE Tue_27004_Elichadai_churchMS_db OPEN;
ALTER PLUGGABLE DATABASE Tue_27004_Elichadai_churchMS_db SAVE STATE;
![Image](https://github.com/user-attachments/assets/a701fdf8-8742-4e77-ba6a-f7371fda3e87)

## 2. Oracle Enterprise Manager (OEM) Setup!
![Image](https://github.com/user-attachments/assets/9672bd8b-b148-4c32-b22f-00249a6c5a12)
![Image](https://github.com/user-attachments/assets/89084a6d-fe86-41b0-8fc4-d333f07bf065)
## ✅ PHASE V: Table Implementation and Data Insertion
📌 Objective
Design and populate physical tables aligned with the logical structure of the Church MS system.

📄 Tables Created
members

pastors

services

offerings

donations

attendance

events

🧪 Sample Data Inserted
3+ realistic entries per table

Example:

sql
Copy
Edit
-- Members
INSERT INTO members (full_name, gender, date_of_birth, contact_number, email)
VALUES ('John Doe', 'Male', TO_DATE('1990-04-15', 'YYYY-MM-DD'), '0788000000', 'johndoe@gmail.com');

-- Attendance
INSERT INTO attendance (member_id, service_date, service_type, status, remarks)
VALUES (1, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Present', 'On time');
## Sample of tables created
![Image](https://github.com/user-attachments/assets/c64adcff-fd37-4454-bb80-55fa29310134)

![Image](https://github.com/user-attachments/assets/a8faffda-3446-4501-b9c3-026433d3ed31)

![Image](https://github.com/user-attachments/assets/5ec36b47-96dc-49ee-b525-8843cdb5f9d6)

![Image](https://github.com/user-attachments/assets/42034980-44e8-49c7-8397-6f193a876309)
## ✅ PHASE VI: Database Interaction and Transactions
📌 Objective
Implement real-life DML/DDL operations with procedures, functions, exception handling, and packages.

📄 Tasks Performed
DML Operations: INSERT, UPDATE, DELETE

DDL Operations: CREATE, ALTER
![Image](https://github.com/user-attachments/assets/5cc2c912-76f1-4908-beb0-c30822e582c4)

![Image](https://github.com/user-attachments/assets/6116f4e9-c201-49a2-bbf3-5d88fadb64e6)

Procedures Created: update_attendance_status
![Image](https://github.com/user-attachments/assets/6413f538-94bd-41a9-9c93-5e2fcab56314)
Functions Created: get_total_donations
![Image](https://github.com/user-attachments/assets/6745be0c-6df3-493e-9708-a58d0233818f)
![Image](https://github.com/user-attachments/assets/c4160d0c-da15-438d-a4a2-edbcb2080f98)

Cursor Usage: Data retrieval
![Image](https://github.com/user-attachments/assets/c4160d0c-da15-438d-a4a2-edbcb2080f98)

Exception Handling: For data safety
![Image](https://github.com/user-attachments/assets/56222eba-eddb-477b-9e00-1962bd1bb1e6)
9343)
![Image](https://github.com/user-attachments/assets/e49102dd-c20d-41e7-bd33-e699e98af32d)
Packages: church_pkg for code modularity
![Image](https://github.com/user-attachments/assets/56222eba-eddb-477b-9e00-1962bd1bb1e6)

🧾 Example
sql
Copy
Edit
-- Procedure to update attendance
CREATE OR REPLACE PROCEDURE update_attendance_status (
    p_member_id NUMBER,
    p_service_date DATE,
    p_new_status VARCHAR2
) AS
BEGIN
    UPDATE attendance
    SET status = p_new_status
    WHERE member_id = p_member_id AND service_date = p_service_date;
END;
## ✅ PHASE VII: Advanced Database Programming and Auditing
📌 Objective
Enhance automation, restrict critical operations on specific days, and implement user action tracking.

📄 Work Done
Created restriction triggers on donations

Prevent INSERT/UPDATE/DELETE on weekdays and holidays

Created auditing triggers for logging user actions

Built holiday_calendar reference table

Designed donation_audit table
![Image](https://github.com/user-attachments/assets/e53edaff-e7c0-464e-9fd2-1f62dd63fa68)

![Image](https://github.com/user-attachments/assets/bce8af54-4e9b-4679-aee6-0dbd189c73c9)

![Image](https://github.com/user-attachments/assets/04d07d3d-c14c-4594-98bb-f25a682b30e0)

![Image](https://github.com/user-attachments/assets/2c77651b-c4c3-4ab4-afb1-ff9d18094da2)
📁 Tables
sql
Copy
Edit
CREATE TABLE donation_audit (
    audit_id         NUMBER GENERATED ALWAYS AS IDENTITY,
    user_id          VARCHAR2(50),
    operation_type   VARCHAR2(10),
    action_time      TIMESTAMP,
    donation_id      NUMBER,
    status           VARCHAR2(10)
);

CREATE TABLE holiday_calendar (
    holiday_date     DATE PRIMARY KEY,
    description      VARCHAR2(100)
);
 ## ✅ Conclusion
This Church Management System streamlines key church operations—like member registration, event tracking, donations, and attendance—using Oracle PL/SQL. It replaces manual processes with a centralized, automated solution that improves efficiency, accuracy, and decision-making. With strong data integrity, auditing, and automation features, the system provides a reliable foundation for current needs and future expansion.


