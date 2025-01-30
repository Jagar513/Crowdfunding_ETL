create table campaign(
cf_id INT primary key,
contact_id INT,
company_name VARCHAR(100),
description VARCHAR(255),
goal FLOAT,
pledged FLOAT,
outcome VARCHAR(50),
backers_count INT,
country VARCHAR(50),
currency VARCHAR(10),
launched_date DATE,
end_date DATE,
category_id VARCHAR(50),
subcategory_id VARCHAR(50)
);


create table contacts(
contact_id INT primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100)
);

create table category(
category_id VARCHAR(50) primary key,
category VARCHAR(50)
);

create table subcategory(
subcategory_id VARCHAR(50) primary key,
subcategory VARCHAR(50)
);

select * from campaign;
select * from contacts;
select * from category;
select * from subcategory;
