-- NOTE: Fixed limitation of the inheritance feature
DO $$
DECLARE
    mytables record;
BEGIN
    FOR mytables IN
    SELECT
        table_schema,
        table_name
    FROM
        information_schema.tables
    WHERE
        table_schema = 'water_system'
        AND table_name NOT LIKE ('asset')
            LOOP
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD PRIMARY KEY (global_id);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (lifecycle_status) REFERENCES domains.lifecycle (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (owned_by) REFERENCES domains.asset_owner (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (main_by) REFERENCES domains.asset_manager (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (spatial_source) REFERENCES domains.spatial_source (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (spatial_confidence) REFERENCES domains.spatial_confidence (code);', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$$;

