BEGIN;

CREATE TABLE IF NOT EXISTS asset_type_structure_boundary_water_supply_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_boundary_water_supply_boundary (code, description)
VALUES
(1, 'Interconnect'),
(2, 'Treatment Plant'),
(3, 'Well');

COMMIT;
