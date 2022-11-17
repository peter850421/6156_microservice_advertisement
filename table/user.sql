create table user
(
    id       int auto_increment comment 'user_id'
        primary key,
    username varchar(50)  not null,
    password varchar(50)  not null,
    role     varchar(50)  not null,
    email    varchar(100) not null
);

INSERT INTO project.user (id, username, password, role, email) VALUES (1, 'Peter', 'pppeter', 'customer', 'ppp@columbia.edu');
INSERT INTO project.user (id, username, password, role, email) VALUES (2, 'Ethan', 'eeethan', 'provider', 'eee@columbia.edu');
INSERT INTO project.user (id, username, password, role, email) VALUES (3, 'Nina', 'nnnina', 'customer', 'nnn@columbia.edu');
INSERT INTO project.user (id, username, password, role, email) VALUES (4, 'Eric', 'eeeric', 'provider', 'err@columbia.edu');
