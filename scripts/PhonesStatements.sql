-- Aagam Ambavi
-- 10/17/2025
-- IT-202, Section 003
-- Phase 2 Assignment
-- ama346@njit.edu

CREATE TABLE Phones (
    PhoneID             INT(11)        NOT NULL,
    PhoneCode           VARCHAR(10)    NOT NULL   UNIQUE,
    PhoneName           VARCHAR(255)   NOT NULL,
    PhoneDescription    TEXT           NOT NULL,
    OS                  VARCHAR(255)   NOT NULL,
    storageCapacity     VARCHAR(255)   NOT NULL,
    PhoneTypeID         INT(11)        NOT NULL,
    PhoneWholesalePrice DECIMAL(10,2)  NOT NULL,
    PhoneListPrice      DECIMAL(10,2)  NOT NULL,
    DateTimeCreated     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DateTimeUpdated     TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (PhoneID)
);

INSERT INTO Phones (PhoneID, PhoneCode, PhoneName, PhoneDescription, OS, storageCapacity, PhoneTypeID, PhoneWholesalePrice, PhoneListPrice)
VALUES (1000, '17ProMax', 'iPhone 17 Pro Max', 'The iPhone 17 Pro Max is the latest iphone with the newest features. It comes with the phone and a usb-c charger cable. ', 'iOS', '256GB', 100, 899.00, 1199.00);

INSERT INTO Phones (PhoneID, PhoneCode, PhoneName, PhoneDescription, OS, storageCapacity, PhoneTypeID, PhoneWholesalePrice, PhoneListPrice)
VALUES (2000, 'S25Ultra', 'Samsung Galaxy s25 Ultra', 'The s25 Ultra is the latest samsung ultra phone model with the latest features. It comes with the phone and a usb-c charger cable. ', 'Android', '256GB', 200, 999.00, 1299.00);

SELECT * from Phones;