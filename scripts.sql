CREATE TABLE IF NOT EXISTS table_user (
    user_id int PRIMARY KEY,
    username VARCHAR (50) UNIQUE NOT NULL,
    password VARCHAR (50) NOT NULL,
    first_name VARCHAR (50) NOT NULL,
    second_name VARCHAR (50) NOT NULL,
    contact VARCHAR (15),
    email VARCHAR (255) UNIQUE NOT NULL,
    role VARCHAR (15) NOT NULL
);

CREATE TABLE IF NOT EXISTS account (
    account_id int PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS creditCard (
    card_id int PRIMARY KEY,
    number int UNIQUE NOT NULL,
    expiration date NOT NULL,
    cvv int NOT NULL,
    user_id int UNIQUE NOT NULL ,
    account_id int UNIQUE NOT NULL,
    FOREIGN KEY (user_id)
                        REFERENCES table_user (user_id),
    FOREIGN KEY (account_id)
                        REFERENCES account (account_id)
);

CREATE TABLE IF NOT EXISTS userAccount (
    id int PRIMARY KEY,
    user_id int NOT NULL,
    account_id int NOT NULL,
    FOREIGN KEY (user_id)
                        REFERENCES table_user (user_id),
    FOREIGN KEY (account_id)
                        REFERENCES account (account_id)
);



CREATE TABLE IF NOT EXISTS payment(
    payment_id int PRIMARY KEY,
    payment_date date NOT NULL,
    amount int NOT NULL,
    type VARCHAR NOT NULL,
    details VARCHAR,
    account_id int UNIQUE NOT NULL,
    FOREIGN KEY (account_id)
        REFERENCES account (account_id)
);