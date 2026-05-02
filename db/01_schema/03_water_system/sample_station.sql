-- TABLE: sample_station
CREATE TABLE IF NOT EXISTS water_system.sample_station (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Sample Station',
    last_maint date,
    station_location varchar(255)
)
INHERITS (
    water_system.punctual_asset
);

