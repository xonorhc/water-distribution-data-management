-- TABLE: treatment_plant
CREATE TABLE IF NOT EXISTS watersystem.treatment_plant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Treatment Plant',
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_treatment_plant_type (code),
    FOREIGN KEY (filtration_type) REFERENCES domains.water_supply_filtration_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.treatment_plant USING gist (shape);

