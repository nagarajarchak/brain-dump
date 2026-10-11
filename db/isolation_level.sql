-- These are PostgreSQL commands
-- Show transaction isolation level

SHOW transaction_isolation;
SHOW default_transaction_isolation;

-- Set transaction isolation levels

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET default_transaction_isolation = 'REPEATABLE READ';

-- Show transaction isolation level

SHOW TRANSACTION ISOLATION LEVEL;

-- Create table - users

CREATE TABLE users (
    user_id    integer NOT NULL,
    name       varchar(100),
    email_id   varchar(30),
    is_active  boolean,
    created_at date,
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
);

-- Insert data into users table

INSERT INTO users (user_id, name, email_id, is_active, created_at) 
VALUES 
    (1, 'user-1', 'user-1@email.com', true, '2026-01-01'),
    (2, 'user-2', 'user-2@email.com', true, '2026-01-02');

-- Below are 2 concurrently running transactions t1 and t2
-- In transation t1 - update row

UPDATE users SET is_active = false WHERE user_id = 1;

-- In transation t2 - read all rows

select * from users;

-- For simulating serializable isolation level, we can use the following command

UPDATE users SET email_id = 'upd-usr-1-t1@email.com' WHERE user_id = 1;
UPDATE users SET email_id = 'upd-usr-1-t2@email.com' WHERE user_id = 1;
