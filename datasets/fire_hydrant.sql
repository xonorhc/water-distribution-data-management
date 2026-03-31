CREATE TABLE IF NOT EXISTS fire_hydrant (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'FIRE HYDRANT', -- Identifier assigned to the asset for tracking purposes
    manufacturer bigint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    diameter smallint DEFAULT 0, -- Measurement of the main diameter of the fire hydrnat
    secondary_diameter smallint DEFAULT 0, -- Measurement of the nozzle diameter of the fire hydrnat
    last_maint date, -- Date of the most recent maintenance performed on the asset
    assignment_type smallint, -- Type of task assigned for the fire hydrant
    assignment_due date, -- Deadline for completing the assigned task
    assigned_on date, -- Date when the task was assigned
    station varchar(64), -- Station associated with the assigned task
    shift varchar(64), -- Shift associated with the assigned task
    adoption_status smallint, -- Status indicating whether the fire hydrant is adopted
    public_view smallint, -- Visibility of the fire hydrant to the public
    adopted_by varchar(64), -- Person or entity that adopted the fire hydrant
    adopted_on date, -- Date when the fire fire hydrant was adopted
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_fire_hydrant (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_hydrant_service_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES water_hydrant_nozzle_diameter (code),
    FOREIGN KEY (assignment_type) REFERENCES fire_hydrant_assignment_type (code),
    FOREIGN KEY (adoption_status) REFERENCES adoption_status (code),
    FOREIGN KEY (public_view) REFERENCES fire_hydrant_publicview (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON fire_hydrant USING gist (shape);

