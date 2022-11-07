CREATE TABLE teachers
(
    ID           serial PRIMARY KEY,
    lastname     text,
    name         text,
    patronymic   text,
    birthday     text,
    phone_number integer,
    position_id  integer
);

CREATE TABLE position_list
(
    ID   serial PRIMARY KEY,
    name text
);

CREATE TABLE student
(
    ID         serial PRIMARY KEY,
    lastname   text,
    name       text,
    patronymic text,
    group_id   integer,
    status     integer
);

CREATE TABLE groups
(
    ID    serial PRIMARY KEY,
    title text
);

CREATE TABLE ordinary
(
    ID         serial PRIMARY KEY,
    date       text,
    time       text,
    group_id   integer,
    lesson_id  integer,
    teacher_id integer
);

CREATE TABLE progress_control
(
    ID          serial PRIMARY KEY,
    ordinary_id integer,
    student_id  integer,
    grade       float,
    attendance  boolean
);