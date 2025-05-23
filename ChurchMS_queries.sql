CREATE PLUGGABLE DATABASE Tue_27004_Elichadai_churchMS_db
  ADMIN USER Elichadai IDENTIFIED BY Elichadai
  ROLES = (DBA)
  FILE_NAME_CONVERT = (
    '/u01/app/oracle/oradata/CDB1/pdbseed/',
    '/u01/app/oracle/oradata/CDB1/Tue_27004_Elichadai_churchMS_db/'
  );

ALTER PLUGGABLE DATABASE Tue_27004_Elichadai_churchMS_db OPEN;
ALTER PLUGGABLE DATABASE Tue_27004_Elichadai_churchMS_db SAVE STATE;

CREATE TABLE Donation (
    donation_id         NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    member_id           NUMBER NOT NULL,
    donation_date       DATE DEFAULT SYSDATE,
    amount              NUMBER(10, 2) NOT NULL CHECK (amount > 0),
    donation_type       VARCHAR2(50) NOT NULL, 
    payment_method      VARCHAR2(30),          
    notes               VARCHAR2(255),
    CONSTRAINT fk_donation_member
        FOREIGN KEY (member_id)
        REFERENCES Member(member_id)
);
CREATE TABLE Attendance (
    attendance_id       NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    member_id           NUMBER NOT NULL,
    service_date        DATE NOT NULL,
    service_type        VARCHAR2(50),          -- e.g., Sunday Worship, Bible Study
    status              VARCHAR2(20) DEFAULT 'Present', -- Present, Absent, Late
    remarks             VARCHAR2(255),
    CONSTRAINT fk_attendance_member
        FOREIGN KEY (member_id)
        REFERENCES Member(member_id),
    CONSTRAINT unq_attendance_unique
        UNIQUE (member_id, service_date) -- A person can't attend the same service twice
);
INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (1, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Present', 'On time');

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (2, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Late', 'Arrived 10 mins late');

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (3, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Absent', 'Sick leave');


INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (1, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Present', 'On time');

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (2, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Late', 'Arrived 10 mins late');

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (3, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Absent', 'Sick leave');






SELECT * FROM Member;
NSERT INTO Member (full_name, gender, join_date, phone_number, email)
VALUES ('John Doe', 'Male', TO_DATE('2023-01-15', 'YYYY-MM-DD'), '0788000001', 'john.doe@example.com');

INSERT INTO Member (full_name, gender, join_date, phone_number, email)
VALUES ('Jane Smith', 'Female', TO_DATE('2023-03-10', 'YYYY-MM-DD'), '0788000002', 'jane.smith@example.com');

INSERT INTO Member (full_name, gender, join_date, phone_number, email)
VALUES ('Joseph Paul', 'Male', TO_DATE('2024-11-20', 'YYYY-MM-DD'), '0788000003', 'joseph.paul@example.com');


SELECT member_id, full_name FROM Member;

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (1, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Present', 'On time');
-- Assuming member IDs are 1, 2, 3 (you can check using SELECT * FROM Member)
INSERT INTO Donation (member_id, donation_date, amount, donation_type, payment_method, notes)
VALUES (1, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 5000, 'Tithe', 'Mobile', 'April tithe');

INSERT INTO Donation (member_id, donation_date, amount, donation_type, payment_method, notes)
VALUES (2, TO_DATE('2025-05-03', 'YYYY-MM-DD'), 2000, 'Offering', 'Cash', 'Sunday offering');

INSERT INTO Donation (member_id, donation_date, amount, donation_type, payment_method, notes)
VALUES (3, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 10000, 'Fundraising', 'Bank', 'Building fund');


INSERT INTO members (full_name, gender, date_of_birth, contact_number, email)
VALUES ('John Doe', 'Male', TO_DATE('1990-04-15', 'YYYY-MM-DD'), '0788000000', 'johndoe@gmail.com');

INSERT INTO members (full_name, gender, date_of_birth, contact_number, email)
VALUES ('Jane Smith', 'Female', TO_DATE('1992-07-10', 'YYYY-MM-DD'), '0788000001', 'janesmith@gmail.com');

INSERT INTO members (full_name, gender, date_of_birth, contact_number, email)
VALUES ('David Iradukunda', 'Male', TO_DATE('1985-12-20', 'YYYY-MM-DD'), '0788000002', 'davidiradukunda@gmail.com');


INSERT INTO pastors (full_name, assigned_church, contact_number, email)
VALUES ('Pastor Grace Mbabazi', 'Zion Church', '0788111222', 'grace@zion.org');

INSERT INTO pastors (full_name, assigned_church, contact_number, email)
VALUES ('Pastor Emmanuel Ntirenganya', 'Bethel Church', '0788333444', 'emmanuel@bethel.org');

INSERT INTO pastors (full_name, assigned_church, contact_number, email)
VALUES ('Pastor Alice Uwimana', 'Shalom Church', '0788555666', 'alice@shalom.org');

INSERT INTO services (service_date, topic, pastor_id)
VALUES (TO_DATE('2025-06-01', 'YYYY-M

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (2, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Late', 'Arrived 10 mins late');

INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (3, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Sunday Worship', 'Absent', 'Sick leave');
INSERT INTO services (service_date, topic, pastor_id)
VALUES (TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Faith and Healing', 1);

INSERT INTO services (service_date, topic, pastor_id)
VALUES (TO_DATE('2025-06-08', 'YYYY-MM-DD'), 'Power of Prayer', 2);

INSERT INTO services (service_date, topic, pastor_id)
VALUES (TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'Walking in Grace', 3);

INSERT INTO offerings (member_id, amount)
VALUES (1, 5000);

INSERT INTO offerings (member_id, amount)
VALUES (2, 3000);

INSERT INTO offerings (member_id, amount)
VALUES (3, 4000);

select * from ATTENDANCE;


UPDATE members
SET contact_number = '0788999888'
WHERE full_name = 'John Doe';


UPDATE members
SET contact_number = '0788999888'
WHERE full_name = 'John Doe';

UPDATE members
SET contact_number = '0788999888'
WHERE full_name = 'John Doe';


DELETE FROM offerings
WHERE offering_id = 3;


-- UPDATE example: Update a member's contact
UPDATE members
SET contact_number = '0788999888'
WHERE full_name = 'John Doe';

-- DELETE example: Remove an offering with ID 3 (if exists)
DELETE FROM offerings
WHERE offering_id = 3;

-- ALTER: Add a column for occupation in members
ALTER TABLE members
ADD occupation VARCHAR2(100);

-- DROP: Drop the occupation column (if needed)
-- ALTER TABLE members DROP COLUMN occupation;

-- Running total of donations
SELECT member_id, donation_date, amount,
       SUM(amount) OVER (PARTITION BY member_id ORDER BY donation_date) AS running_total
FROM donation;


- Running total of donations
SELECT member_id, donation_date, amount,
       SUM(amount) OVER (PARTITION BY member_id ORDER BY donation_date) AS running_total
FROM donation;

CREATE OR REPLACE PROCEDURE get_attendance(p_member_id IN NUMBER) IS
BEGIN
    FOR rec IN (
        SELECT * FROM attendance
        WHERE member_id = p_member_id
        ORDER BY service_date DESC
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Date: ' || rec.service_date || ' | Status: ' || rec.status);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

DECLARE
    CURSOR c_members IS
        SELECT member_id, full_name FROM members;
    rec c_members%ROWTYPE;
BEGIN
    OPEN c_members;
    LOOP
        FETCH c_members INTO rec;
        EXIT WHEN c_members%OTFOUND;
DBMS_OUTPUT.PUT_LINE('ID: ' || rec.member_id || ' - Name: ' || rec.full_name);
    END LOOP;
    CLOSE c_members;
END;


DECLARE
    CURSOR c_members IS
        SELECT member_id, full_name FROM members;
    rec c_members%ROWTYPE;
BEGIN
    OPEN c_members;
    LOOP
        FETCH c_members INTO rec;
        EXIT WHEN c_members%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('ID: ' || rec.member_id || ' - Name: ' || rec.full_name);
    END LOOP;
    CLOSE c_members;
END;


DECLARE
    CURSOR c_members IS
        SELECT member_id, full_name FROM members;
    rec c_members%ROWTYPE;
BEGIN
    OPEN c_members;
    LOOP
 FETCH c_members INTO rec;
        EXIT WHEN c_members%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('ID: ' || rec.member_id || ' - Name: ' || rec.full_name);
    END LOOP;
    CLOSE c_members;
END;


CREATE OR REPLACE PACKAGE church_pkg AS
    PROCEDURE add_donation(p_member_id NUMBER, p_amount NUMBER, p_type VARCHAR2);
    FUNCTION get_total_donations(p_member_id NUMBER) RETURN NUMBER;
END church_pkg;


CREATE OR REPLACE PACKAGE BODY church_pkg AS

    PROCEDURE add_donation(p_member_id NUMBER, p_amount NUMBER, p_type VARCHAR2) IS
    BEGIN
        INSERT INTO donation (member_id, amount, donation_type)
        VALUES (p_member_id, p_amount, p_type);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END;

    FUNCTION get_total_donations(p_member_id NUMBER) RETURN NUMBER IS
        total NUMBER;
    BEGIN
        SELECT SUM(amount)
        INTO total
 FROM donation
        WHERE member_id = p_member_id;
        RETURN NVL(total, 0);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 0;
    END;

END church_pkg;




CREATE TABLE holidays (
    holiday_date DATE PRIMARY KEY,
    description  VARCHAR2(100)
);

INSERT INTO holidays VALUES (TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'National Unity Day');
INSERT INTO holidays VALUES (TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'Family Day');
INSERT INTO holidays VALUES (TO_DATE('2025-06-28', 'YYYY-MM-DD'), 'Church Anniversary');



CREATE TABLE audit_log (
CREATE TABLE audit_log (
    audit_id       NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id        VARCHAR2(50),
    action_date    DATE DEFAULT SYSDATE,
    action_type    VARCHAR2(50),
    table_name     VARCHAR2(50),
    operation      VARCHAR2(20),
    status         VARCHAR2(20),
    remarks        VARCHAR2(255)
);

CREATE OR REPLACE TRIGGER trg_block_weekday_holiday
BEFORE INSERT OR UPDATE OR DELETE ON donation
DECLARE
    v_day VARCHAR2(10);
    v_holiday_count NUMBER;
BEGIN
    -- Get current day of the week
    SELECT TO_CHAR(SYSDATE, 'DY') INTO v_day FROM dual;

    -- Check for holidays
    SELECT COUNT(*) INTO v_holiday_count
    FROM holidays
    WHERE holiday_date = TRUNC(SYSDATE);

    -- Block if it's weekday or a holiday
    IF v_day IN ('MON', 'TUE', 'WED', 'THU', 'FRI') OR v_holiday_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'DML operations are restricted during weekdays and holidays.');
    END IF;
END;

CREATE OR REPLACE TRIGGER trg_audit_donation
AFTER INSERT OR UPDATE OR DELETE ON donation
FOR EACH ROW
DECLARE
    v_user VARCHAR2(50) := USER;
    v_status VARCHAR2(20) := 'Allowed';
BEGIN
    INSERT INTO audit_log (user_id, action_type, table_name, operation, status, remarks)
    VALUES (
        v_user,
        'DML Action',
        'DONATION',
        CASE
            WHEN INSERTING THEN 'INSERT'
            WHEN UPDATING THEN 'UPDATE'
            WHEN DELETING THEN 'DELETE'
        END,
        v_status,
        'Operation recorded'
    );
END;
CREATE OR REPLACE PACKAGE audit_pkg AS
    PROCEDURE log_action(p_user_id VARCHAR2, p_table VARCHAR2, p_op VARCHAR2, p_status VARCHAR2, p_remarks VARCHAR2);
END;
/

CREATE OR REPLACE PACKAGE BODY audit_pkg AS
    PROCEDURE log_action(p_user_id VARCHAR2, p_table VARCHAR2, p_op VARCHAR2, p_status VARCHAR2, p_remarks VARCHAR2) IS
    BEGIN
        INSERT INTO audit_log (user_id, table_name, operation, status, remarks)
        VALUES (p_user_id, p_table, p_op, p_status, p_remarks);
    END;
END;
/


CREATE OR REPLACE TRIGGER trg_restrict_attendance_dml
BEFORE INSERT OR UPDATE OR DELETE ON Attendance
FOR EACH ROW
DECLARE
    v_day VARCHAR2(3);
    v_holiday_count NUMBER;
BEGIN
    -- Check if it's a weekday
    SELECT TO_CHAR(SYSDATE,'DY', 'NLS_DATE_LANGUAGE = AMERICAN') INTO v_day FROM DUAL;
    

    -- Check if today is a listed holiday
    SELECT COUNT(*) INTO v_holiday_count
    FROM HOLIDAYS
    WHERE holiday_date = TRUNC(SYSDATE);

    -- If weekday (Mon–Fri) or a holiday, restrict
    IF v_day IN ('MON', 'TUE', 'WED', 'THU', 'FRI') OR v_holiday_count > 0 THEN
        -- Audit as DENIED
        INSERT INTO AUDIT_LOG (user_name, operation, operation_date, status, table_name)
        VALUES (USER, 'INSERT/UPDATE/DELETE ON Attendance', SYSDATE, 'DENIED', 'Attendance');

        -- Raise error
        RAISE_APPLICATION_ERROR(-20003, 'DML operations on Attendance table are not allowed on weekdays or holidays.');
    ELSE
        -- Audit as ALLOWED
        INSERT INTO AUDIT_LOG (user_name, operation, operation_date, status, table_name)
        VALUES (USER, 'INSERT/UPDATE/DELETE ON Attendance', SYSDATE, 'ALLOWED', 'Attendance');
    END IF;
END;
/
INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (1, TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Sunday Worship', 'Present', 'Testing restriction');


INSERT INTO Attendance (member_id, service_date, service_type, status, remarks)
VALUES (1, TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Sunday Worship', 'Present', 'Testing restriction');


SELECT * FROM audit_log WHERE table_name = 'Attendance' ORDER BY audit_id DESC;

