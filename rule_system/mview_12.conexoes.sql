SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_conexoes AS
SELECT
    c.id,
    c.geom,
    tc.tipo,
    tm.tipo AS material,
    c.diametro_entrada,
    c.diametro_saida,
    c.profundidade,
    ts.tipo AS situacao,
    c.localizacao,
    c.observacoes,
    c.rotacao_simbolo
FROM
    conexoes c
    LEFT JOIN tipo_conexao tc ON c.tipo = tc.id
    LEFT JOIN tipo_material tm ON c.material = tm.id
    LEFT JOIN tipo_situacao ts ON ts.id = c.situacao
WHERE
    st_intersects (c.geom, (
            SELECT
                st_collect (geom) AS geom FROM redes_agua
            WHERE
                geom IS NOT NULL
                AND situacao = 1))
    AND c.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_conexoes USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_conexoes (id);

GRANT SELECT ON :MVSCHEMA.sa_conexoes TO PUBLIC;

