CREATE TABLE :PGSCHEMA.tipo_tanque (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO :PGSCHEMA.tipo_tanque
    VALUES (1, 'Chamine de equilibrio'),
    (2, 'Reservatorio hidropneumatico'),
    (3, 'Tanque de alimentacao unidirecional');

