CREATE TABLE users (
    user_id int(11) AUTO_INCREMENT PRIMARY KEY not null,
    user_first varchar(256) not null,
    user_last varchar(256) not null,
    user_email varchar(256) not null,
    user_uid varchar(256) not null,
    user_pwd varchar(256) not null
);

INSERT INTO users (user_first, user_last, user_email, user_uid, user_pwd)
    VALUE ('Daniel', 'Nielsen', 'usemmtuts@gmail.com', 'PRO', 'test123');

    INSERT INTO users (user_first, user_last, user_email, user_uid, user_pwd)
    VALUES ('Daniel', 'Nielsen', 'usemmtuts@gmail.com', 'PRO', 'test123');


 /* HOW TO JOIN TABLES  AND DO SOME RELATIONSHIP WITH TABLE
 /* HOW TO USE JOIN

--* SELECT * FROM Orders 
--* inner join Products on Orders.ProductsID=Products.id
--* inner join Custormer on Orders.CustomerID=Customer.id


/* HOW TO SIMPLY MY CALL OF MY TABLE  LE ALIASING

--* SELECT * FROM Order AS o
--* inner join Product AS p ON o.ProductsID=p.id
--* inner join Customer c on o.CustomerID=c.id

--? SIMPLIFIER LE CODE (le determinant AS n'est qu'optionnelle).

--* SELECT * FROM Order o
--* inner joint Product p ON o.ProductsID=p.id





 /* HOW TO INSERT  DATA INTO COLLUMN 

 --*     INSERT INTO users (column_name, colum_name)
 --*     VALUES ('data', 'otherdata')


/* HOW TOO DELETE A COLLUMN OR A DATA IN A COLUMN

--*        DELETE users
--*      WHERE user_first='Daniel'
--*      AND user_last like 'Nielsen' */



/*CREATE A NEW TABLE FOR ALL COLUMN 

--*    ALTER TABLE users
--*    ADD City varchar(50);



/* HOW TOO UPDATE  A COLUMN OR NEW COLUMN  FOR the other column

--*    update users
--*    SET user_pwd='lenouveauxpassword' WHERE user_first='daniel' AND user_last='Nielsen'
    