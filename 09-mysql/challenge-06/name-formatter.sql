<<<<<<< HEAD
SELECT
    CONCAT(
        UPPER(SUBSTRING_INDEX(name, ' ', -1)),
        ', ',
        SUBSTRING_INDEX(name, ' ', 1)
    ) AS formatted_name,

    LOWER(
        CONCAT(
            SUBSTRING_INDEX(name, ' ', 1),
            '.',
            SUBSTRING_INDEX(name, ' ', -1),
            '@company.com'
        )
    ) AS email,

    CONCAT(
        UPPER(LEFT(SUBSTRING_INDEX(name, ' ', 1), 1)),
        UPPER(LEFT(SUBSTRING_INDEX(name, ' ', -1), 1))
    ) AS initials
FROM employees;
=======
SELECT
    CONCAT(
        UPPER(SUBSTRING_INDEX(name, ' ', -1)),
        ', ',
        SUBSTRING_INDEX(name, ' ', 1)
    ) AS formatted_name,

    LOWER(
        CONCAT(
            SUBSTRING_INDEX(name, ' ', 1),
            '.',
            SUBSTRING_INDEX(name, ' ', -1),
            '@company.com'
        )
    ) AS email,

    CONCAT(
        UPPER(LEFT(SUBSTRING_INDEX(name, ' ', 1), 1)),
        UPPER(LEFT(SUBSTRING_INDEX(name, ' ', -1), 1))
    ) AS initials
FROM employees;
>>>>>>> 6d7ffc3b81afc595bed94bfcd758c713402f838a
