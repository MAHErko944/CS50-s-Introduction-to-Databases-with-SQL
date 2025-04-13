
-- *** The Lost Letter ***
SELECT "type", "address" from "addresses" where  "id" IN (
    SELECT "to_address_id" from "packages" where "contents" = 'Congratulatory letter' and "from_address_id" IN (
        SELECT "id" from  "addresses" where "address" = '900 Somerville Avenue'
    )
);

-- *** The Devious Delivery ***
SELECT type 'Answers' FROM addresses WHERE id = (
    SELECT address_id FROM scans WHERE action = 'Drop' ABD package_id = (
        SELECT id FROM packages WHERE from_address_id IS NULL
    )
)

UNION

SELECT contents FROM packages WHERE id = (
    SELECT id FROM packages WHERE from_address_id IS NULL
);

-- *** The Forgotten Gift ***
--content--

select contents from packages where from_address_id =(
    select id from addresses where address = '109 Tileston Street'
);

--name--

SELECT name FROM drivers WHERE id =(
    SELECT driver_id FROM scans WHERE package_id = (
        SELECT id FROM packages WHERE from_address_id =(
            SELECT id FROM addresses where address = '109 Tileston Street'
        )
    )
    ORDER BY TIMESTAMP DESC
    LIMIT 10
);

