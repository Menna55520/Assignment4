--create `store_management` DB
CREATE DATABASE `store_management` COLLATE utf8mb4_unicode_ci ;

-- table governorate
CREATE TABLE governorate(
    name varchar(20) PRIMARY KEY
);

-- table stores
CREATE TABLE Stores(
    store_id integer(11) unsigned AUTO_INCREMENT PRIMARY KEY ,
    name varchar(20) not null ,
    address varchar(40) not null ,
    gov_name varchar(20) ,
    FOREIGN KEY(gov_name) REFERENCES governorate(name)
);

-- table supplier
CREATE TABLE supplier (
    id integer(11) unsigned AUTO_INCREMENT PRIMARY KEY ,
    name varchar(20) not null ,
    phone varchar(20) not null ,
    email varchar(25) not null UNIQUE,
    breif_data text 
);

-- table product
CREATE TABLE products(
	name varchar(20) not null ,
    p_code varchar(20) not null unique ,
    price integer(6) not null ,
    description text ,
    s_id integer(11) unsigned ,
    supply_id integer(11) unsigned ,
    FOREIGN KEY (s_id) REFERENCES stores(store_id) ,
    FOREIGN KEY (supply_id) REFERENCES supplier(id)
);

