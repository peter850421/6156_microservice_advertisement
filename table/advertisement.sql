create table advertisement
(
    product_id int         not null,
    user_id    int         null,
    ad_type    varchar(20) null,
    end_date   datetime    not null
);

INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (1, 1, 'email', '2022-12-31 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (1, 2, 'website', '2022-12-31 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (2, 3, 'email', '2022-12-31 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (2, 4, 'email', '2022-12-31 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (3, 1, 'website', '2022-12-25 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (3, 2, 'website', '2022-12-25 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (3, 3, 'website', '2022-12-25 00:00:00');
INSERT INTO project.advertisement (product_id, user_id, ad_type, end_date) VALUES (3, 4, 'website', '2022-12-25 00:00:00');
