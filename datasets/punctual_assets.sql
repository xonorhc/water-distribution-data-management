CREATE TABLE IF NOT EXISTS punctual_asset (
    shape geometry(pointz, 4326), -- Geometric representation of the feature
    symbol_rotation smallint CHECK (symbol_rotation BETWEEN 0 AND 360) DEFAULT 0 -- Defines the rotation angle for the assets symbol on the map
)
INHERITS (
    asset
);

