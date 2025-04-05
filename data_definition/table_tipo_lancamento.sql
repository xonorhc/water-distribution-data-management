CREATE TABLE tipo_lancamento (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_lancamento
    VALUES (1, 'Descarga'),
    (2, 'Extravazamento'),
    (3, 'Padrao de saida');

