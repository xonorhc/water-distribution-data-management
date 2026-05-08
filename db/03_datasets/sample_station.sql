-- TABLE: sample_station
CREATE TABLE IF NOT EXISTS watersystem.sample_station (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SAMPLE-STATION-' || LPAD(object_id::text, 5, '0')) STORED,
    sample_station_location varchar(255),
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_sample_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.sample_station USING gist (shape);

