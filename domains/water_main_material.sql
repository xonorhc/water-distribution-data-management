CREATE TABLE IF NOT EXISTS water_main_material (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_main_material (description)
VALUES
    ('Unknown'),
    ('Asbestos Cement - AC'),
    ('Brick - BR'),
    ('Cast Iron - CAS'),
    ('Copper - COP'),
    ('Concrete (Non-Reinforced) - CP'),
    ('Concrete Segments (Bolted) - CSB'),
    ('Concrete Segments (Unbolted) - CSU'),
    ('Ductile Iron - DIP'),
    ('Galvanized Pipe - GP'),
    ('Pitch Fiber (Orangeburg) - OB'),
    ('Plastic/Steel Composite - PSC'),
    ('Polyethylene - PE'),
    ('Polypropylene - PP'),
    ('Polyvinyl Chloride - PVC'),
    ('Steel - SP'),
    ('Transite - TTE'),
    ('Wood - WD'),
    ('Pre-stressed Concrete Cylinder Pipe - PCCP'),
    ('Pre-stressed Concrete Embedded Cylinder Pipe AWWA C-301 - PCPE'),
    ('Pre-stressed Concrete Lined Cylinder Pipe AWWA C-301 - PCPL'),
    ('Steel Cylinder Reinforced Concrete Pipe - SRC'),
    ('High Density Polyethylene - HDPE'),
    ('Unreinforced Concrete Pipe - URC'),
    ('Fiberglass Reinforced Pipe - FRP'),
    ('Reinforced Concrete Pipe - RCP'),
    ('Corrugated Pipe - CORR'),
    ('Plastic - PLA'),
    ('Non-Plastic - NPLA');
