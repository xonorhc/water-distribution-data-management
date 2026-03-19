CREATE TABLE IF NOT EXISTS water_service_material (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_service_material (description)
VALUES
    ('Unknown'),
    ('Cast Iron - CAS'),
    ('Copper - COP'),
    ('Ductile Iron - DIP'),
    ('Polyvinyl Chloride - PVC'),
    ('Lead - LP');
