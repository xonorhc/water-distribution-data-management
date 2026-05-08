-- TABLE: service_territory
CREATE TABLE IF NOT EXISTS watersystem.service_territory (
    object_id serial,
    nickname varchar(64),
    created_user varchar(64),
    created_date timestamptz,
    last_edited_user varchar(64),
    last_edited_date timestamptz,
    shape geometry(polygon, :SRID),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED,
    PRIMARY KEY (object_id)
);

CREATE INDEX ON watersystem.service_territory (shape_area);
CREATE INDEX ON watersystem.service_territory (shape_length);
CREATE INDEX ON watersystem.service_territory USING gist (shape);

