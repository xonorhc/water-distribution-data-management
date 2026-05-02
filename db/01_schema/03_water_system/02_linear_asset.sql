-- TABLE: linear_asset
CREATE TABLE IF NOT EXISTS water_system.linear_asset (
    shape geometry(LINESTRINGZ, 4326),
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH (shape))::numeric(8, 2)) STORED
)
INHERITS (
    water_system.asset
);

