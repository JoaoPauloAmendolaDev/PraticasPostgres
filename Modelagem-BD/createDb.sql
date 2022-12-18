CREATE DATABASE "aqui_vem_o_nome_da_db";

CREATE TABLE "users"(
    "id" SERIAL PRIMARY KEY,
    "username" TEXT UNIQUE NOT NULL,
    "password" TEXT UNIQUE NOT NULL,
    "email" TEXT UNIQUE NOT NULL,
    "adress" TEXT,
    "admin" BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE "category"(
    "id" SERIAL PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL
);

CREATE TABLE "size"(
    "id" SERIAL PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL
);

CREATE TABLE "photos"(
    "id" SERIAL PRIMARY KEY,
    "photo" TEXT NOT NULL,
    "principal" BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE "products"(
    "id" SERIAL PRIMARY KEY,
    "name" TEXT  UNIQUE NOT NULL,
    "photos" INTEGER NOT NULL REFERENCES "photos"("id"),
    "category_id" INTEGER NOT NULL REFERENCES "category"("id"),
    "size_id" INTEGER REFERENCES "size"("id")
);

CREATE TABLE "sells"(
    "id" SERIAL PRIMARY KEY,
    "user_id" INTEGER NOT NULL REFERENCES "users"("id"),
    "adress" TEXT NOT NULL,
    "sell_date" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "products_sells"(
    "id" SERIAL PRIMARY KEY,
    "user_id" INTEGER NOT NULL REFERENCES "users"("id"),
    "product_id" INTEGER NOT NULL REFERENCES "products"("id"),
    "sell_id" INTEGER NOT NULL REFERENCES "sells"("id"),
    "quantity" INTEGER NOT NULL
);