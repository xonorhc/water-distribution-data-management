-- TABLE: asset
CREATE SEQUENCE IF NOT EXISTS water_system.asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS water_system.asset (
    global_id bigint DEFAULT nextval('water_system.asset_global_id_seq'),
    object_id integer,
    asset_id varchar(64),
    asset_type smallint,
    nickname varchar(64),
    lifecycle_status smallint NOT NULL DEFAULT 4,
    install_date date,
    inservice_date date,
    retired_date date,
    owned_by smallint DEFAULT 1,
    main_by smallint DEFAULT 1,
    notes varchar(2000),
    spatial_source smallint,
    spatial_confidence smallint,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),
    created_user varchar(64),
    created_date timestamptz,
    last_edited_user varchar(64),
    last_edited_date timestamptz,
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
);

ALTER SEQUENCE water_system.asset_global_id_seq OWNED BY water_system.asset.global_id;


