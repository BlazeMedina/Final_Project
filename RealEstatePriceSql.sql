-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XagqwL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "PropertyDetails" (
    "propertyLocation_id" int   NOT NULL,
    "propertyYear_id" int   NOT NULL,
    "squarefeet" int   NOT NULL,
    "bedroomCnt" int   NOT NULL,
    "bathroomCnt" int   NOT NULL,
    "propertyPrice" int   NOT NULL,
    "propertyEstimate" int   NOT NULL,
    "propertyType_id" int   NOT NULL,
    "propertyUnit_id" int   NOT NULL,
    CONSTRAINT "pk_PropertyDetails" PRIMARY KEY (
        "propertyLocation_id"
     )
);

CREATE TABLE "PropertyType" (
    "propertyType_id" int   NOT NULL,
    "propertyType_name" int   NOT NULL,
    CONSTRAINT "pk_PropertyType" PRIMARY KEY (
        "propertyType_id"
     )
);

CREATE TABLE "PropertyLocation" (
    "propertyLocation_id" int   NOT NULL,
    "latitude" int   NOT NULL,
    "longitude" int   NOT NULL,
    "zipcode" int   NOT NULL,
    "city" varchar(40)   NOT NULL,
    "neighborhood" varchar(100)   NOT NULL,
    "county" varchar(100)   NOT NULL,
    "state" varchar(50)   NOT NULL,
    CONSTRAINT "pk_PropertyLocation" PRIMARY KEY (
        "propertyLocation_id"
     )
);

CREATE TABLE "PropertyYear" (
    "propertyYear_id" int   NOT NULL,
    "propertyYear" int   NOT NULL,
    CONSTRAINT "pk_PropertyYear" PRIMARY KEY (
        "propertyYear_id"
     )
);

CREATE TABLE "PropertyUnit" (
    "propertyUnit_id" int   NOT NULL,
    "propertyUnit" int   NOT NULL,
    CONSTRAINT "pk_PropertyUnit" PRIMARY KEY (
        "propertyUnit_id"
     )
);

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyLocation_id" FOREIGN KEY("propertyLocation_id")
REFERENCES "PropertyLocation" ("propertyLocation_id");

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyYear_id" FOREIGN KEY("propertyYear_id")
REFERENCES "PropertyYear" ("propertyYear_id");

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyType_id" FOREIGN KEY("propertyType_id")
REFERENCES "PropertyType" ("propertyType_id");

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyUnit_id" FOREIGN KEY("propertyUnit_id")
REFERENCES "PropertyUnit" ("propertyUnit_id");

