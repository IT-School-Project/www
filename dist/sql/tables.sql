CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    address1 VARCHAR NOT NULL,
    address2 VARCHAR,
    post_nr INTEGER NOT NULL,
    img INTEGER NOT NULL
)

--if profile picture is not provided. automatically make it a basic one 

CREATE TABLE listing (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    price FLOAT NOT NULL,
    date DATETIME NOT NULL,
    desc TEXT NOT NULL,
    user INTEGER NOT NULL
)

-- IMPORT TABLE post_nr

CREATE TABLE cart (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    listing_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL
)

CREATE TABLE orders (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    seller INTEGER NOT NULL,
    buyer INTEGER NOT NULL
)

CREATE TABLE img (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR NOT NULL
)

CREATE TABLE ximg (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    listing_id INTEGER NOT NULL,
    img_id INTEGER NOT NULL
)

CREATE TABLE xparts (
    id INTEGER AUTO_INCREMENT PRIMARY KEY
    listing_id INTEGER NOT NULL,
    parts_id INTEGER NOT NULL,
    important BINARY NOT NULL
)

CREATE TABLE parts (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL
)

CREATE TABLE xcategory (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    category_id INTEGER NOT NULL,
    parts_id INTEGER NOT NULL
)

CREATE TABLE category (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR NOT NULL
)

CREATE TABLE xspec (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    spec_id INTEGER NOT NULL,
    parts_id INTEGER NOT NULL
)

CREATE TABLE spec (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    spec VARCHAR NOT NULL,
    type INTEGER NOT NULL
)

CREATE TABLE type (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL
)