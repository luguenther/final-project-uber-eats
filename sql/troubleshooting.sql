SET GLOBAL innodb_lock_wait_timeout = 300; -- Increase timeout to 5 minutes
SET SESSION innodb_lock_wait_timeout = 300;
SET GLOBAL max_allowed_packet = 1073741824; -- Increase packet size
ALTER TABLE restaurants MODIFY COLUMN price_range VARCHAR(50);
ALTER TABLE restaurants MODIFY COLUMN zip_code VARCHAR(20);

SELECT rc.restaurant_id
FROM restaurant_cuisines rc
LEFT JOIN restaurants r ON rc.restaurant_id = r.id
WHERE r.id IS NULL;

SELECT rc.restaurant_id
FROM restaurant_cuisines rc
LEFT JOIN restaurants r ON rc.restaurant_id = r.id
WHERE r.id IS NULL;

DESCRIBE restaurants;

ALTER TABLE restaurant_cuisines DROP FOREIGN KEY restaurant_cuisines_ibfk_1;
ALTER TABLE restaurant_menus DROP FOREIGN KEY restaurant_menus_ibfk_1;

ALTER TABLE restaurant_cuisines 
ADD CONSTRAINT restaurant_cuisines_ibfk_1 
FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON DELETE CASCADE;

ALTER TABLE restaurant_menus 
ADD CONSTRAINT restaurant_menus_ibfk_1 
FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON DELETE CASCADE;

DESCRIBE restaurant_cuisines;
DESCRIBE restaurant_menus;