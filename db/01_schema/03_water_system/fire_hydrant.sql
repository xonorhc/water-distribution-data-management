-- TABLE: fire_hydrant
CREATE TABLE IF NOT EXISTS water_system.fire_hydrant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fire Hydrant',
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
    FOREIGN KEY (manufacturer) REFERENCES types.water_fire_hydrant_manufacturer (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (assignment_type) REFERENCES types.fire_hydrant_assignment_type (code),
    FOREIGN KEY (adoption_status) REFERENCES types.adoption_status (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_fire_hydrant (code)
)
INHERITS (
    water_system.punctual_asset
);

