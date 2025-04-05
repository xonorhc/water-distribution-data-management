CREATE TABLE tipo_nivel_tratamento_agua (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO tipo_nivel_tratamento_agua
    VALUES (1, 'Coagulacao'),
    (2, 'Floculacao'),
    (3, 'Decantacao'),
    (4, 'Flotacao'),
    (5, 'Filtracao'),
    (6, 'Desinfeccao'),
    (7, 'Fluoretacao'),
    (8, 'Correcao de PH'),
    (9, 'Outros (especificar na observacao)');

