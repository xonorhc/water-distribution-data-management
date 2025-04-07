CREATE TABLE :PGSCHEMA.tipo_medidor_vazao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO :PGSCHEMA.tipo_medidor_vazao
    VALUES (1, 'Eletromagnetico'),
    (2, 'Massica coriolis'),
    (3, 'Rotametro'),
    (4, 'Ultrassonico'),
    (5, 'Vortex'),
    (6, 'Calha Parshall'),
    (7, 'Volumetrico'),
    (8, 'Velocimetrico');

