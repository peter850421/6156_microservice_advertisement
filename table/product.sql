create table product
(
    id          int auto_increment
        primary key,
    name        varchar(50)  not null,
    description varchar(200) not null,
    price       float        not null,
    inventory   int          not null,
    image       varchar(300) null
);

INSERT INTO project.product (id, name, description, price, inventory, image) VALUES (1, 'table', 'A wooden table', 90.1, 8, 'table.jpg');
INSERT INTO project.product (id, name, description, price, inventory, image) VALUES (2, 'apple', 'A bag of apple', 10.5, 20, 'apple.jpg');
INSERT INTO project.product (id, name, description, price, inventory, image) VALUES (3, 'tree', 'A Christmas tree', 1100.3, 3, 'tree.jpg');
