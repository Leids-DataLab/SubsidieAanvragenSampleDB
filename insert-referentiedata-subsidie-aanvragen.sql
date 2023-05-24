-- Stamgegevens voor tabel Status
INSERT INTO test.Status (code, naam)
VALUES ('IB', 'In behandeling'), ('G', 'Geweigerd'), ('T', 'Toegekend');

-- Stamgegevens voor tabel RegelingType
INSERT INTO test.RegelingType (code, naam)
VALUES ('BTW', 'BTW teruggaaf'), ('SUB', 'Subsidie');

-- Stamgegevens voor tabel Regeling
INSERT INTO test.Regeling (code, naam, regelingTypeCode)
VALUES ('ZON', 'Zonnepanelen', 'BTW'), ('ISO', 'Isolatie', 'SUB'), ('WP', 'Warmtepomp', 'SUB');


