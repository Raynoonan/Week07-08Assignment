DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS step;

CREATE TABLE step (
	step_id INT AUTO_INCREMENT NOT NULL,
	 project_id INT AUTO_INCREMENT NOT NULL,
	step_text TEXT,
	 step_order INT,
);

CREATE TABLE project_category (
	project_id INT AUTO_INCREMENT NOT NULL,
	 category_id INT AUTO_INCREMENT NOT NULL
);

CREATE TABLE project (
	project_id INT AUTO_INCREMENT NOT NULL,
	 estimated_hours TIME, 
	actual_hours TIME,
	 difficulty VARCHAR(64) NOT NULL,
	  notes VARCHAR(64) NOT NULL
);

CREATE TABLE material (
	material_id INT AUTO_INCREMENT NOT NULL, 
	project_id INT AUTO_INCREMENT NOT NULL,
	material_name VARCHAR(128) NOT NULL,
	 num_required INT NOT NULL,
	 cost INT NOT NULL
	
	
);

CREATE TABLE category (
	category_id INT AUTO_INCREMENT NOT NULL,
	category_name VARCHAR(128) NOT NULL
	
);
