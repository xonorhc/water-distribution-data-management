CREATE TABLE :PGSCHEMA.tipo_medidor_pressao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO :PGSCHEMA.tipo_medidor_pressao
    VALUES (1, 'Bourbon'),
    (2, 'Diafragma'),
    (3, 'Tubo U'),
    (4, 'Wireless');

