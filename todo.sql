CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NULL,
  details TEXT NULL,
  priority INTEGER DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Wash car', 'Get the fuck up and wash that shit', '1', '2001-02-16 20:38:40', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Buy gift', 'Ask girlfriend what she wants', '2', '2001-02-16 20:38:40', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Swag and surf', 'Lotion up and hit the waves', '3', '2001-02-16 20:38:40', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Beat Halo on legendary', 'Dont bitch out', '4', '2001-02-16 20:38:40', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Do homework', 'Open your MacBook', '5','2001-02-16 20:38:40','2002-02-16 20:38:40');

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > '1';
UPDATE todos SET completed_at = '2004-01-02 12:33:20' WHERE id = '2';

DELETE FROM todos WHERE completed_at IS NULL;