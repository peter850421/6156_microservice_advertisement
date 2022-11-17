create table `order`
(
    id          int auto_increment
        primary key,
    date        datetime not null,
    total_price float    not null,
    user_id     int      not null,
    address_id  int      not null,
    constraint order_address_null_fk
        foreign key (address_id) references address (id),
    constraint order_user_null_fk
        foreign key (user_id) references user (id)
);

INSERT INTO project.`order` (id, date, total_price, user_id, address_id) VALUES (1, '2022-09-01 00:00:00', 90.1, 1, 2);
INSERT INTO project.`order` (id, date, total_price, user_id, address_id) VALUES (2, '2022-10-12 00:00:00', 180.2, 1, 1);
INSERT INTO project.`order` (id, date, total_price, user_id, address_id) VALUES (3, '2022-10-15 00:00:00', 100.6, 3, 4);
INSERT INTO project.`order` (id, date, total_price, user_id, address_id) VALUES (4, '2022-10-18 00:00:00', 1100.3, 2, 3);
INSERT INTO project.`order` (id, date, total_price, user_id, address_id) VALUES (5, '2022-11-03 00:00:00', 21, 1, 2);
