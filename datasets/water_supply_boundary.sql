BEGIN;

CREATE TABLE IF NOT EXISTS water_supply_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'WATER SUPPLY BOUNDARY',

    FOREIGN KEY (asset_type) REFERENCES asset_type_structure_boundary_water_supply_boundary (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    polygonal_asset
);

CREATE INDEX ON water_supply_boundary (shape_area);
CREATE INDEX ON water_supply_boundary (shape_length);
CREATE INDEX ON water_supply_boundary USING gist (shape);

COMMIT;
