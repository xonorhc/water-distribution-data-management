CREATE TABLE sistema_agua.tipo_material (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_material
    VALUES (1, 'CA'),
    (2, 'FoFo'),
    (3, 'FGal'),
    (5, 'PRFV'),
    (6, 'PVC'),
    (7, 'PVC DeFoFo'),
    (8, 'PEAD');

