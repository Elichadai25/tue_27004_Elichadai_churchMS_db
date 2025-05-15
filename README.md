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
Event system
![Image](https://github.com/user-attachments/assets/3be25252-3997-4702-a52a-fdee4229bc3b)


Database

Event System

Each lane will clearly show who is responsible for which part of the process.

