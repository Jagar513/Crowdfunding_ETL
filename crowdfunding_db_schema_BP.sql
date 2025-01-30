
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
    PRIMARY KEY (contact_id)
);
CREATE TABLE category (
    category_id varchar(50) NOT NULL,
    category varchar(50) NOT NULL,
    PRIMARY KEY (category_id)
);
CREATE TABLE subcategory (
    subcategory_id varchar(50) NOT NULL,
    subcategory varchar(50) NOT NULL,
    PRIMARY KEY (subcategory_id)
);
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(100) NOT NULL,
    description varchar(255) NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(50) NOT NULL,
    backers_count int NOT NULL,
    country varchar(50) NOT NULL,
    currency varchar(10) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(50) NOT NULL,
    subcategory_id varchar(50) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id)
);

select * from campaign;
select * from contacts;
select * from category;
select * from subcategory;





