-- These are PostgreSQL commands
-- Show transaction isolation level

SHOW transaction_isolation;
SHOW default_transaction_isolation;

-- Set transaction isolation levels

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Show transaction isolation level

SHOW TRANSACTION ISOLATION LEVEL;