-- Lumina database schema

CREATE TABLE materials (
    material_id SERIAL PRIMARY KEY,
    material_name VARCHAR(100) NOT NULL
);

CREATE TABLE collections (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(100) NOT NULL,
    launch_date DATE
);

CREATE TABLE sources (
    source_id SERIAL PRIMARY KEY,
    source_name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    sku VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(150) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    size INTEGER,
    material_id INTEGER REFERENCES materials(material_id),
    price DECIMAL(10, 2) NOT NULL,
    source_id INTEGER REFERENCES sources(source_id),
    description TEXT,
    collection_id INTEGER REFERENCES collections(collection_id),
    date_added DATE DEFAULT CURRENT_DATE
);