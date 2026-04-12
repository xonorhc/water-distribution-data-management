BEGIN;

CREATE TABLE IF NOT EXISTS polygonal_asset (
    shape GEOMETRY (POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA(shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER(shape))::numeric(8, 2)) STORED
)
INHERITS (
    asset
);

COMMENT ON COLUMN polygonal_asset.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN polygonal_asset.shape_area IS 'Calculated area of the feature geometry';
COMMENT ON COLUMN polygonal_asset.shape_length IS 'Calculated perimeter length of the feature geometry';

COMMIT;
