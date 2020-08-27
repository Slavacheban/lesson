create table users
(
  id    serial      not null,
  login varchar(45) not null,
  name  varchar(45) not null,
  age   int         not null,
  role  varchar(45) not null
);
create
unique
index
users_name_uindex
on
users
(
name
);
alter table users
  add constraint users_pk
    primary key (name);



CREATE TABLE course
(
  id           INT         NOT NULL,
  name         VARCHAR(45) NOT NULL,
  created_date TIMESTAMP   NOT NULL,
  cost         INT         NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE section
(
  id           INT         NOT NULL,
  created_date TIMESTAMP   NOT NULL,
  name         VARCHAR(45) NOT NULL,
  course_id    INT         NOT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE section
  ADD CONSTRAINT section_course_id_fk
    FOREIGN KEY (course_id) REFERENCES course (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE;

CREATE TABLE lesson
(
  id           INT         NOT NULL,
  created_date TIMESTAMP   NOT NULL,
  name         VARCHAR(45) NOT NULL,
  content      VARCHAR(45) NOT NULL,
  section_id   INT         NOT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE lesson
  ADD CONSTRAINT lesson_section_id_fk
    FOREIGN KEY (section_id) REFERENCES section (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE


CREATE TABLE comment
(
  id           INT         NOT NULL,
  created_date TIMESTAMP   NOT NULL,
  author_id    INT         NOT NULL,
  content      VARCHAR(45) NOT NULL,
  lesson_id    INT         NOT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE comment
  ADD CONSTRAINT comment_lessone_id_fk
    FOREIGN KEY (lesson_id) REFERENCES lesson (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
