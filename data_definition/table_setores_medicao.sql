CREATE TABLE sistema_agua.setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.setores_medicao USING gist (geom);

