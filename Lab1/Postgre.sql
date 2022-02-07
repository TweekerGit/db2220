CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "fullname" varchar,
  "age" byte,
  "roleId" int
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "studentForms" (
  "id" SERIAL PRIMARY KEY,
  "userId" int,
  "markId" int,
  "subjectId" int
);

CREATE TABLE "answers" (
  "id" SERIAL PRIMARY KEY,
  "value" varchar,
  "questionNumber" int,
  "formId" int
);

CREATE TABLE "marks" (
  "id" SERIAL PRIMARY KEY,
  "value" byte
);

CREATE TABLE "subjects" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "courses" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "coursesUsers" (
  "userId" int,
  "courseId" int,
  PRIMARY KEY ("userId", "courseId")
);

ALTER TABLE "users" ADD FOREIGN KEY ("roleId") REFERENCES "roles" ("id");

ALTER TABLE "studentForms" ADD FOREIGN KEY ("userId") REFERENCES "users" ("id");

ALTER TABLE "studentForms" ADD FOREIGN KEY ("markId") REFERENCES "marks" ("id");

ALTER TABLE "studentForms" ADD FOREIGN KEY ("subjectId") REFERENCES "subjects" ("id");

ALTER TABLE "answers" ADD FOREIGN KEY ("formId") REFERENCES "studentForms" ("id");

ALTER TABLE "coursesUsers" ADD FOREIGN KEY ("userId") REFERENCES "users" ("id");

ALTER TABLE "coursesUsers" ADD FOREIGN KEY ("courseId") REFERENCES "courses" ("id");

