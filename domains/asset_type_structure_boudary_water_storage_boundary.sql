CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_storage_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_boudary_water_storage_boundary (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Hydropneumatic Tank'),
    (2, 'Reservoir'),
    (3, 'Retention Area'),
    (4, 'Storage Tank'),
    (5, 'Surge Tank'),
    (6, 'Tower');

