create database Library_Management;
use Library_Management;

create table members (
member_id varchar(10) primary key,
member_name varchar(30) NOT NULL,
city varchar(20),
date_register date,
date_expire date,
membership_status varchar(15));

create table suppliers_details (
supplier_id varchar(5) primary key,
supplier_name varchar(30) NOT NULL,
address varchar(50),
contact varchar(20),
email varchar(50));

create table fine_details (
fine_range varchar(5) primary key,
fine_amount decimal(8,2) not null check(fine_amount >= 0));

create table book_details (
book_code varchar(5) primary key,
book_title varchar(50) NOT NULL,
category varchar(15),
author varchar(30),
publication varchar(30),
publish_date date,
book_edition int,
price decimal(8,2),
rack_num varchar(3),
date_arrival date,
supplier_id varchar(3),
constraint fk_book_supplier foreign key (supplier_id)references suppliers_details(supplier_id)on update cascade on delete restrict);

create table book_issue (
book_issue_no int primary key,
member_id varchar(10) not null,
book_code varchar(10) not null,
date_issue date not null,
date_return date,
date_returned date,
book_issue_status varchar(20),
fine_range varchar(3),
constraint fk_issue_member foreign key (member_id)references members(member_id)on update cascade on delete restrict,
constraint fk_issue_book foreign key (book_code)references book_details(book_code)on update cascade on delete restrict,
constraint fk_issue_fine foreign key (fine_range)references fine_details(fine_range)on update cascade on delete restrict);


insert into members values
('M001', 'Aarav Sharma', 'Hyderabad', '2025-01-05', '2026-01-05', 'ACTIVE'),
('M002', 'Priya Reddy', 'Warangal', '2025-01-14', '2026-01-14', 'ACTIVE'),
('M003', 'Rahul Kumar', 'Karimnagar', '2025-01-23', '2026-01-23', 'ACTIVE'),
('M004', 'Sneha Rao', 'Nizamabad', '2025-02-01', '2026-02-01', 'ACTIVE'),
('M005', 'Arjun Patel', 'Peddapalli', '2025-02-10', '2026-02-10', 'EXPIRED'),
('M006', 'Ananya Singh', 'Khammam', '2025-02-19', '2026-02-19', 'ACTIVE'),
('M007', 'Vikram Das', 'Hyderabad', '2025-02-28', '2026-02-28', 'ACTIVE'),
('M008', 'Kavya Nair', 'Secunderabad', '2025-03-09', '2026-03-09', 'ACTIVE'),
('M009', 'Rohan Gupta', 'Warangal', '2025-03-18', '2026-03-18', 'ACTIVE'),
('M010', 'Meera Joshi', 'Nalgonda', '2025-03-27', '2026-03-27', 'EXPIRED'),
('M011', 'Sai Teja', 'Karimnagar', '2025-04-05', '2026-04-05', 'ACTIVE'),
('M012', 'Divya Lakshmi', 'Adilabad', '2025-04-14', '2026-04-14', 'ACTIVE'),
('M013', 'Kiran Kumar', 'Hyderabad', '2025-04-23', '2026-04-23', 'ACTIVE'),
('M014', 'Neha Verma', 'Mahbubnagar', '2025-05-02', '2026-05-02', 'ACTIVE'),
('M015', 'Manoj Yadav', 'Siddipet', '2025-05-11', '2026-05-11', 'EXPIRED'),
('M016', 'Pooja Shah', 'Nizamabad', '2025-05-20', '2026-05-20', 'ACTIVE'),
('M017', 'Sanjay Reddy', 'Khammam', '2025-05-29', '2026-05-29', 'ACTIVE'),
('M018', 'Isha Kapoor', 'Warangal', '2025-06-07', '2026-06-07', 'ACTIVE'),
('M019', 'Tarun Babu', 'Peddapalli', '2025-06-16', '2026-06-16', 'ACTIVE'),
('M020', 'Aditi Menon', 'Hyderabad', '2025-06-25', '2026-06-25', 'EXPIRED');
select * from members;

