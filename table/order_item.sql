create table order_item
(
    id         int auto_increment
        primary key,
    quantity   int not null,
    product_id int not null,
    order_id   int not null,
    constraint order_item_order_null_fk
        foreign key (order_id) references `order` (id),
    constraint order_item_product_null_fk
        foreign key (product_id) references product (id)
);

INSERT INTO project.order_item (id, quantity, product_id, order_id) VALUES (1, 1, 1, 1);
INSERT INTO project.order_item (id, quantity, product_id, order_id) VALUES (2, 2, 1, 2);
INSERT INTO project.order_item (id, quantity, product_id, order_id) VALUES (3, 1, 1, 3);
INSERT INTO project.order_item (id, quantity, product_id, order_id) VALUES (4, 1, 2, 3);
INSERT INTO project.order_item (id, quantity, product_id, order_id) VALUES (5, 1, 3, 4);
INSERT INTO project.order_item (id, quantity, product_id, order_id) VALUES (6, 2, 2, 5);
