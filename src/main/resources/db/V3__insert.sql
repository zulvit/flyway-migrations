INSERT INTO "public.groups" (title)
VALUES ('IPS-111'),
       ('IPS-112'),
       ('IPS-113');

INSERT INTO "public.lessons" (name, description)
VALUES ('JAVA-1', 'LOOPS'),
       ('JAVA-2', 'IF'),
       ('JAVA-3', 'FOR');

INSERT INTO "public.position_list" (name)
VALUES ('Junior'),
       ('Middle'),
       ('Senior');

INSERT INTO "public.student" (lastname, name, patronymic, group_id, status)
VALUES ('Pupkin', 'Vasya', 'Saxarov', 1, 1),
       ('Dubrovski', 'Arseny', 'Tankovich', 2, 1);


INSERT INTO "public.teachers" (lastname, name, patronymic, birthday, phone_number, position_id)
VALUES ('Kruglikov', 'Denis', 'Vladislavovich', '04/04/1993', 9999, 1);

INSERT INTO "public.ordinary" (date, group_id, lesson_id, teacher_id)
VALUES ('1 / 8 / 2021', 1, 1, 1);

INSERT INTO "public.progress_control" (ordinary_id, student_id, grade, attendance)
VALUES (1, 1, 4, true);

