CREATE TABLE :PGSCHEMA.tipo_reservatorio (
    id smallint PRIMARY KEY,
    tipo varchar(255)
);

INSERT INTO :PGSCHEMA.tipo_reservatorio
    VALUES (1, 'Apoiado'),
    (2, 'Elevado'),
    (3, 'Enterrado'),
    (4, 'Semi enterrado');

