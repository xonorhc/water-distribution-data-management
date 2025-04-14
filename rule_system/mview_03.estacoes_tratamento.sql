SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_estacoes_tratamento AS
SELECT
    et.id,
    et.geom,
    et.nome,
    et.vazao,
    tt.arr_tipo AS tratamento,
    ts.tipo AS situacao,
    et.localizacao,
    et.observacoes
FROM
    estacoes_tratamento et
    LEFT JOIN (
        SELECT
            et.id,
            array_agg(et.unnest) AS arr_id,
            array_agg(ttn.tipo) AS arr_tipo
        FROM (
            SELECT
                id,
                unnest(tratamento)
            FROM
                estacoes_tratamento) AS et
            LEFT JOIN tipo_tratamento_nivel ttn ON ttn.id = et.unnest
        GROUP BY
            et.id) tt ON tt.id = et.id
    LEFT JOIN tipo_situacao ts ON et.situacao = ts.id
WHERE
    et.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_estacoes_tratamento USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_estacoes_tratamento (id);

GRANT SELECT ON :MVSCHEMA.sa_estacoes_tratamento TO PUBLIC;

