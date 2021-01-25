-- The Caribbean Coffee Company
-- Copyright � 2018 NextStep IT Training. All rights reserved.
--
-- SQL Server version adapted from the File generated with SQLiteStudio v3.1.1 on Sun Nov 11 19:11:13 2018.
-- The script is modified to support SQL Server, and to put the tables into the tc3 schema.
--
-- Text encoding used: UTF-8
--

USE TC3;

BEGIN TRANSACTION;

-- Drop tables in backwards order if they exist; they need to be created in order so that the
-- foreign keys can be created

DROP TABLE IF EXISTS tc3.Sales_Order_Items;
DROP TABLE IF EXISTS tc3.Sales_Orders;
DROP TABLE IF EXISTS tc3.Products;
DROP TABLE IF EXISTS tc3.Product_Types;
DROP TABLE IF EXISTS tc3.Payment_Types;
DROP TABLE IF EXISTS tc3.Customer_Cards;
DROP TABLE IF EXISTS tc3.Customers;
DROP TABLE IF EXISTS tc3.Country_Codes;
DROP SCHEMA IF EXISTS tc3;
GO

CREATE SCHEMA tc3;
GO

-- Table: tc3.Country_Codes

CREATE TABLE tc3.Country_Codes (
    country_code_id VARCHAR (2)  PRIMARY KEY,
    name            VARCHAR (64) NOT NULL
);

INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AF', 'Afghanistan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AX', '�land Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AL', 'Albania');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('DZ', 'Algeria');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AS', 'American Samoa');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AD', 'Andorra');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AO', 'Angola');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AI', 'Anguilla');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AQ', 'Antarctica');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AG', 'Antigua and Barbuda');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AR', 'Argentina');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AM', 'Armenia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AW', 'Aruba');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AU', 'Australia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AT', 'Austria');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AZ', 'Azerbaijan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BH', 'Bahrain');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BS', 'Bahamas');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BD', 'Bangladesh');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BB', 'Barbados');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BY', 'Belarus');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BE', 'Belgium');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BZ', 'Belize');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BJ', 'Benin');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BM', 'Bermuda');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BT', 'Bhutan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BO', 'Bolivia, Plurinational State of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BQ', 'Bonaire, Sint Eustatius and Saba');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BW', 'Botswana');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BV', 'Bouvet Island');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BR', 'Brazil');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IO', 'British Indian Ocean Territory');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BN', 'Brunei Darussalam');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BG', 'Bulgaria');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BF', 'Burkina Faso');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BI', 'Burundi');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KH', 'Cambodia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CM', 'Cameroon');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CA', 'Canada');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CV', 'Cape Verde');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KY', 'Cayman Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CF', 'Central African Republic');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TD', 'Chad');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CL', 'Chile');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CN', 'China');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CX', 'Christmas Island');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CO', 'Colombia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KM', 'Comoros');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CG', 'Congo');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CD', 'Congo, the Democratic Republic of the');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CK', 'Cook Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CR', 'Costa Rica');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CI', 'C�te d''Ivoire');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('HR', 'Croatia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CU', 'Cuba');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CW', 'Cura�ao');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CY', 'Cyprus');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CZ', 'Czech Republic');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('DK', 'Denmark');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('DJ', 'Djibouti');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('DM', 'Dominica');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('DO', 'Dominican Republic');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('EC', 'Ecuador');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('EG', 'Egypt');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SV', 'El Salvador');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ER', 'Eritrea');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('EE', 'Estonia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ET', 'Ethiopia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('FO', 'Faroe Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('FJ', 'Fiji');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('FI', 'Finland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('FR', 'France');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GF', 'French Guiana');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PF', 'French Polynesia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TF', 'French Southern Territories');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GA', 'Gabon');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GM', 'Gambia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GE', 'Georgia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('DE', 'Germany');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GH', 'Ghana');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GI', 'Gibraltar');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GR', 'Greece');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GL', 'Greenland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GD', 'Grenada');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GP', 'Guadeloupe');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GU', 'Guam');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GT', 'Guatemala');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GG', 'Guernsey');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GN', 'Guinea');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GW', 'Guinea-Bissau');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GY', 'Guyana');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('HT', 'Haiti');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('HM', 'Heard Island and McDonald Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VA', 'Holy See (Vatican City State)');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('HN', 'Honduras');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('HK', 'Hong Kong');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('HU', 'Hungary');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IS', 'Iceland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IN', 'India');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ID', 'Indonesia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IR', 'Iran, Islamic Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IQ', 'Iraq');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IE', 'Ireland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IM', 'Isle of Man');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IL', 'Israel');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('IT', 'Italy');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('JM', 'Jamaica');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('JP', 'Japan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('JE', 'Jersey');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('JO', 'Jordan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KZ', 'Kazakhstan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KE', 'Kenya');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KI', 'Kiribati');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KP', 'Korea, Democratic People''s Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KR', 'Korea, Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KW', 'Kuwait');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KG', 'Kyrgyzstan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LA', 'Lao People''s Democratic Republic');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LV', 'Latvia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LB', 'Lebanon');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LS', 'Lesotho');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LR', 'Liberia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LY', 'Libya');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LI', 'Liechtenstein');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LT', 'Lithuania');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LU', 'Luxembourg');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MO', 'Macao');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MK', 'Macedonia, the Former Yugoslav Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MG', 'Madagascar');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MW', 'Malawi');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MY', 'Malaysia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MV', 'Maldives');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ML', 'Mali');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MT', 'Malta');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MH', 'Marshall Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MQ', 'Martinique');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MR', 'Mauritania');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MU', 'Mauritius');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('YT', 'Mayotte');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MX', 'Mexico');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('FM', 'Micronesia, Federated States of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MD', 'Moldova, Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MC', 'Monaco');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MN', 'Mongolia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ME', 'Montenegro');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MS', 'Montserrat');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MA', 'Morocco');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MZ', 'Mozambique');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MM', 'Myanmar');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NA', 'Namibia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NR', 'Nauru');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NP', 'Nepal');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NL', 'Netherlands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NC', 'New Caledonia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NZ', 'New Zealand');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NI', 'Nicaragua');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NE', 'Niger');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NG', 'Nigeria');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NU', 'Niue');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NF', 'Norfolk Island');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('NO', 'Norway');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('OM', 'Oman');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PK', 'Pakistan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PW', 'Palau');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PS', 'Palestine, State of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PA', 'Panama');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PG', 'Papua New Guinea');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PY', 'Paraguay');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PE', 'Peru');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PH', 'Philippines');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PN', 'Pitcairn');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PL', 'Poland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PT', 'Portugal');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PR', 'Puerto Rico');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('QA', 'Qatar');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('RE', 'R�union');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('RO', 'Romania');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('RU', 'Russian Federation');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('RW', 'Rwanda');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('BL', 'Saint Barth�lemy');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SH', 'Saint Helena, Ascension and Tristan da Cunha');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('KN', 'Saint Kitts and Nevis');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LC', 'Saint Lucia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('MF', 'Saint Martin (French part)');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('PM', 'Saint Pierre and Miquelon');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VC', 'Saint Vincent and the Grenadines');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('WS', 'Samoa');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SM', 'San Marino');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ST', 'Sao Tome and Principe');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SA', 'Saudi Arabia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SN', 'Senegal');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('RS', 'Serbia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SC', 'Seychelles');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SL', 'Sierra Leone');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SG', 'Singapore');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SX', 'Sint Maarten (Dutch part)');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SK', 'Slovakia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SI', 'Slovenia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SB', 'Solomon Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SO', 'Somalia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ZA', 'South Africa');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SS', 'South Sudan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ES', 'Spain');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('LK', 'Sri Lanka');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SD', 'Sudan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SR', 'Suriname');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SJ', 'Svalbard and Jan Mayen');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SZ', 'Swaziland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SE', 'Sweden');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('CH', 'Switzerland');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('SY', 'Syrian Arab Republic');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TW', 'Taiwan, Province of China');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TJ', 'Tajikistan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TZ', 'Tanzania, United Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TH', 'Thailand');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TL', 'Timor-Leste');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TG', 'Togo');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TK', 'Tokelau');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TO', 'Tonga');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TT', 'Trinidad and Tobago');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TN', 'Tunisia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TR', 'Turkey');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TM', 'Turkmenistan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TC', 'Turks and Caicos Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('TV', 'Tuvalu');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('UG', 'Uganda');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('UA', 'Ukraine');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('AE', 'United Arab Emirates');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('GB', 'United Kingdom');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('US', 'United States');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('UM', 'United States Minor Outlying Islands');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('UY', 'Uruguay');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('UZ', 'Uzbekistan');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VU', 'Vanuatu');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VE', 'Venezuela, Bolivarian Republic of');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VN', 'Viet Nam');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VG', 'Virgin Islands, British');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('VI', 'Virgin Islands, U.S.');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('WF', 'Wallis and Futuna');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('EH', 'Western Sahara');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('YE', 'Yemen');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ZM', 'Zambia');
INSERT INTO tc3.Country_Codes (country_code_id, name) VALUES ('ZW', 'Zimbabwe');

-- Table: Customers

CREATE TABLE tc3.Customers (
    customer_id     INTEGER      PRIMARY KEY IDENTITY,
    email           VARCHAR (32) UNIQUE
                                 NOT NULL,
    password        VARCHAR (64) NOT NULL,
    first_name      VARCHAR (20) NOT NULL,
    last_name       VARCHAR (20) NOT NULL,
    street          VARCHAR (20) NOT NULL,
    city            VARCHAR (20) NOT NULL,
    state_province  VARCHAR (20) NOT NULL,
    postal_code     VARCHAR (20),
    country_code_id VARCHAR (2)  REFERENCES tc3.Country_Codes (country_code_id),
	birthdate		DATE,
	confirmation	VARCHAR (64)
);


-- Table: Customer_Cards

