CREATE TABLE tipo_acionamento_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_acionamento_valvula
    VALUES (1, 'Eletrico'),
    (2, 'Manual Chave'),
    (3, 'Manual Volante'),
    (4, 'Mecanico');

