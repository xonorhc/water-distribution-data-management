BEGIN;

CREATE TABLE IF NOT EXISTS treatment_plant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'TREATMENT PLANT',

    last_maint date,
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint,

    FOREIGN KEY (asset_type) REFERENCES water_treatment_plant_type (code),
    FOREIGN KEY (filtration_type) REFERENCES water_supply_filtration_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON treatment_plant USING gist (shape);

COMMENT ON COLUMN treatment_plant.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN treatment_plant.permitted_capacity IS 'Maximunm capacity allowed for the treatment plant';
COMMENT ON COLUMN treatment_plant.rated_capacity IS 'Designed operational capacity of the treatment plant';
COMMENT ON COLUMN treatment_plant.average_daily_flow IS 'Average daily water flow processed by the treatment plant';
COMMENT ON COLUMN treatment_plant.filtration_type IS 'Type of filtration system used in the treatment plant';

COMMIT;
