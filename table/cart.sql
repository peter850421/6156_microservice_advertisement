create table cart
(
    user_id    int not null,
    product_id int not null,
    quantity   int not null,
    constraint cart_product_null_fk
        foreign key (product_id) references product (id),
    constraint cart_user_null_fk
        foreign key (user_id) references user (id)
);

INSERT INTO project.cart (user_id, product_id, quantity) VALUES (1, 1, 1);
INSERT INTO project.cart (user_id, product_id, quantity) VALUES (1, 2, 3);
INSERT INTO project.cart (user_id, product_id, quantity) VALUES (2, 1, 4);
INSERT INTO project.cart (user_id, product_id, quantity) VALUES (3, 3, 1);
INSERT INTO project.cart (user_id, product_id, quantity) VALUES (4, 1, 5);
