SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_captacoes AS 
SELECT DISTINCT ON (c.id)
    c.id,
    c.geom,
    sa.id AS id_setor_abastecimento,
    c.nome,
    tc.tipo,
    c.capacidade,
    tm.tipo AS tipo_manancial,
    c.nome_manancial,
    ts.tipo AS situacao,
    c.localizacao,
    c.observacoes
FROM
    captacoes c
    LEFT JOIN tipo_captacao tc ON c.tipo = tc.id
    LEFT JOIN tipo_manancial tm ON c.tipo_manancial = tm.id
    LEFT JOIN tipo_situacao ts ON c.situacao = ts.id
    LEFT JOIN setores_abastecimento sa ON st_contains (sa.geom, c.geom)
WHERE
    c.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_captacoes USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_captacoes (id);

GRANT SELECT ON :MVSCHEMA.sa_captacoes TO PUBLIC;

