drop table if exists momo_group CASCADE;
drop table if exists momo_member CASCADE;
drop table if exists momo_schedule CASCADE;

create table momo_group
(
    id          bigint generated by default as identity,
    category    varchar(255)       not null,
    deadline    timestamp    not null,
    description clob         not null,
    endDate     date         not null,
    startDate   date         not null,
    hostId      bigint       not null,
    location    varchar(255) not null,
    name        varchar(255) not null,
    primary key (id)
);

create table momo_member
(
    id   bigint auto_increment,
    name varchar(30) not null,
    primary key (id)
);

create table momo_schedule
(
    id        bigint generated by default as identity,
    date      date not null,
    endTime   time not null,
    startTime time not null,
    group_id  bigint,
    primary key (id)
);

INSERT INTO momo_member (name)
VALUES ('momo');

INSERT INTO momo_group (category, deadline, description, endDate, startDate, hostId, location, name)
VALUES ('HEALTH', '2022-07-11T00:52:01.456770', '', '2022-07-08', '2022-07-08', 1, '', '튼튼이 클럽'),
       ('STUDY', '2022-07-12T10:30:01.456770', '', '2022-07-18', '2022-07-18', 1, '', 'CS 리뷰 스터디')