insert into suppliers_details values
('S01', 'Pearson India', 'New Delhi, India', '9876501001', 'sales1@pearson.example'),
('S02', 'Oxford Press', 'Mumbai, India', '9876501002', 'sales2@oxford.example'),
('S03', 'Sage Publications', 'Chennai, India', '9876501003', 'sales3@sage.example'),
('S04', 'McGraw Hill India', 'Hyderabad, India', '9876501004', 'sales4@mcgraw.example'),
('S05', 'Orient BlackSwan', 'Bengaluru, India', '9876501005', 'sales5@orient.example'),
('S06', 'Penguin Random House', 'New Delhi, India', '9876501006', 'sales6@penguin.example'),
('S07', 'Cambridge University Press', 'Chennai, India', '9876501007', 'sales7@cambridge.example'),
('S08', 'Wiley India', 'Noida, India', '9876501008', 'sales8@wiley.example'),
('S09', 'HarperCollins India', 'Gurugram, India', '9876501009', 'sales9@harper.example'),
('S10', 'Bloomsbury India', 'New Delhi, India', '9876501010', 'sales10@bloom.example'),
('S11', 'Hachette India', 'Mumbai, India', '9876501011', 'sales11@hachette.example'),
('S12', 'Jaico Publishing', 'Mumbai, India', '9876501012', 'sales12@jaico.example'),
('S13', 'Rupa Publications', 'New Delhi, India', '9876501013', 'sales13@rupa.example'),
('S14', 'Taxmann Publications', 'New Delhi, India', '9876501014', 'sales14@taxmann.example'),
('S15', 'PHI Learning', 'Delhi, India', '9876501015', 'sales15@phi.example'),
('S16', 'Cengage India', 'Gurugram, India', '9876501016', 'sales16@cengage.example'),
('S17', 'Dhanpat Rai', 'New Delhi, India', '9876501017', 'sales17@dhanpat.example'),
('S18', 'BPB Publications', 'New Delhi, India', '9876501018', 'sales18@bpb.example'),
('S19', 'Notion Press', 'Chennai, India', '9876501019', 'sales19@notion.example'),
('S20', 'Universities Press', 'Hyderabad, India', '9876501020', 'sales20@universities.example');
select * from suppliers_details;

INSERT INTO fine_details VALUES
('F01', 0.00),
('F02', 5.00),
('F03', 10.00),
('F04', 15.00),
('F05', 20.00),
('F06', 25.00),
('F07', 30.00),
('F08', 35.00),
('F09', 40.00),
('F10', 45.00),
('F11', 50.00),
('F12', 60.00),
('F13', 70.00),
('F14', 80.00),
('F15', 90.00),
('F16', 100.00),
('F17', 120.00),
('F18', 150.00),
('F19', 200.00),
('F20', 250.00);

