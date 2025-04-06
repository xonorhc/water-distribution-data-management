CREATE TABLE sistema_agua.tipo_hidrante (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_hidrante
    VALUES (1, 'Coluna'),
    (2, 'Subterraneo');

