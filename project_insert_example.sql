INSERT INTO project.user (id,username,password,role,email)
VALUES (1,'Peter','pppeter','customer','ppp@columbia.edu')
    ,(2,'Ethan','eeethan','provider','eee@columbia.edu')
    ,(3,'Nina','nnnina','customer','nnn@columbia.edu')
    ,(4,'Eric','eeeric','provider','err@columbia.edu');
#Delete FROM project.user where id is not null;
SELECT * FROM project.user;

INSERT INTO project.address(id,address,phone,zip,city,state,user_id)
VALUES (1,'275W 96ST APT 34E','3322655778','10025','New York','NY',1)
    ,(2,'135W 110ST APT 23A','3322655708','10027','New York','NY',1)
    ,(3,'15W 11ST','3322655666','10027','Hoboken','NJ',2)
    ,(4,'25E 113ST','3227855666','10027','San Diego','CA',3);
#Delete FROM project.address where id is not null;
SELECT * FROM project.address;

INSERT INTO project.order(id,date,total_price,user_id,address_id)
VALUES (1,'20220901',90.10,1,2)
    ,(2,'20221012',180.20,1,1)
    ,(3,'20221015',100.60,3,4)
    ,(4,'20221018',1100.30,2,3)
    ,(5,'20221103',21.00,1,2);
#Delete FROM project.order where id is not null;
SELECT * FROM project.order;

INSERT INTO project.product(id,name,description,price,inventory,image)
VALUES (1,'table','A wooden table',90.10,8,'table.jpg')
    ,(2,'apple','A bag of apple',10.50,20,'apple.jpg')
    ,(3,'tree','A Christmas tree',1100.30,3,'tree.jpg');
#Delete FROM project.product where id is not null;
SELECT * FROM project.product;

INSERT INTO project.cart(user_id,product_id,quantity)
VALUES (1,1,1)
    ,(1,2,3)
    ,(2,1,4)
    ,(3,3,1)
    ,(4,1,5);
#Delete FROM project.cart where user_id is not null;
SELECT * FROM project.cart;

INSERT INTO project.order_item(id,quantity,product_id,order_id)
VALUES (1,1,1,1)
    ,(2,2,1,2)
    ,(3,1,1,3)
    ,(4,1,2,3)
    ,(5,1,3,4)
    ,(6,2,2,5);
#Delete FROM project.order_item where id is not null;
SELECT * FROM project.order_item;

INSERT INTO project.provider(user_id,product_id)
VALUES (2,1)
    ,(2,2)
    ,(4,3);
#Delete FROM project.provider where id is not null;
SELECT * FROM project.provider;

INSERT INTO project.advertisement(product_id, user_id, ad_type, end_date)
VALUES (1,1,'email','20221231')
    ,(1,2,'website','20221231')
    ,(2,3,'email','20221231')
    ,(2,4,'email','20221231')
    ,(3,1,'website','20221225')
    ,(3,2,'website','20221225')
    ,(3,3,'website','20221225')
    ,(3,4,'website','20221225');
#Delete FROM project.advertisement where id is not null;
SELECT * FROM project.advertisement;