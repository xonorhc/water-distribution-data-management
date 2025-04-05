CREATE TABLE tipo_acesso (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_acesso
    VALUES (1, 'Caixa'),
    (2, 'Enterrado'),
    (3, 'Acesso livre'),
    (4, 'PV'),
    (5, 'Tampa T9');

