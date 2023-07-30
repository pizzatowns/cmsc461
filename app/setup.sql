CREATE TABLE IF NOT EXISTS customer_agencies (
    agency_id INTEGER PRIMARY KEY,
    agency_name VARCHAR(50) NOT NULL,
    agency_address VARCHAR(200) NOT NULL,
    agency_city VARCHAR(50) NOT NULL,
    agency_number INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS gsa_offices (
    agency_city VARCHAR(50) PRIMARY KEY,
    agency_id INTEGER NOT NULL,
    FOREIGN KEY (agency_id) REFERENCES customer_agencies (agency_id)
);

CREATE TABLE IF NOT EXISTS occupancy_agreements (
    rental_id VARCHAR(50) PRIMARY KEY,
    agency_id INTEGER NOT NULL,
    rent_amount REAL NOT NULL,
    rent_end_date DATE NOT NULL,
    FOREIGN KEY (agency_id) REFERENCES customer_agencies (agency_id)
);