insert into book_details values
('B001', 'Database System Concepts', 'Database', 'Abraham Silberschatz', 'McGraw Hill', '2019-01-15', 7, 650.00, 'R01', '2024-01-10', 'S04'),
('B002', 'Let Us C', 'Programming', 'Yashavant Kanetkar', 'BPB Publications', '2020-02-16', 17, 520.00, 'R02', '2024-01-22', 'S18'),
('B003', 'Clean Code', 'Programming', 'Robert C. Martin', 'Prentice Hall', '2008-03-17', 1, 780.00, 'R03', '2024-02-03', 'S15'),
('B004', 'Operating System Concepts', 'Computer Sci', 'Abraham Silberschatz', 'Wiley', '2018-04-18', 10, 850.00, 'R04', '2024-02-15', 'S08'),
('B005', 'Computer Networks', 'Networking', 'Andrew S. Tanenbaum', 'Pearson', '2017-05-19', 5, 720.00, 'R05', '2024-02-27', 'S01'),
('B006', 'Introduction to Algorithms', 'Algorithms', 'Thomas H. Cormen', 'MIT Press', '2022-06-20', 4, 1100.00, 'R06', '2024-03-10', 'S07'),
('B007', 'The Alchemist', 'Fiction', 'Paulo Coelho', 'HarperCollins', '2014-07-21', 1, 299.00, 'R07', '2024-03-22', 'S09'),
('B008', 'Wings of Fire', 'Biography', 'A. P. J. Abdul Kalam', 'Universities Press', '1999-08-22', 1, 250.00, 'R08', '2024-04-03', 'S20'),
('B009', 'The Discovery of India', 'History', 'Jawaharlal Nehru', 'Oxford Press', '2004-09-23', 2, 450.00, 'R09', '2024-04-15', 'S02'),
('B010', 'Introduction to Python', 'Programming', 'Guido van Rossum', 'Pearson', '2021-10-24', 3, 590.00, 'R10', '2024-04-27', 'S01'),
('B011', 'Artificial Intelligence', 'AI', 'Stuart Russell', 'Pearson', '2020-11-15', 4, 950.00, 'R11', '2024-05-09', 'S01'),
('B012', 'Learning SQL', 'Database', 'Alan Beaulieu', 'O''Reilly Media', '2020-12-16', 3, 610.00, 'R12', '2024-05-21', 'S03'),
('B013', 'Data Structures Using C', 'Programming', 'Reema Thareja', 'Oxford Press', '2019-01-17', 2, 560.00, 'R13', '2024-06-02', 'S02'),
('B014', 'Digital Logic Design', 'Electronics', 'M. Morris Mano', 'Pearson', '2017-02-18', 5, 680.00, 'R14', '2024-06-14', 'S01'),
('B015', 'Engineering Mathematics', 'Mathematics', 'B. S. Grewal', 'Khanna Publishers', '2021-03-19', 44, 800.00, 'R15', '2024-06-26', 'S17'),
('B016', 'Rich Dad Poor Dad', 'Finance', 'Robert Kiyosaki', 'Jaico', '2018-04-20', 1, 350.00, 'R16', '2024-07-08', 'S12'),
('B017', 'Atomic Habits', 'Self Help', 'James Clear', 'Penguin', '2019-05-21', 1, 499.00, 'R17', '2024-07-20', 'S06'),
('B018', 'A Brief History of Time', 'Science', 'Stephen Hawking', 'Bantam', '2011-06-22', 1, 399.00, 'R18', '2024-08-01', 'S06'),
('B019', 'The Guide', 'Fiction', 'R. K. Narayan', 'Indian Thought', '2010-07-23', 1, 275.00, 'R19', '2024-08-13', 'S13'),
('B020', 'Business Communication', 'Management', 'Meenakshi Raman', 'Oxford Press', '2022-08-24', 2, 540.00, 'R20', '2024-08-25', 'S02');

