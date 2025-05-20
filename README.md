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
