CREATE TABLE aparta_mento
    (
        id_apartamento SERIAL,
        matricula_apartamento VARCHAR,
        num_apartamento VARCHAR,        
        bloque VARCHAR,
        coef_apartemento INTEGER
    )

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO aparta_mento
    (matricula_apartamento,  bloque, coef_apartemento)
    VALUES ('783124929093748552777774632920', 'C', '11876394')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO aparta_mento
    (matricula_apartamento, bloque, coef_apartemento)
    VALUES ('2948462011710449484048409862840', 'B', '28398301')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO aparta_mento
    (matricula_apartamento, bloque, coef_apartemento)
    VALUES ('102938474657583927491029463729', 'C', '77888222')

    SELECT * FROM aparta_mento

CREATE TABLE propie_tario
    (
        id_propietario SERIAL,
        tipo_id_propietario VARCHAR,
        num_identificacion VARCHAR,
        tel_propietario BIGINT,
        ocupacion VARCHAR,
        edad SMALLINT,
        nom_propietario VARCHAR,
        apel_propietario VARCHAR,
        vacuna BOOLEAN,
        razon_social VARCHAR,
        correo_propietario VARCHAR
    )

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO propie_tario
    (tipo_id_propietario, num_identificacion, tel_propietario, ocupacion, nom_propietario, apel_propietario, correo_propietario)
    VALUES ('cedula', '76584019', '3219872401', 'medico', 'Juan Gabriel', 'Castillo Guerra', 'jugacasgue32@gmail.com')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO propie_tario
    (tipo_id_propietario, num_identificacion, tel_propietario, ocupacion, nom_propietario, apel_propietario, correo_propietario)
    VALUES ('cedula', '18273958', '3156742891', 'pensionada', 'Angela', 'Angulo Tejada', 'angeteja100@gmail.com')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO propie_tario
    (tipo_id_propietario, num_identificacion, tel_propietario, ocupacion, nom_propietario, apel_propietario, correo_propietario)
    VALUES ('cedula', '12309483', '31309857483', 'profesora', 'Marta', 'Castro robledo', 'soyyoXD@gmail.com')

    SELECT * FROM propie_tario

CREATE TABLE parquea_dero
    (
        id_parqueadero SERIAL,
        num_parqueadero VARCHAR,
        matri_parqueadero BIGINT,
        coef_parqueadero FLOAT
    )

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO parquea_dero
    ( matri_parqueadero, coef_parqueadero)
    VALUES ( '7788', '11370606')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO parquea_dero
    ( matri_parqueadero, coef_parqueadero)
    VALUES ( '1230', '11370606')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO parquea_dero
    ( matri_parqueadero, coef_parqueadero)
    VALUES ( '0987', '11370606')

    SELECT * FROM parquea_dero

CREATE TABLE vehicu_lo
    (
        id_vehiculo SERIAL,
        tipo_vehiculo VARCHAR,
        placa VARCHAR,
        modelo VARCHAR,
        marca VARCHAR,
        id_residente INTEGER,
        CONSTRAINT AK_vehicu_lo PRIMARY KEY (id_vehiculo),
        CONSTRAINT GK_AK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO vehicu_lo
    (tipo_vehiculo, modelo, marca)
    VALUES('moto', '2015','auteco discover')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO vehicu_lo
    (tipo_vehiculo, modelo, marca)
    VALUES('bicicleta', '2018','raptor x')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO vehicu_lo
    (tipo_vehiculo, modelo, marca)
    VALUES('deportivo', '2020','mazda mx5')

    SELECT * FROM vehicu_lo

CREATE TABLE masco_ta
    (
        id_mascota SERIAL,
        raza_mascota VARCHAR,
        nombre_mascota VARCHAR,
        vacuna_mascota VARCHAR,
        especie_mascota VARCHAR,
        id_residente INTEGER,
        CONSTRAINT PK_masco_ta PRIMARY KEY(id_mascota),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO masco_ta 
    (raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota) 
    VALUES('pastor aleman','rocky','si','perro')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO masco_ta 
    (raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota) 
    VALUES('africano','ico','no','perico')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO masco_ta 
    (raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota) 
    VALUES('bengala','tigra','no','gata')

    SELECT * FROM masco_ta

CREATE TABLE residen_te
(
    id_residente SERIAL,
    nombre_residente VARCHAR,
    apellido_residente VARCHAR,
    edad INTEGER,
    religion VARCHAR,
    id_representante INTEGER,
    lugar_trabajo VARCHAR,
    EPS VARCHAR,
    tel_residente VARCHAR,
    vacuna VARCHAR,
    condicion_salud VARCHAR,
    correo_residente VARCHAR,
    estado_civil VARCHAR,
    CONSTRAINT PK_residen_te PRIMARY KEY (id_residente)
)

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO residen_te
        (nombre_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
        VALUES('Yaneth', 'Moreno', '41', 'adventista', 'Colegio nuevo latir', 'cosmited', '3153440978', 'si', 'mala', 'yamoro777@gmail.com', 'casada');
        
        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO residen_te
        (nombre_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
        VALUES('Juan Daniel', 'Murillo', '13', 'adventista', 'casa', 'cosmited', '3167074341', 'si', 'buena', 'judamumolcpvxd1@gmail.com', 'soltero');
        
        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO residen_te
        (nombre_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
        VALUES('Edinson', 'Murillo', '46', 'adventista', 'colegio donald tafur', 'cosmited', '3156540987', 'si', 'exelente', 'leopardisimo@gmail.com', 'casado');

    SELECT * FROM residen_te

CREATE TABLE visita_nte
(
    id_visitante SERIAL,
    parentesco VARCHAR,
    motivo_visitante VARCHAR,
    apartemento VARCHAR,
    edad_visitante SERIAL,
    nombre_visitante VARCHAR,
    numero_contacto_v VARCHAR,
    observaciones VARCHAR
)

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO visita_nte
        (id_visitante, parentesco, motivo_visitante, apartemento, nombre_visitante, numero_contacto_v,)
        VALUES ('84730283', 'tio', 'pasar una temporada', '23', 'Albin Moreno', '3156950551')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO visita_nte
        (id_visitante, parentesco, motivo_visitante, apartemento, nombre_visitante, numero_contacto_v, observaciones)
        VALUES ('218493029', 'amigo', 'saludar', '77', 'Bruce wayne', '3769884098', 'ninguna')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO visita_nte
        (id_visitante, parentesco, motivo_visitante, apartemento, nombre_visitante, numero_contacto_v, observaciones)
        VALUES ('274054849', 'abuela', 'estar en el campo como prevencion del covid', '09', 'Emeterio zuñiga', '3124567890', 'ninguna')

        SELECT * FROM visita_nte