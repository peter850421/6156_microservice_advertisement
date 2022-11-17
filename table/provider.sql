create table provider
(
    user_id    int not null,
    product_id int not null
);

INSERT INTO project.provider (user_id, product_id) VALUES (2, 1);
INSERT INTO project.provider (user_id, product_id) VALUES (2, 2);
INSERT INTO project.provider (user_id, product_id) VALUES (4, 3);
