CREATE DATABASE modelo_dados_saneamento;

-- Schema: sistema_agua
CREATE SCHEMA IF NOT EXISTS sistema_agua;

CREATE TABLE tipo_rede_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_material (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_situacao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS tipo_captacao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

CREATE TABLE tipo_manancial (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_conexao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_lancamento (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_descarga (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_bomba (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_nivel_tratamento_agua (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

CREATE TABLE tipo_hidrante (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

CREATE TABLE tipo_medidor_pressao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

CREATE TABLE tipo_acesso (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_medidor_vazao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

CREATE TABLE tipo_funcao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_reservatorio (
    id smallint PRIMARY KEY,
    tipo varchar(255)
);

CREATE TABLE tipo_forma (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_tanque (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

CREATE TABLE tipo_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_funcao_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_acionamento_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE tipo_posicao_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, 31984) NOT NULL,
    tipo smallint REFERENCES tipo_rede_agua (id) NOT NULL,
    agua smallint REFERENCES tipo_agua (id) NOT NULL,
    material smallint REFERENCES tipo_material (id) NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1000) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    -- HACK: extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON redes_agua USING gist (geom);

CREATE TABLE setores_abastecimento (
    id serial PRIMARY KEY,
    -- HACK: Create a function to generate geometries of areas around networks
    geom GEOMETRY(polygon, 31984) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    observacoes varchar(255)
);

CREATE INDEX ON setores_abastecimento USING gist (geom);

CREATE TABLE IF NOT EXISTS captacoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    id_setor_abastecimento int REFERENCES setores_abastecimento (id),
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_captacao (id) NOT NULL,
    capacidade numeric(6, 2) CHECK (capacidade BETWEEN 0 AND 1000),
    tipo_manancial smallint REFERENCES tipo_manancial (id) NOT NULL,
    nome_manancial varchar, -- ISSUE: references hidrografia
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON captacoes USING gist (geom);

CREATE TABLE conexoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_conexao (id) NOT NULL,
    material smallint REFERENCES tipo_material (id) NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 0 AND 1000) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 0 AND 1000) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON conexoes USING gist (geom);

CREATE TABLE descargas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_lancamento (id) NOT NULL,
    descarga smallint REFERENCES tipo_descarga (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON descargas USING gist (geom);

CREATE TABLE estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 31984) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    agua smallint REFERENCES tipo_agua (id) NOT NULL,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON estacoes_elevatorias USING gist (geom);

CREATE TABLE bombas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    id_estacao_elevatoria integer REFERENCES estacoes_elevatorias (id),
    tipo smallint REFERENCES tipo_bomba (id),
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 0 AND 1000),
    diametro_saida smallint CHECK (diametro_saida BETWEEN 0 AND 1000),
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    potencia numeric(6, 2) CHECK (potencia BETWEEN 0 AND 1000),
    pressao numeric(4, 1) CHECK (pressao BETWEEN 0 AND 200),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON bombas USING gist (geom);

CREATE TABLE estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: references nivel_tratamento_agua(id)
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON estacoes_tratamento USING gist (geom);

CREATE TABLE hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_hidrante (id) NOT NULL,
    fabricante varchar(255),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON hidrantes USING gist (geom);

CREATE TABLE medidores_pressao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_medidor_pressao (id),
    acesso smallint REFERENCES tipo_acesso (id),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON medidores_pressao USING gist (geom);

CREATE TABLE setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, 31984) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    observacoes varchar(255)
);

CREATE INDEX ON setores_medicao USING gist (geom);

CREATE TABLE medidores_vazao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    id_setor_medicao int REFERENCES setores_medicao (id),
    agua smallint REFERENCES tipo_agua (id) NOT NULL,
    tipo smallint REFERENCES tipo_medidor_vazao (id) NOT NULL,
    funcao smallint REFERENCES tipo_funcao (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 0 AND 1000),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 9),
    acesso smallint REFERENCES tipo_acesso (id),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON medidores_vazao USING gist (geom);

CREATE TABLE reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_reservatorio (id) NOT NULL,
    volume int CHECK (volume BETWEEN 0 AND 5000),
    diametro smallint CHECK (diametro BETWEEN 0 AND 2000),
    altura numeric(3, 2) CHECK (altura BETWEEN 0 AND 10),
    nivel_min numeric(3, 2) CHECK (nivel_min BETWEEN 0 AND 10),
    nivel_max numeric(3, 2) CHECK (nivel_max BETWEEN 0 AND 10),
    altura_base numeric(3, 2) CHECK (altura_base BETWEEN 0 AND 10),
    forma smallint REFERENCES tipo_forma (id),
    material smallint REFERENCES tipo_material (id),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON reservatorios USING gist (geom);

CREATE TABLE tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_tanque (id) NOT NULL,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON tanques_compensacao USING gist (geom);

CREATE TABLE valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 31984) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_valvula (id) NOT NULL,
    funcao smallint REFERENCES tipo_funcao_valvula (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 0 AND 1000) NOT NULL,
    acionamento smallint REFERENCES tipo_acionamento_valvula (id),
    acesso smallint REFERENCES tipo_acesso (id),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    posicao smallint REFERENCES tipo_posicao_valvula (id) NOT NULL,
    qtd_voltas_fechar numeric(3, 1),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON sistema_agua.valvulas USING gist (geom);
