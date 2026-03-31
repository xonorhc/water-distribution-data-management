CREATE TABLE IF NOT EXISTS treatment_plant (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'TREATMENT PLANT', -- Identifier assigned to the asset for tracking purposes
    last_maint date, -- Date of the most recent maintenance performed on the asset
    permitted_capacity numeric, -- Maximunm capacity allowed for the treatment plant
    rated_capacity numeric, -- Designed operational capacity of the treatment plant
    average_daily_flow numeric, -- Average daily water flow processed by the treatment plant
    filtration_type smallint DEFAULT 0, -- Type of filtration system used in the treatment plant
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES water_treatment_plant_type (code),
    FOREIGN KEY (filtration_type) REFERENCES water_supply_filtration_type (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON treatment_plant USING gist (shape);

