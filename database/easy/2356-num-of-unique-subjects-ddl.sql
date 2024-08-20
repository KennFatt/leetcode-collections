-- Active: 1679834974662@@127.0.0.1@3306@leetcode_solutions
Create table If Not Exists Teacher (
    teacher_id int,
    subject_id int,
    dept_id int,
    PRIMARY KEY (subject_id, dept_id)
);

drop table Teacher;

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('1', '2', '3');

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('1', '2', '4');

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('1', '3', '3');

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('2', '1', '1');

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('2', '2', '1');

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('2', '3', '1');

insert into
    Teacher (
        teacher_id,
        subject_id,
        dept_id
    )
values ('2', '4', '1');