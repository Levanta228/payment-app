CREATE TABLE IF NOT EXISTS table_user
(
    user_id     int PRIMARY KEY,
    contact     int UNIQUE          NOT NULL,
    password    VARCHAR(50)         NOT NULL,
    first_name  VARCHAR(50)         NOT NULL,
    second_name VARCHAR(50)         NOT NULL,
    email       VARCHAR(255) UNIQUE NOT NULL,
    role        VARCHAR(15)         NOT NULL
);

CREATE TABLE IF NOT EXISTS bankAccount
(
    account_id     int PRIMARY KEY,
    account_number int UNIQUE NOT NULL,
    balance        bigint                NOT NULL
);

CREATE TABLE IF NOT EXISTS creditCard
(
    card_id     int PRIMARY KEY,
    card_number int UNIQUE NOT NULL,
    expiration  date       NOT NULL,
    cvv         int        NOT NULL,
    pin         int        NOT NULL,
    account_id  int UNIQUE NOT NULL,
    FOREIGN KEY (account_id)
        REFERENCES bankAccount (account_id)
);

CREATE TABLE IF NOT EXISTS blockedCards
(
    id      int PRIMARY KEY,
    card_id int UNIQUE NOT NULL,
    FOREIGN KEY (card_id)
        REFERENCES creditCard (card_id)
);


CREATE TABLE userCards
(
    id        int PRIMARY KEY,
    "user_id" int NOT NULL,
    "card_id" int NOT NULL,
    FOREIGN KEY ("card_id")
        REFERENCES creditCard ("card_id"),
    FOREIGN KEY ("user_id")
        REFERENCES table_user ("user_id")
);



CREATE TABLE IF NOT EXISTS payment
(
    payment_id   int PRIMARY KEY,
    sender       int DEFAULT NULL,
    receiver     int DEFAULT NULL,
    payment_date date    NOT NULL,
    amount       int     NOT NULL,
    type         VARCHAR NOT NULL,
    details      VARCHAR,
    FOREIGN KEY (sender)
        REFERENCES bankAccount (account_id),
    FOREIGN KEY (receiver)
        REFERENCES bankAccount (account_id)
);