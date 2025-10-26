-- Cross join

-- this will act as cartesian (x+y+z)(a+b) => xa + xb + ya + yb + za + zb

SELECT * FROM studs
CROSS JOIN classes;

-- Real-World Uses of CROSS JOIN

-- . Restaurants / Cafes > Generate all combinations of menu items + sizes + addons.
-- · E-commerce > List all product variations (e.g., shirt × color × size).
-- . Event Planning> Create a seating chart by combining guests × tables.
-- · Scheduling > Generate all possible employee × shift combinations.
-- · Finance > Combine customers × months to ensure you have all periods accounted for (even if no transactions happened).