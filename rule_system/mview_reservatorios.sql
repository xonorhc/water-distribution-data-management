SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_reservatorios AS
SELECT
    r.id,
    r.geom,
    r.nome,
    tr.tipo,
    r.volume,
    r.diametro,
    r.altura,
    r.nivel_min,
    r.nivel_max,
    r.altura_base,
    tf.tipo AS forma,
    tm.tipo AS material,
    ts.tipo AS situacao,
    r.localizacao,
    r.observacoes
FROM
    reservatorios r
    LEFT JOIN tipo_reservatorio tr ON r.tipo = tr.id
    LEFT JOIN tipo_forma tf ON r.forma = tf.id
    LEFT JOIN tipo_material tm ON r.material = tm.id
    LEFT JOIN tipo_situacao ts ON r.situacao = ts.id
WHERE
    r.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_reservatorios USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_reservatorios (id);

GRANT SELECT ON :MVSCHEMA.sa_reservatorios TO PUBLIC;

