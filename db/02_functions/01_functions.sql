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
