BEGIN;

CREATE TABLE IF NOT EXISTS water_storage_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'WATER STORAGE BOUNDARY',

    FOREIGN KEY (asset_type) REFERENCES asset_type_structure_boundary_water_storage_boundary (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    polygonal_asset
);

CREATE INDEX ON water_storage_boundary (shape_area);
CREATE INDEX ON water_storage_boundary (shape_length);
CREATE INDEX ON water_storage_boundary USING gist (shape);

COMMIT;
