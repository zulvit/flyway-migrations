INSERT INTO groups (title)
VALUES ('IPS-111'),
       ('IPS-112'),
       ('IPS-113');

INSERT INTO lessons (name, description)
VALUES ('JAVA-1', 'LOOPS'),
       ('JAVA-2', 'IF'),
       ('JAVA-3', 'FOR');

INSERT INTO position_list (name)
VALUES ('Junior'),
       ('Middle'),
       ('Senior');

INSERT INTO student (lastname, name, patronymic, group_id, status)
VALUES ('Pupkin', 'Vasya', 'Saxarov', 1, 1),
       ('Dubrovski', 'Arseny', 'Tankovich', 2, 1);


INSERT INTO teachers (lastname, name, patronymic, birthday, phone_number, position_id)
VALUES ('Kruglikov', 'Denis', 'Vladislavovich', '04/04/1993', 9999, 1);

INSERT INTO ordinary (date, time, group_id, lesson_id, teacher_id)
VALUES ('1 / 8 / 2021', '04 : 05 : 06 AM', 1, 1, 1);

INSERT INTO progress_control (ordinary_id, student_id, grade, attendance)
VALUES (1, 1, 4, true);

