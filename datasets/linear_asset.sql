BEGIN;

CREATE TABLE IF NOT EXISTS linear_assets (
    shape GEOMETRY (LINESTRINGZ, 4326),
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH(shape))::numeric(8, 2)) STORED
)
INHERITS (
    asset
);

COMMENT ON COLUMN linear_assets.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN linear_assets.shape_length IS 'Length of the geometry associated with the feature';

COMMIT;
