CREATE TABLE tipo_forma (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_forma
    VALUES (1, 'Circular'),
    (2, 'Quadrado'),
    (3, 'Retangular');

