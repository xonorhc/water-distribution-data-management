BEGIN;

CREATE TABLE IF NOT EXISTS sample_station (
    object_id serial,
    asset_id varchar(64) DEFAULT 'SAMPLE STATION',

    last_maint date,
    station_location varchar(255),

    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON sample_station USING gist (shape);

COMMENT ON COLUMN sample_station.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN sample_station.station_location IS 'Location of the sample station';

COMMIT;
