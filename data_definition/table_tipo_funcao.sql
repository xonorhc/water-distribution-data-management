CREATE TABLE sistema_agua.tipo_funcao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_funcao
    VALUES (1, 'Nenhum'),
    (2, 'Entrada'),
    (3, 'Saida');

