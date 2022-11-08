CREATE TABLE "public.position_list"
(
    "ID"   serial NOT NULL,
    "name" text   NOT NULL,
    CONSTRAINT "position_list_pk" PRIMARY KEY ("ID")
) WITH (
      OIDS= FALSE
    );

ALTER TABLE "public.teachers"
    ADD CONSTRAINT "teachers_fk0" FOREIGN KEY ("position_id") REFERENCES "public.position_list" ("ID");