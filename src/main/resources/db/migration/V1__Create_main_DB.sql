CREATE TABLE message
(
    id       INT8          NOT NULL AUTO_INCREMENT,
    filename VARCHAR(255),
    tag      VARCHAR(255),
    text     VARCHAR(2048) NOT NULL,
    user_id  INT8,
    PRIMARY KEY (id)
);

CREATE TABLE user_role
(
    user_id INT8 NOT NULL,
    roles   VARCHAR(255)
);

CREATE TABLE usr
(
    id              INT8         NOT NULL AUTO_INCREMENT,
    activation_code VARCHAR(255),
    active          BOOLEAN      NOT NULL,
    email           VARCHAR(255),
    password        VARCHAR(255) NOT NULL,
    username        VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE message
    ADD CONSTRAINT message_user_fk
        FOREIGN KEY (user_id) REFERENCES usr (id);

ALTER TABLE user_role
    ADD CONSTRAINT user_role_user_fk
        FOREIGN KEY (user_id) REFERENCES usr (id);