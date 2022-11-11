CREATE TABLE "public.teachers"
(
    "ID"           serial  NOT NULL,
    "lastname"     TEXT    NOT NULL,
    "name"         TEXT    NOT NULL,
    "patronymic"   TEXT    NOT NULL,
    "birthday"     text    NOT NULL,
    "phone_number" integer NOT NULL,
    "position_id"  integer NOT NULL,
    CONSTRAINT "teachers_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "public.student"
(
    "ID"         serial  NOT NULL,
    "lastname"   TEXT    NOT NULL,
    "name"       TEXT    NOT NULL,
    "patronymic" TEXT    NOT NULL,
    "group_id"   integer NOT NULL,
    "status"     integer NOT NULL,
    CONSTRAINT "student_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "public.lessons"
(
    "ID"          serial NOT NULL,
    "name"        TEXT   NOT NULL,
    "description" TEXT   NOT NULL,
    CONSTRAINT "lessons_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "public.groups"
(
    "ID"    serial NOT NULL,
    "title" TEXT   NOT NULL,
    CONSTRAINT "groups_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "public.ordinary"
(
    "ID"         serial  NOT NULL,
    "date"       text    NOT NULL,
    "group_id"   integer NOT NULL,
    "lesson_id"  integer NOT NULL,
    "teacher_id" integer NOT NULL,
    CONSTRAINT "ordinary_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "public.progress_control"
(
    "ID"          serial  NOT NULL,
    "ordinary_id" integer NOT NULL,
    "student_id"  integer NOT NULL,
    "grade"       FLOAT   NOT NULL,
    "attendance"  BOOLEAN NOT NULL,
    CONSTRAINT "progress_control_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );


ALTER TABLE "public.student"
    ADD CONSTRAINT "student_fk0" FOREIGN KEY ("group_id") REFERENCES "public.groups" ("ID");

ALTER TABLE "public.ordinary"
    ADD CONSTRAINT "ordinary_fk1" FOREIGN KEY ("lesson_id") REFERENCES "public.lessons" ("ID");
ALTER TABLE "public.ordinary"
    ADD CONSTRAINT "ordinary_fk0" FOREIGN KEY ("group_id") REFERENCES "public.groups" ("ID");
ALTER TABLE "public.ordinary"
    ADD CONSTRAINT "ordinary_fk2" FOREIGN KEY ("teacher_id") REFERENCES "public.teachers" ("ID");

ALTER TABLE "public.progress_control"
    ADD CONSTRAINT "progress_control_fk0" FOREIGN KEY ("ordinary_id") REFERENCES "public.ordinary" ("ID");
ALTER TABLE "public.progress_control"
    ADD CONSTRAINT "progress_control_fk1" FOREIGN KEY ("student_id") REFERENCES "public.student" ("ID");







