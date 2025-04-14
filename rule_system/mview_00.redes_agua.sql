SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_redes_agua AS
SELECT
    ra.id,
    ra.geom,
    tra.tipo,
    ta.tipo AS agua,
    tm.tipo AS material,
    ra.diametro,
    ra.profundidade,
    ra.extensao_digital,
    ts.tipo AS situacao,
    ra.localizacao,
    ra.observacoes
FROM
    redes_agua ra
    LEFT JOIN tipo_rede_agua tra ON ra.tipo = tra.id
    LEFT JOIN tipo_agua ta ON ra.agua = ta.id
    LEFT JOIN tipo_material tm ON ra.material = tm.id
    LEFT JOIN tipo_situacao ts ON ra.situacao = ts.id
WHERE
    ra.situacao = 1
    AND ra.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_redes_agua USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_redes_agua (id);

GRANT SELECT ON :MVSCHEMA.sa_redes_agua TO PUBLIC;

