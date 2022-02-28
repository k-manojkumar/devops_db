CREATE USER 'dmuser'@'%' IDENTIFIED BY 'dmuser';
GRANT ALL PRIVILEGES ON * . * TO 'dmuser'@'%';

CREATE TABLE dm_db.RESOURCES(
   ID INT NOT NULL AUTO_INCREMENT,
   FILE_ID VARCHAR(15) NOT NULL,
   NAME VARCHAR(60),
   BH_START VARCHAR(10),	
   BH_END VARCHAR(10),
   EVENT_COLOR VARCHAR(25),
   PRIMARY KEY ( ID )
);

CREATE TABLE dm_db.EVENTS(
ID INT NOT NULL AUTO_INCREMENT,
   FILE_ID VARCHAR(15) NOT NULL,
   START VARCHAR(25),
   END VARCHAR(25),
   TITLE VARCHAR(60),
   PRIMARY KEY ( ID )
);


  insert into dm_db.RESOURCES (FILE_ID, NAME,BH_START, BH_END, EVENT_COLOR) values (  'SS07001', 'Test Colleague1', '09:00', '16:00' , 'blue');
  insert into dm_db.RESOURCES (FILE_ID, NAME,BH_START, BH_END, EVENT_COLOR) values (  'SS07002', 'Test Colleague2', '09:00', '16:00', 'green' );
  insert into dm_db.RESOURCES (FILE_ID, NAME,BH_START, BH_END, EVENT_COLOR) values (  'SS07003', 'Test Colleague3', '09:00', '16:00', 'orange'); 
  insert into dm_db.RESOURCES (FILE_ID, NAME,BH_START, BH_END, EVENT_COLOR) values (  'SS07004', 'Test Colleague4', '09:00', '16:00', 'red' );
  insert into dm_db.RESOURCES (FILE_ID, NAME,BH_START, BH_END, EVENT_COLOR) values (  'SS07005', 'Test Colleague5', '09:00', '12:00', 'aqua' );
  insert into dm_db.RESOURCES (FILE_ID, NAME,BH_START, BH_END, EVENT_COLOR) values (  'SS07006', 'Test Colleague6', '09:00', '13:00', 'teal' );
  
    
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T09:00:00', '2022-07-22T09:30:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T09:30:00', '2022-07-22T10:30:00', 'Borrowing - Credit Cards');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T10:30:00', '2022-07-22T11:00:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T11:15:00', '2022-07-22T12:00:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T12:00:00', '2022-07-22T13:00:00', 'Internal Appointment');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T13:15:00', '2022-07-22T14:00:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-22T14:30:00', '2022-07-22T15:00:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T09:00:00', '2022-07-23T09:45:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T09:45:00', '2022-07-23T10:30:00', 'Borrowing - Credit Cards');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T10:45:00', '2022-07-23T11:15:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T11:30:00', '2022-07-23T12:00:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T12:00:00', '2022-07-23T13:00:00', 'Internal Appointment');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T13:15:00', '2022-07-23T14:00:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ('SS07001', '2022-07-23T15:30:00', '2022-07-23T16:00:00', 'Banking - Savings Account');


  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T09:00:00', '2022-07-22T09:45:00', 'Banking - Current Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T09:45:00', '2022-07-22T10:30:00', 'Borrowing - Loans');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T10:30:00', '2022-07-22T11:00:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T11:00:00', '2022-07-22T11:45:00', 'Borrowing - Loans');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T12:00:00', '2022-07-22T13:00:00', 'Internal Appointment');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T13:30:00', '2022-07-22T14:30:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-22T15:30:00', '2022-07-22T16:00:00', 'Banking - Savings Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T09:00:00', '2022-07-23T09:45:00', 'Borrowing - Credit Cards');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T09:45:00', '2022-07-23T10:30:00', 'Borrowing - Loans');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T10:45:00', '2022-07-23T11:30:00', 'Banking - Current Account');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T11:45:00', '2022-07-23T12:15:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T12:15:00', '2022-07-23T13:15:00', 'Internal Appointment');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T13:45:00', '2022-07-23T14:30:00', 'General Customer Enquiry');
  insert into dm_db.EVENTS (FILE_ID,START, END, TITLE) values ( 'SS07002', '2022-07-23T15:00:00', '2022-07-23T15:30:00', 'Banking - Savings Account');
