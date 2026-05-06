-- TABLE: asset
CREATE SEQUENCE IF NOT EXISTS watersystem.asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS watersystem.asset (
    global_id bigint DEFAULT nextval('watersystem.asset_global_id_seq'),
    object_id integer,
    asset_id varchar(64),
    asset_type smallint NOT NULL DEFAULT 0,
    nickname varchar(64),
    lifecycle_status smallint NOT NULL DEFAULT 4,
    install_date date,
    inservice_date date,
    retired_date date,
    owned_by smallint DEFAULT 1,
    main_by smallint DEFAULT 1,
    notes varchar(2000),
    spatial_source smallint DEFAULT 0,
    spatial_confidence smallint DEFAULT 0,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),
    created_user varchar(64),
    created_date timestamptz,
    last_edited_user varchar(64),
    last_edited_date timestamptz,
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES domains.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES domains.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES domains.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES domains.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES domains.spatial_confidence (code)
);

ALTER SEQUENCE watersystem.asset_global_id_seq OWNED BY watersystem.asset.global_id;

