BEGIN;

CREATE TABLE IF NOT EXISTS punctual_asset (
    shape GEOMETRY (POINTZ, 4326),
    symbol_rotation smallint CHECK (symbol_rotation BETWEEN 0 AND 360) DEFAULT 0
)
INHERITS (
    asset
);

COMMENT ON COLUMN punctual_asset.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN punctual_asset.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';

COMMIT;
