--- 08-01-2022 15:36:18
--- SQLite
/***** ERROR ******
near "NOTNULL": syntax error
 ----- 
CREATE TABLE CURSO(Codigo_de_curso INTEGER PRIMARY KEY NOTNULL, Nombre VARCHAR NOTNULL,
                  Description VARCHAR, Turno VARCHAR NOTNULL, Cupo INT);
*****/

--- 08-01-2022 15:36:29
--- SQLite
CREATE TABLE CURSO(Codigo_de_curso INTEGER PRIMARY KEY NOT NULL, Nombre VARCHAR NOT NULL,
                  Description VARCHAR, Turno VARCHAR NOT NULL, Cupo INT);

--- 08-01-2022 15:40:31
--- SQLite
/***** ERROR ******
near "101": syntax error
 ----- 
INSERT INTO CURSO(101,'Algoritmos', 'Algoritmos y Estructuras de Datos', 'Mañana', 35);
INSERT INTO CURSO(102,'Matematica Discreta', '', 'Tarde', 30);
*****/

--- 08-01-2022 15:41:37
--- SQLite
INSERT INTO CURSO VALUES(101,'Algoritmos', 'Algoritmos y Estructuras de Datos', 'Mañana', 35);
INSERT INTO CURSO VALUES(102,'Matematica Discreta', '', 'Tarde', 30);

--- 08-01-2022 15:43:47
--- SQLite
SELECT * FROM CURSO;

--- 08-01-2022 15:45:12
--- SQLite
/***** ERROR ******
NOT NULL constraint failed: CURSO.Nombre
 ----- 
INSERT INTO CURSO VALUES(25,NULL, 'Lengua 1', 'Noche', 15 );
*****/

--- 08-01-2022 15:45:46
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: CURSO.Codigo_de_curso
 ----- 
INSERT INTO CURSO VALUES(101,'Lengua', 'Lengua 1', 'Noche', 15 );
*****/

--- 08-01-2022 15:46:33
--- SQLite
/***** ERROR ******
near "VALUES": syntax error
 ----- 
UPDATE CURSO VALUES(cupo = 25);
*****/

--- 08-01-2022 15:47:56
--- SQLite
/***** ERROR ******
near "=": syntax error
 ----- 
UPDATE CURSO SET(cupo = 25);
*****/

--- 08-01-2022 15:48:23
--- SQLite
UPDATE CURSO SET cupo = 25;

--- 08-01-2022 15:48:50
--- SQLite
SELECT * FROM CURSO;

--- 08-01-2022 15:49:36
--- SQLite
/***** ERROR ******
near "*": syntax error
 ----- 
DELETE * FROM CURSO WHERE id = 101;
*****/

--- 08-01-2022 15:49:41
--- SQLite
/***** ERROR ******
no such column: id
 ----- 
DELETE FROM CURSO WHERE id = 101;
*****/

--- 08-01-2022 15:49:52
--- SQLite
DELETE FROM CURSO WHERE codigo_de_curso = 101;

--- 08-01-2022 15:50:14
--- SQLite
SELECT * FROM CURSO;

--- 08-01-2022 15:50:17
--- SQLite
SELECT * FROM CURSO;

