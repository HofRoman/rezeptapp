-- ===========================
-- CATEGORY (Beispiele)
-- ===========================
INSERT INTO category (title, description, active)
VALUES ('Dessert', 'Süße Nachspeisen wie Kuchen und Eis', 1);

INSERT INTO category (title, description, active)
VALUES ('Hauptgericht', 'Warme Mahlzeiten als Hauptspeise', 1);

INSERT INTO category (title, description, active)
VALUES ('Vegetarisch', 'Gerichte ohne Fleisch und Fisch', 1);

-- ===========================
-- RECIPE (Beispiele)
-- ===========================
INSERT INTO recipe (title, description, active)
VALUES ('Spaghetti Bolognese', 'Klassisches italienisches Nudelgericht mit Fleischsoße', 1);

INSERT INTO recipe (title, description, active)
VALUES ('Gemüsesuppe', 'Leichte Suppe mit frischem Gemüse', 1);

INSERT INTO recipe (title, description, active)
VALUES ('Schokoladenkuchen', 'Saftiger Kuchen mit Schokolade', 1);

-- ===========================
-- RELATIONSHIPS (Zuordnung Recipe ↔ Category)
-- ===========================
-- Spaghetti Bolognese -> Hauptgericht
INSERT INTO recipe_category (recipe_id, category_id)
SELECT r.id, c.id
FROM recipe r, category c
WHERE r.title = 'Spaghetti Bolognese'
  AND c.title = 'Hauptgericht';

-- Gemüsesuppe -> Vegetarisch + Hauptgericht
INSERT INTO recipe_category (recipe_id, category_id)
SELECT r.id, c.id
FROM recipe r, category c
WHERE r.title = 'Gemüsesuppe'
  AND c.title = 'Vegetarisch';

INSERT INTO recipe_category (recipe_id, category_id)
SELECT r.id, c.id
FROM recipe r, category c
WHERE r.title = 'Gemüsesuppe'
  AND c.title = 'Hauptgericht';

-- Schokoladenkuchen -> Dessert
INSERT INTO recipe_category (recipe_id, category_id)
SELECT r.id, c.id
FROM recipe r, category c
WHERE r.title = 'Schokoladenkuchen'
  AND c.title = 'Dessert';
