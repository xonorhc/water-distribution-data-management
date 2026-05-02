-- TABLE: treatment_plant
CREATE TABLE IF NOT EXISTS water_system.treatment_plant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Treatment Plant',
    last_maint date,
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint,
    FOREIGN KEY (filtration_type) REFERENCES types.water_supply_filtration_type (code),
    FOREIGN KEY (asset_type) REFERENCES types.water_treatment_plant_type (code)
)
INHERITS (
    water_system.punctual_asset
);