insert into book_issue values
(1001, 'M001', 'B001', '2026-01-01', '2026-01-15', NULL, 'ISSUED', 'F01'),
(1002, 'M002', 'B002', '2026-01-06', '2026-01-20', '2026-01-21', 'RETURNED', 'F02'),
(1003, 'M003', 'B003', '2026-01-11', '2026-01-25', '2026-01-27', 'RETURNED', 'F03'),
(1004, 'M004', 'B004', '2026-01-16', '2026-01-30', '2026-01-30', 'RETURNED', 'F04'),
(1005, 'M005', 'B005', '2026-01-21', '2026-02-04', NULL, 'ISSUED', 'F05'),
(1006, 'M006', 'B006', '2026-01-26', '2026-02-09', '2026-02-11', 'RETURNED', 'F06'),
(1007, 'M007', 'B007', '2026-01-31', '2026-02-14', '2026-02-14', 'RETURNED', 'F07'),
(1008, 'M008', 'B008', '2026-02-05', '2026-02-19', '2026-02-20', 'RETURNED', 'F08'),
(1009, 'M009', 'B009', '2026-02-10', '2026-02-24', NULL, 'ISSUED', 'F09'),
(1010, 'M010', 'B010', '2026-02-15', '2026-03-01', '2026-03-01', 'RETURNED', 'F10'),
(1011, 'M011', 'B011', '2026-02-20', '2026-03-06', '2026-03-07', 'RETURNED', 'F11'),
(1012, 'M012', 'B012', '2026-02-25', '2026-03-11', '2026-03-13', 'RETURNED', 'F12'),
(1013, 'M013', 'B013', '2026-03-02', '2026-03-16', NULL, 'ISSUED', 'F13'),
(1014, 'M014', 'B014', '2026-03-07', '2026-03-21', '2026-03-22', 'RETURNED', 'F14'),
(1015, 'M015', 'B015', '2026-03-12', '2026-03-26', '2026-03-28', 'RETURNED', 'F15'),
(1016, 'M016', 'B016', '2026-03-17', '2026-03-31', '2026-03-31', 'RETURNED', 'F16'),
(1017, 'M017', 'B017', '2026-03-22', '2026-04-05', NULL, 'ISSUED', 'F17'),
(1018, 'M018', 'B018', '2026-03-27', '2026-04-10', '2026-04-12', 'RETURNED', 'F18'),
(1019, 'M019', 'B019', '2026-04-01', '2026-04-15', '2026-04-15', 'RETURNED', 'F19'),
(1020, 'M020', 'B020', '2026-04-06', '2026-04-20', '2026-04-21', 'RETURNED', 'F20');



#1 Display members who have Active membership
select member_id, member_name, city, membership_status
from members
where membership_status = 'ACTIVE';

#2 Display members who have returned their books
select distinct m.member_id, m.member_name
from members m
join book_issue bi on m.member_id = bi.member_id
where bi.book_issue_status = 'RETURNED';

#3 Display members who have taken the book with book code B019
select distinct m.member_id, m.member_name
from members m
join book_issue bi on m.member_id = bi.member_id
where bi.book_code = 'B019';

#4 Display books whose author name begins with 'P'
select book_code, book_title, author
from book_details
where author like 'P%';

#5 Display the total number of SQL books
select count(*) as NO_OF_BOOKS
from book_details
where book_title like '%sql%';

#6 Display each category and its number of books
select category, count(*) as NO_OF_BOOKS
from book_details
group by category;

#7 Display the number of books published by Pearson
select count(*) as NO_OF_BOOKS
from book_details
where publication = 'Pearson';

#8 Display books issued on 20 February 2026
select distinct bd.book_code, bd.book_title
from book_details bd
join book_issue bi on bd.book_code = bi.book_code
where bi.date_issue = '2026-02-20';

#9 Display active members who registered before April 2025
select member_id, member_name, date_register, membership_status
from members
where date_register < '2025-04-01'
and membership_status = 'Active';

#10 Display members whose membership expired before April 2026
select member_id, member_name, date_register, date_expire
from members
where date_expire < '2026-04-01';

#11 Display members who registered between 1 January 2025 and 31 December 2025.
select member_id, member_name, date_register
from members
where date_register between '2025-01-01' and '2025-12-31';

#12 Display the supplier name and the titles of books supplied by them.
select sd.supplier_name, bd.book_title
from suppliers_details sd
inner join book_details bd
on sd.supplier_id = bd.supplier_id;

#13 Display all books and their supplier names
select bd.book_title, sd.supplier_name
from book_details bd
right join suppliers_details sd
on bd.supplier_id = sd.supplier_id;

#14 Display the member name and member ID along with their book issue details.
select m.member_id, m.member_name, bi.book_code
from members m
join book_issue bi
on m.member_id = bi.member_id;

#15 Display categories containing more than two books.
select category, COUNT(*) as NO_OF_BOOKS
from book_details
group by category
having count(*) > 2;
