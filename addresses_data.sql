INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (1, '6232 Guiseppe Courts', 'Jamartown', 'Maryland', '49028');
INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (2, '704 Cecil Mountain', 'West Jon', 'South Dakota', '91578');
INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (3, '41613 Huel Ranch', 'Loycefort', 'Florida', '12109');
INSERT INTO addresses (id, line_1, city, state, zipcode) VALUES (4, '1397 Braden Shoals', 'New Karine', 'New York', '03913');

SELECT setval('addresses_id_seq', (SELECT MAX(id) FROM addresses));