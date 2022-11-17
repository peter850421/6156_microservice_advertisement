create table address
(
    id      int auto_increment
        primary key,
    address varchar(200) not null,
    phone   varchar(50)  not null,
    zip     varchar(10)  not null,
    city    varchar(50)  not null,
    state   varchar(50)  not null,
    user_id int          not null,
    constraint address_user_null_fk
        foreign key (user_id) references user (id)
);

INSERT INTO project.address (id, address, phone, zip, city, state, user_id) VALUES (1, '275W 96ST APT 34E', '3322655778', '10025', 'New York', 'NY', 1);
INSERT INTO project.address (id, address, phone, zip, city, state, user_id) VALUES (2, '135W 110ST APT 23A', '3322655708', '10027', 'New York', 'NY', 1);
INSERT INTO project.address (id, address, phone, zip, city, state, user_id) VALUES (3, '15W 11ST', '3322655666', '10027', 'Hoboken', 'NJ', 2);
INSERT INTO project.address (id, address, phone, zip, city, state, user_id) VALUES (4, '25E 113ST', '3227855666', '10027', 'San Diego', 'CA', 3);