CREATE TABLE tc3.Customer_Cards (
    customer_card_id INTEGER      PRIMARY KEY IDENTITY,
    customer_id      INTEGER      REFERENCES tc3.Customers (customer_id)
                                  NOT NULL,
    preferred        BIT,
    number           VARCHAR (20) NOT NULL,
    expires          DATE         NOT NULL,
    ccd              VARCHAR (4)  NOT NULL
);


-- Table: Payment_Types

CREATE TABLE tc3.Payment_Types (
    payment_type_id INTEGER      PRIMARY KEY IDENTITY,
    name            VARCHAR (20) NOT NULL
);

SET IDENTITY_INSERT tc3.Payment_Types ON;

INSERT INTO tc3.Payment_Types (
                              payment_type_id,
                              name
                          )
                          VALUES (
                              1,
                              'Cash'
                          );

INSERT INTO tc3.Payment_Types (
                              payment_type_id,
                              name
                          )
                          VALUES (
                              2,
                              'Credit/Debit Card'
                          );

						  
SET IDENTITY_INSERT tc3.Payment_Types OFF;


-- Table: Product_Types

CREATE TABLE tc3.Product_Types (
    product_type_id INTEGER PRIMARY KEY IDENTITY,
    name            VARCHAR (20)  UNIQUE
                            NOT NULL
);

SET IDENTITY_INSERT tc3.Product_Types ON;

INSERT INTO tc3.Product_Types (
                              product_type_id,
                              name
                          )
                          VALUES (
                              1,
                              'Pastry'
                          );

INSERT INTO tc3.Product_Types (
                              product_type_id,
                              name
                          )
                          VALUES (
                              2,
                              'Beverage'
                          );

SET IDENTITY_INSERT tc3.Product_Types OFF;


-- Table: Products

CREATE TABLE tc3.Products (
    product_id      INTEGER PRIMARY KEY IDENTITY,
    product_type_id INTEGER REFERENCES tc3.Product_Types (product_type_id) 
                            NOT NULL,
    name            VARCHAR (128) NOT NULL,
    price           DECIMAL (7, 2) NOT NULL
);

SET IDENTITY_INSERT tc3.Products ON;

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         1,
                         2,
                         'Juan Valdez Reserve Cafe - Small',
                         1.85
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         2,
                         2,
                         'Cafe Mocha - Small',
                         3.45
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         3,
                         2,
                         'Macchiatto - Small',
                         2.89
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         4,
                         2,
                         'Hot Chocolate - Small',
                         2.15
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         5,
                         1,
                         'Banana Nut Bread',
                         2.75
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         6,
                         1,
                         'Cheese Danish',
                         2.45
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         7,
                         1,
                         'Butter Croissant',
                         2.45
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         8,
                         2,
                         'Juan Valdez Reserve Cafe - Medium',
                         2.15
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         9,
                         2,
                         'Juan Valdez Reserve Cafe - Large',
                         2.45
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         10,
                         2,
                         'Cafe Mocha - Medium',
                         4.15
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         11,
                         2,
                         'Cafe Mocha - Large',
                         4.65
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         12,
                         2,
                         'Macchiatto - Medium',
                         3.39
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         13,
                         2,
                         'Macchiatto - Large',
                         4.65
                     );

INSERT INTO tc3.Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         14,
                         2,
                         'Hot Chocolate - Medium',
                         2.35
                     );

INSERT INTO tc3. Products (
                         product_id,
                         product_type_id,
                         name,
                         price
                     )
                     VALUES (
                         15,
                         2,
                         'Hot Chocolate - Large',
                         2.55
                     );

SET IDENTITY_INSERT tc3.Products OFF;


-- Table: Sales_Orders

CREATE TABLE tc3.Sales_Orders (
    sales_order_id  INTEGER     PRIMARY KEY IDENTITY,
    order_date      DATETIME NOT NULL,
    customer_id     INTEGER     REFERENCES tc3.Customers (customer_id),
    total           DECIMAL (7, 2),
    payment_type_id INTEGER     REFERENCES tc3.Payment_Types (payment_type_id),
    card_number     VARCHAR (4),
    card_expires    DATE,
	filled			DATETIME
);


-- Table: Sales_Order_Items

CREATE TABLE tc3.Sales_Order_Items (
    sales_order_item_id INTEGER PRIMARY KEY IDENTITY,
    sales_order_id      INTEGER REFERENCES tc3.Sales_Orders (sales_order_id) 
                                NOT NULL,
    product_id          INTEGER REFERENCES tc3.Products
                                NOT NULL,
    quantity            INTEGER,
    price               DECIMAL (7, 2)
);


-- Index: product_name
DROP INDEX IF EXISTS product_name ON tc3.Product_Types;

CREATE UNIQUE INDEX product_name ON tc3.Product_Types (
    name
);


-- Index: product_type
DROP INDEX IF EXISTS product_type ON Products;

CREATE INDEX product_type ON tc3.Products (
    product_type_id
);

GO

COMMIT TRANSACTION;