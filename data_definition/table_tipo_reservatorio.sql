CREATE TABLE sistema_agua.tipo_reservatorio (
    id smallint PRIMARY KEY,
    tipo varchar(255)
);

INSERT INTO sistema_agua.tipo_reservatorio
    VALUES (1, 'Apoiado'),
    (2, 'Elevado'),
    (3, 'Enterrado'),
    (4, 'Semi enterrado');

