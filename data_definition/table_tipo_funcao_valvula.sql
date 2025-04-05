CREATE TABLE tipo_funcao_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_funcao_valvula
    VALUES (1, 'Bloqueio'),
    (2, 'Controle'),
    (3, 'Descarga'),
    (4, 'Redutora de pressao'),
    (5, 'Retencao');

