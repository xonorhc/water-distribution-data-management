CREATE TABLE IF NOT EXISTS water_service_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_service_material (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Cast Iron - CAS'),
    (2, 'Copper - COP'),
    (3, 'Ductile Iron - DIP'),
    (4, 'Polyvinyl Chloride - PVC'),
    (5, 'Lead - LP');
