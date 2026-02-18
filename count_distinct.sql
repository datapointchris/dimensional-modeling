CREATE TEMP TABLE count_distinct_data(
    userid INT,
    username VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO
    count_distinct_data
VALUES
    (1, 'John', 'john@email.com'),
    (2, NULL, 'coder@email.com'),
    (3, 'Bob', 'bob@bob.com');

SELECT
    COUNT(DISTINCT (userid, username, email))
FROM
    count_distinct_data;