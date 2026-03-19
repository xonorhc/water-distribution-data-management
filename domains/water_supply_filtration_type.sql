CREATE TABLE IF NOT EXISTS water_supply_filtration_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_supply_filtration_type (description)
VALUES
    ('Unknown'),
    ('Carbon'),
    ('Reverse Osmosis'),
    ('Ultraviolet Light'),
    ('Sediment'),
    ('Biological');
