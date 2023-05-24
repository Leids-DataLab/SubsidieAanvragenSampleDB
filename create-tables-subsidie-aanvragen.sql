-- Je moet in een apart script onderstaand statement runnen.
-- CREATE SCHEMA test;

-- Onderstaande statements zijn handig als je je database opnieuw wilt maken.
/*
DELETE FROM test.Aanvraag;
DELETE FROM test.Aanvrager;
DELETE FROM test.Regeling;
DELETE FROM test.RegelingType;
DELETE FROM test.Status;

DROP TABLE test.Aanvraag;
DROP TABLE test.Aanvrager;
DROP TABLE test.Regeling;
DROP TABLE test.RegelingType;
DROP TABLE test.Status;
*/

-- Tabel Aanvrager
CREATE TABLE test.Aanvrager (
  aanvragerID INT PRIMARY KEY,
  BSN VARCHAR(9) NOT NULL UNIQUE
);

-- Tabel Status
CREATE TABLE test.Status (
  code NVARCHAR(255) PRIMARY KEY,
  naam NVARCHAR(255) NOT NULL
);

-- Tabel RegelingType
CREATE TABLE test.RegelingType (
  code NVARCHAR(255) PRIMARY KEY,
  naam NVARCHAR(255) NOT NULL
);

-- Tabel Regeling
CREATE TABLE test.Regeling (
  code NVARCHAR(255) PRIMARY KEY,
  naam NVARCHAR(255) NOT NULL,
  regelingTypeCode NVARCHAR(255),
  FOREIGN KEY (regelingTypeCode) REFERENCES test.RegelingType(code)
);

-- Tabel Aanvraag
CREATE TABLE test.Aanvraag (
    aanvraagNummer CHAR(36) PRIMARY KEY,
    tijdstipAangevraagd DATETIME2 NOT NULL,
    tijdstipAfgehandeld DATETIME2,
    bedragAangevraagd DECIMAL(10, 2) NOT NULL,
    bedragAfgehandeld DECIMAL(10, 2),
    aanvragerID INT,
    regelingCode NVARCHAR(255),
    statusCode NVARCHAR(255),
    FOREIGN KEY (aanvragerID) REFERENCES test.Aanvrager(aanvragerID),
    FOREIGN KEY (regelingCode) REFERENCES test.Regeling(code),
    FOREIGN KEY (statusCode) REFERENCES test.Status(code)
);


