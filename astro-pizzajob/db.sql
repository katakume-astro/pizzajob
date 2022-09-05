INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_pizza', 'pizza', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_pizza', 'pizza', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_pizza', 'pizza', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('pizza', 'pizza')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('pizza',0,'Praktykant','Praktykant',20,'{}','{}'),
	('pizza',1,'Pracownik','Pracownik',40,'{}','{}'),
	('pizza',2,'boss','Szef',100,'{}','{}')
;