CREATE TABLE IF NOT EXISTS pipeline_valve_status (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO pipeline_valve_status (description)
VALUES
    ('Closed'),
    ('Open') :
