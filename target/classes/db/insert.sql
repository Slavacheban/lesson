
delete from course where id<100;

INSERT INTO course (name, created_date , cost)
VALUES ('java', '1999-01-08 04:05:06', 2500);
INSERT INTO course (name, created_date , cost)
VALUES ('php', '1999-01-08 04:05:06', 2300);
INSERT INTO course (name, created_date , cost)
VALUES ('html', '1999-01-08 04:05:06', 2000);



INSERT INTO section (name, created_date , course_id)
VALUES ('jvm', '1999-01-08 04:05:06', 1);
INSERT INTO section (name, created_date , course_id)
VALUES ('spring', '1999-01-08 04:05:06', 1);
INSERT INTO section (name, created_date , course_id)
VALUES ('IDEA', '1999-01-08 04:05:06', 1);

INSERT INTO section (name, created_date , course_id)
VALUES ('english', '1999-01-08 04:05:06', 2);
INSERT INTO section (name, created_date , course_id)
VALUES ('computer', '1999-01-08 04:05:06', 2);
INSERT INTO section (name, created_date , course_id)
VALUES ('git', '1999-01-08 04:05:06', 2);

INSERT INTO section (name, created_date , course_id)
VALUES ('notepad+', '1999-01-08 04:05:06', 3);
INSERT INTO section (name, created_date , course_id)
VALUES ('css', '1999-01-08 04:05:06', 3);
INSERT INTO section (name, created_date , course_id)
VALUES ('js', '1999-01-08 04:05:06', 3);



INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('download', '1999-01-08 04:05:06', 'some content',1);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('installing', '1999-01-08 04:05:06', 'some content',1);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('use', '1999-01-08 04:05:06', 'some content',1);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('spring-app', '1999-01-08 04:05:06', 'some content', 2);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('mvc', '1999-01-08 04:05:06', 'some content', 2);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('spring-boot', '1999-01-08 04:05:06', 'some content', 2);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('run', '1999-01-08 04:05:06', 'some content', 3);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('debug', '1999-01-08 04:05:06', 'some content', 3);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('deploy', '1999-01-08 04:05:06', 'some content', 3);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('read', '1999-01-08 04:05:06', 'some content', 4);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('speak', '1999-01-08 04:05:06', 'some content', 4);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('listen', '1999-01-08 04:05:06', 'some content', 4);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('EVM', '1999-01-08 04:05:06', 'some content', 5);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('it', '1999-01-08 04:05:06', 'some content', 5);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('www', '1999-01-08 04:05:06', 'some content', 5);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('git bush', '1999-01-08 04:05:06', 'some content', 6);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('cmd', '1999-01-08 04:05:06', 'some content', 6);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('rebase', '1999-01-08 04:05:06', 'some content', 6);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('note', '1999-01-08 04:05:06', 'some content', 7);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('use notepad', '1999-01-08 04:05:06', 'some content', 7);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('development', '1999-01-08 04:05:06', 'some content', 7);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('css1', '1999-01-08 04:05:06', 'some content', 8);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('css2', '1999-01-08 04:05:06', 'some content', 8);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('css3', '1999-01-08 04:05:06', 'some content', 8);

INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('js1', '1999-01-08 04:05:06', 'some content', 9);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('js2', '1999-01-08 04:05:06', 'some content', 9);
INSERT INTO lesson (name, created_date , content, section_id)
VALUES ('js3', '1999-01-08 04:05:06', 'some content', 9);



select * from course;