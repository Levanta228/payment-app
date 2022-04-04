CREATE TABLE IF NOT EXISTS table_user
(
    id     serial PRIMARY KEY,
    contact     varchar(50) UNIQUE  NOT NULL,
    password    VARCHAR(50)         NOT NULL,
    first_name  VARCHAR(50)         NOT NULL,
    second_name VARCHAR(50)         NOT NULL,
    email       VARCHAR(255) UNIQUE NOT NULL,
    role        VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS userRole
(
    id serial PRIMARY KEY,
    role    varchar NOT NULL
);

create table user_roles
(
    user_id serial NOT NULL,
    role_id serial NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES table_user (id),
    FOREIGN KEY (role_id)
        REFERENCES userRole (id)
);

CREATE TABLE IF NOT EXISTS bankAccount
(
    id     serial PRIMARY KEY,
    account_number int UNIQUE NOT NULL,
    balance        bigint     NOT NULL
);

CREATE TABLE IF NOT EXISTS creditCard
(
    id     serial PRIMARY KEY,
    card_number int UNIQUE NOT NULL,
    expiration  date       NOT NULL,
    cvv         int        NOT NULL,
    pin         int        NOT NULL,
    account_id  int UNIQUE NOT NULL,
    is_blocked  bool       NOT NULL,
    FOREIGN KEY (account_id)
        REFERENCES bankAccount (id)
);


CREATE TABLE userCards
(
    id        serial PRIMARY KEY,
    "user_id" int NOT NULL,
    "card_id" int NOT NULL,
    FOREIGN KEY ("card_id")
        REFERENCES creditCard ("id"),
    FOREIGN KEY ("user_id")
        REFERENCES table_user ("id")
);



CREATE TABLE IF NOT EXISTS payment
(
    id   serial PRIMARY KEY,
    sender       int DEFAULT NULL,
    receiver     int DEFAULT NULL,
    payment_date date    NOT NULL,
    amount       int     NOT NULL,
    type         VARCHAR NOT NULL,
    details      VARCHAR,
    FOREIGN KEY (sender)
        REFERENCES bankAccount (id),
    FOREIGN KEY (receiver)
        REFERENCES bankAccount (id)
);