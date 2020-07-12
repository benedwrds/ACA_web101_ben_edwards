CREATE TABLE companies (
  id INT NOT NULL AUTO_INCREMENT,
  company_name VARCHAR(50)
  PRIMARY KEY(id) 
);
CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_id VARCHAR(50),
  clothing VARCHAR(50),
  hygeine VARCHAR(50),
  groceries VARCHAR(50),
  accessories VARCHAR(50),
  sports & outdoors VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (product_id),
  REFERENCES companies (id) 
    ON DELETE CASCADE
);

CREATE TABLE clothing (
  shirts VARCHAR(50),
  pants VARCHAR(50),
  shoes VARCHAR(50),
  PRIMARY KEY(id),
  FOREIGN KEY (product_id),
  REFERENCES companies (id) 
    ON DELETE CASCADE
);

CREATE TABLE hygeine (
  bodywash VARCHAR(50),
  deoderant VARCHAR(50),
  toothpaste VARCHAR(50),
  PRIMARY KEY(id),
  FOREIGN KEY (product_id),
  REFERENCES companies (id)
    ON DELETE CASCADE 
);

CREATE TABLE groceries (
  produce VARCHAR(50),
  dairy/dairyAlt VARCHAR(50),
  snacks/treats VARCHAR(50),
  PRIMARY KEY(id),
  FOREIGN KEY (product_id),
  REFERENCES companies (id)
    ON DELETE CASCADE 
);

CREATE TABLE accessories (
  backpacks VARCHAR(50),
  sunglasses VARCHAR(50),
  PRIMARY KEY(id),
  FOREIGN KEY (product_id),
  REFERENCES companies (id) 
    ON DELETE CASCADE
);

CREATE TABLE sports & outdoors (
  skateboarding VARCHAR(50),
  rock climbing VARCHAR(50),
  camping VARCHAR(50),
  gardening VARCHAR(50),
  PRIMARY KEY(id),
  FOREIGN KEY (product_id),
  REFERENCES companies (id) 
    ON DELETE CASCADE
);