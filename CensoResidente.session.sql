CREATE TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matri_parqueadero BIGINT,
    coef_parqueadero FLOAT
    
)

--inserts
INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, coef_parqueadero) 
VALUES ('D10','370568945','12.48')

SELECT num_parqueadero FROM parqueadero
 WHERE id_parqueadero = '1'

 CREATE TABLE mascota
(
    id_mascota SERIAL,
    raza_mascota VARCHAR,
    nombre_mascota VARCHAR,
    vacuna_mascota VARCHAR,
    especie_mascota VARCHAR,
    id_residente INTEGER,
    CONSTRAINT PK_mascota PRIMARY KEY (id_mascota),
    CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES (residente. 
    id_ residente)
    
)


 CREATE TABLE residente
(
    id_residente SERIAL,
    nombre_residente VARCHAR,
    apellido_residente VARCHAR,
    edad VARCHAR,
    religion VARCHAR,
    id_representante VARCHAR,
    lugar_trabajo VARCHAR,
    EPS VARCHAR,
    tel_residente VARCHAR,
    vacuna VARCHAR,
    condicion_salud VARCHAR,
    correo_residente VARCHAR,
    estado_civil VARCHAR,
    CONSTRAINT PK_residente PRIMARY KEY (id_residente)
    
)

INSERT INTO residente
( id_residente, nombre_residente, apellido_residente, edad, religion, id_representante,
lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente,
estado_civil)

('1137060686', 'Jean Paul', 'Angulo Zuñiga', '38', 'Bautista', '11802830',
 'Ceramica Corona', 'Cosmited', '3113031115', 'no', 'Buena', 'judamumolcpvxd1@gmail.com',
 'Soltero')




