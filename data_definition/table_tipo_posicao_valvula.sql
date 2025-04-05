CREATE TABLE tipo_posicao_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_posicao_valvula
    VALUES (1, 'Aberta'),
    (2, 'Fechada'),
    (3, 'Nao aplicavel'),
    (4, 'Parcialmente aberta');

