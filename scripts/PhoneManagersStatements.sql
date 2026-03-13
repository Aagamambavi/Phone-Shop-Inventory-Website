-- Aagam Ambavi
-- 10/3/2025
-- IT-202, Section 003
-- Phase 1 Assignment
-- ama346@njit.edu

CREATE TABLE PhoneManagers (
 PhoneManagerID  INT(11)        NOT NULL   AUTO_INCREMENT,
 emailAddress        VARCHAR(255)   NOT NULL   UNIQUE,
 password            VARCHAR(64)    NOT NULL,
 pronouns            VARCHAR(60)    NOT NULL,
 firstName           VARCHAR(60)    NOT NULL,
 lastName            VARCHAR(60)    NOT NULL,
 DateTimeCreated     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 DateTimeUpdated     TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (PhoneManagerID)
);

INSERT INTO PhoneManagers
(emailAddress, password, pronouns, firstName, lastName)
VALUES
('JohnSmith@phonestore.com', SHA2('passwordForJohn', 256), 'He/Him', 'John', 'Smith');

INSERT INTO PhoneManagers
(emailAddress, password, pronouns, firstName, lastName)
VALUES
('DavidBrown@phonestore.com', SHA2('passwordForDavid', 256), 'He/Him', 'David', 'Brown');

INSERT INTO PhoneManagers
(emailAddress, password, pronouns, firstName, lastName)
VALUES
('SarahJohnson@phonestore.com', SHA2('passwordForSarah', 256), 'She/Her', 'Sarah', 'Johnson');
