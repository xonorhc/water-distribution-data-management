SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_tanques_compensacao AS
SELECT
    tc.id,
    tc.geom,
    tt.tipo,
    ts.tipo AS situacao,
    tc.localizacao,
    tc.observacoes
FROM
    tanques_compensacao tc
    LEFT JOIN tipo_tanque tt ON tt.id = tc.tipo
    LEFT JOIN tipo_situacao ts ON ts.id = tc.situacao
WHERE
    tc.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_tanques_compensacao USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_tanques_compensacao (id);

GRANT SELECT ON :MVSCHEMA.sa_tanques_compensacao TO PUBLIC;

