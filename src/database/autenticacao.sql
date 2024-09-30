-- Active: 1727716691843@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO
    users (
        id,
        name,
        email,
        password,
        role
    )
    -- fulano123
VALUES (
        'u001',
        'Fulano',
        'fulano@email.com',
        '$2a$12$KV/rlXmbAGfiWTTbwSvTmuwY5SK3nAXxvz/MLuHNCHuoA0TcssD82 ',
        'NORMAL'
    ),
    -- beltrana00
    (
        'u002',
        'Beltrana',
        'beltrana@email.com',
        '$2a$12$E/MvnuwgxoMe7sVDv/aMre/E88.HCEPlqoRgHKgG8fe9itXyY9uwq ',
        'NORMAL'
    ),
    -- astrodev99
    (
        'u003',
        'Astrodev',
        'astrodev@email.com',
        '$2a$12$zs6AzP0gVLJwvOfP8Zu7Ke/j7NS2gjbvXQEO8k5loRrfWyQSwG.wS ',
        'ADMIN'
    );

DROP TABLE users