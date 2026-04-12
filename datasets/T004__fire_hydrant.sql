BEGIN;

CREATE TABLE IF NOT EXISTS fire_hydrant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'FIRE HYDRANT',

    manufacturer bigint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 100 AND 250),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 65 AND 150),
    last_maint date,
    assignment_type smallint,
    assignment_due date,
    assigned_on date,
    station varchar(64),
    shift varchar(64),
    public_view boolean,
    adoption_status smallint,
    adopted_by varchar(64),
    adopted_on date,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_fire_hydrant (code),
    FOREIGN KEY (manufacturer) REFERENCES water_fire_hydrant_manufacturer (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (assignment_type) REFERENCES fire_hydrant_assignment_type (code),
    FOREIGN KEY (adoption_status) REFERENCES adoption_status (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON fire_hydrant USING gist (shape);

COMMENT ON COLUMN fire_hydrant.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN fire_hydrant.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN fire_hydrant.diameter IS 'Measurement of the main diameter of the fire hydrnat';
COMMENT ON COLUMN fire_hydrant.secondary_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';
COMMENT ON COLUMN fire_hydrant.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN fire_hydrant.assignment_type IS 'Type of task assigned for the fire hydrant';
COMMENT ON COLUMN fire_hydrant.assignment_due IS 'Deadline for completing the assigned task';
COMMENT ON COLUMN fire_hydrant.assigned_on IS 'Date when the task was assigned';
COMMENT ON COLUMN fire_hydrant.station IS 'Station associated with the assigned task';
COMMENT ON COLUMN fire_hydrant.shift IS 'Shift associated with the assigned task';
COMMENT ON COLUMN fire_hydrant.adoption_status IS 'Status indicating whether the fire hydrant is adopted';
COMMENT ON COLUMN fire_hydrant.public_view IS 'Visibility of the fire hydrant to the public';
COMMENT ON COLUMN fire_hydrant.adopted_by IS 'Person or entity that adopted the fire hydrant';
COMMENT ON COLUMN fire_hydrant.adopted_on IS 'Date when the fire fire hydrant was adopted';

COMMIT;
