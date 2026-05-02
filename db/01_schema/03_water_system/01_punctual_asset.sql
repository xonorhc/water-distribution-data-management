-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS water_system.punctual_asset (
    shape geometry(POINTZ, 4326),
    symbol_rotation smallint CHECK (symbol_rotation BETWEEN 0 AND 360) DEFAULT 0
)
INHERITS (
    water_system.asset
);

