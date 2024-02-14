CREATE TABLE parameters (
    name VARCHAR PRIMARY KEY NOT NULL,
    value VARCHAR NOT NULL
);

CREATE TABLE pending_covenants (
    output_script BLOB PRIMARY KEY NOT NULL,
    internal_key BLOB NOT NULL,
    preimage BLOB NOT NULL,
    swap_tree VARCHAR NOT NULL,
    address BLOB NOT NULL,
    blinding_key BLOB,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
