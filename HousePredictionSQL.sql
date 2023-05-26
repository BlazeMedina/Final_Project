-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XagqwL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "PropertyDetails" (
    "propertyLocation_id" int   NOT NULL,
    "props.bedrooms" int   NOT NULL,
    "props.bathrooms" int   NOT NULL,
    "props.price" int   NOT NULL,
    "props.variableData" varchar(100)   NOT NULL,
    "props.zestimate" int   NOT NULL,
    "props.rentestimate" int   NOT NULL,
    "props.livingArea" int   NOT NULL,
    "props.lotAreaValue" int   NOT NULL,
    "propertyType_id" int   NOT NULL,
    "propertyUnit_id" int   NOT NULL,
    CONSTRAINT "pk_PropertyDetails" PRIMARY KEY (
        "propertyLocation_id"
     )
);



CREATE TABLE "PropertyLocation" (
    "propertyLocation_id" int   NOT NULL,
    "props.address" varchar(100)   NOT NULL,
	 "props.latitude" double precision,
    "props.longitude" double precision,
    "props.zipcode" int   NOT NULL,
    "props.zpid" int   NOT NULL,
    "props.city" varchar(40)   NOT NULL,
    "props.county" varchar(100)   NOT NULL,
    "props.state" varchar(50)   NOT NULL,
    "props.country" varchar(50)   NOT NULL,
    CONSTRAINT "pk_PropertyLocation" PRIMARY KEY (
        "propertyLocation_id"
     )
);

CREATE TABLE "PropertyUnit" (
    "propertyUnit_id" int   NOT NULL,
    "props.LotAreaUnit" varchar(20)   NOT NULL,
    CONSTRAINT "pk_PropertyUnit" PRIMARY KEY (
        "propertyUnit_id"
     )
);

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyLocation_id" FOREIGN KEY("propertyLocation_id")
REFERENCES "PropertyLocation" ("propertyLocation_id");

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyType_id" FOREIGN KEY("propertyType_id")
REFERENCES "PropertyType" ("propertyType_id");

ALTER TABLE "PropertyDetails" ADD CONSTRAINT "fk_PropertyDetails_propertyUnit_id" FOREIGN KEY("propertyUnit_id")
REFERENCES "PropertyUnit" ("propertyUnit_id");

