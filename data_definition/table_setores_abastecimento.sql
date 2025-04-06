-- HACK: Create a function to generate geometries of areas around networks
CREATE TABLE sistema_agua.setores_abastecimento (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.setores_abastecimento USING gist (geom);

