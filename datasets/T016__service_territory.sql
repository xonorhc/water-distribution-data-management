BEGIN;

CREATE TABLE IF NOT EXISTS service_territory (
    object_id serial,
    PRIMARY KEY (object_id)
)
INHERITS (
    polygonal_asset
);

CREATE INDEX ON service_territory (shape_area);
CREATE INDEX ON service_territory (shape_length);
CREATE INDEX ON service_territory USING gist (shape);

COMMIT;
