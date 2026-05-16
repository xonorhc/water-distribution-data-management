-- TABLE: position_source_type
INSERT INTO domains.position_source_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'User defined'),
    (2, 'Integrated (System) Location Provider'),
    (3, 'External GNSS Receiver'),
    (4, 'Network Location Provider'),
    (5, 'Snapped');
