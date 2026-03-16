-- FIX: Change this name
CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_storage_boundary (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_boudary_water_storage_boundary (description)
VALUES
    ("Unknow"),
    ("Hydropneumatic Tank"),
    ("Reservoir"),
    ("Retention Area"),
    ("Storage Tank"),
    ("Surge Tank"),
    ("Tower");
