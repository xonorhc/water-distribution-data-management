CREATE TABLE IF NOT EXISTS linear_assets (
    shape geometry(LinestringZ, 4326) -- Geometric representation of the feature
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH (shape))::numeric(8, 2)) STORED, -- Length of the geometry associated with the feature
)
INHERITS (
    asset
);

