CREATE TABLE user (
    user_id int PRIMARY KEY,
    username VARCHAR (50) UNIQUE NOT NULL,
    password VARCHAR (50) NOT NULL,
    first_name VARCHAR (50) NOT NULL,
    second_name VARCHAR (50) NOT NULL,
    contact VARCHAR (15),
    email VARCHAR (255) UNIQUE NOT NULL,
    role VARCHAR (15) NOT NULL
)

CREATE TABLE creditCard (
    card_id int PRIMARY KEY,
    number int (16) UNIQUE NOT NULL,
    expiration date NOT NULL,
    cvv int (3) NOT NULL,
    user_id int FOREIGN KEY,
    account_id int FOREIGN KEY
)

CREATE TABLE userAccount (
    id int PRIMARY KEY,
    user_id int FOREIGN KEY,
    account_id int FOREIGN KEY,
)

CREATE TABLE account (
    account_id int PRIMARY KEY
)

CREATE TABLE payment(
    payment_id int PRIMARY KEY,
    payment_date date NOT NULL,
    amount int NOT NULL,
    type VARCHAR NOT NULL,
    details VARCHAR,
    account_id FOREIGN KEY
)