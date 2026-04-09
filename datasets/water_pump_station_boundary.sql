BEGIN;

CREATE TABLE IF NOT EXISTS water_pump_station_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'WATER PUMP STATION BOUNDARY',

    FOREIGN KEY (asset_type) REFERENCES asset_type_structure_boundary_water_pump_station_boundary (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    polygonal_asset
);

CREATE INDEX ON water_pump_station_boundary (shape_area);
CREATE INDEX ON water_pump_station_boundary (shape_length);
CREATE INDEX ON water_pump_station_boundary USING gist (shape);

COMMIT;
