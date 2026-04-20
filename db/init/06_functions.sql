-- FUNCTION: created_user
CREATE OR REPLACE FUNCTION water_system.created_user ()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.created_user := CURRENT_USER;
    NEW.created_date := CURRENT_TIMESTAMP;
    RETURN new;
END;
$body$;

-- PERF: TRIGGER: created_user
CREATE OR REPLACE FUNCTION pg_temp.foo (_v1 text)
    RETURNS void
    AS $func$
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
        table_schema = _v1
        AND table_name NOT LIKE ('type_%')
            LOOP
                EXECUTE format('ALTER TABLE %2$I.%1$I ADD COLUMN IF NOT EXISTS created_date timestampz, ADD COLUMN IF NOT EXISTS created_user varchar(64);', mytables.table_name, mytables.table_schema);
                EXECUTE format('CREATE OR REPLACE TRIGGER created_user BEFORE INSERT ON %2$I.%1$I FOR EACH ROW EXECUTE FUNCTION %2$I.created_user ();', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$func$
LANGUAGE plpgsql;

SELECT
    pg_temp.foo ('water_system');

DROP FUNCTION IF EXISTS pg_temp.foo (_v1 text);

-- FUNCTION: last_edited_user
CREATE OR REPLACE FUNCTION water_system.last_edited_user ()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.created_user := CURRENT_USER;
    NEW.created_date := CURRENT_TIMESTAMP;
    RETURN new;
END;
$body$;

-- PERF: TRIGGER: last_edited_user
CREATE OR REPLACE FUNCTION pg_temp.foo (_v1 text)
    RETURNS void
    AS $func$
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
        table_schema = _v1
        AND table_name NOT LIKE ('tipo_%')
            LOOP
                EXECUTE format('ALTER TABLE %2$I.%1$I ADD COLUMN IF NOT EXISTS created_date timestamp, ADD COLUMN IF NOT EXISTS created_user varchar(20);', mytables.table_name, mytables.table_schema);
                EXECUTE format('CREATE OR REPLACE TRIGGER last_edited_user BEFORE UPDATE ON %2$I.%1$I FOR EACH ROW EXECUTE FUNCTION %2$I.last_edited_user ();', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$func$
LANGUAGE plpgsql;

SELECT
    pg_temp.foo ('water_system');

DROP FUNCTION IF EXISTS pg_temp.foo (_v1 text);

