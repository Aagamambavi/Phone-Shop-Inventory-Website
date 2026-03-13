-- Aagam Ambavi
-- 10/17/2025
-- IT-202, Section 003
-- Phase 2 Assignment
-- ama346@njit.edu

CREATE TABLE PhoneTypes (
    PhoneTypeID     INT(11)        NOT NULL,
    PhoneTypeCode   VARCHAR(10)    NOT NULL   UNIQUE,
    PhoneTypeName   VARCHAR(255)   NOT NULL,
    releaseYear     INT(4)         NOT NULL,
    DateTimeCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DateTimeUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (PhoneTypeID)
);

INSERT INTO PhoneTypes (PhoneTypeID, PhoneTypeCode, PhoneTypeName, releaseYear)
VALUES (100, 'SMART', 'Smart Phone', 2025);

INSERT INTO PhoneTypes (PhoneTypeID, PhoneTypeCode, PhoneTypeName, releaseYear)
VALUES (200, 'FLIP', 'Flip Phone', 2024);

INSERT INTO PhoneTypes (PhoneTypeID, PhoneTypeCode, PhoneTypeName, releaseYear)
VALUES (300, 'FEAT', 'Feature Phone', 2023);

SELECT * from PhoneTypes;