CREATE DATABASE "UISA"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
       CONNECTION LIMIT = -1;

CREATE TABLE "Users" (
	"id" serial NOT NULL,
	"first_name" character varying NOT NULL,
	"surname" character varying NOT NULL,
	"gender" bool NOT NULL,
	"avatar" character varying,
	CONSTRAINT "Users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "CarsOfUsers" (
	"id" serial NOT NULL,
	"user" bigint NOT NULL,
	"model" bigint NOT NULL,
	"year_by" int2 NOT NULL,
	CONSTRAINT "CarsOfUsers_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "LoginOfUsers" (
	"id" bigint NOT NULL,
	"login" character varying NOT NULL UNIQUE,
	"password" character varying(36) NOT NULL
) WITH (
  OIDS=FALSE
);

CREATE TABLE "STO" (
	"id" serial NOT NULL,
	"name" character varying NOT NULL,
	"adress" character varying NOT NULL,
	"position_lat" double,
	"position_lon" double,
	CONSTRAINT "STO_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Orders" (
	"id" serial NOT NULL,
	"sto" bigint NOT NULL,
	"car" bigint NOT NULL,
	"time_start" timestamp with time zone NOT NULL,
	"time_end" timestamp with time zone NOT NULL,
	"type_orders" bigint NOT NULL,
	CONSTRAINT "Orders_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "TypeOrder" (
	"id" serial NOT NULL,
	"type_repair" character varying NOT NULL UNIQUE,
	CONSTRAINT "TypeOrder_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "ModelsCars" (
	"id" serial NOT NULL,
	"model" character varying NOT NULL,
	"brand" bigint NOT NULL,
	CONSTRAINT "ModelsCars_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Brands" (
	"id" serial NOT NULL,
	"brand" character varying NOT NULL UNIQUE,
	CONSTRAINT "Brands_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "CarsOfUsers" ADD CONSTRAINT "CarsOfUsers_fk0" 
FOREIGN KEY ("user") REFERENCES "Users"("id");
ALTER TABLE "CarsOfUsers" ADD CONSTRAINT "CarsOfUsers_fk1" 
FOREIGN KEY ("model") REFERENCES "ModelsCars"("id");
ALTER TABLE "LoginOfUsers" ADD CONSTRAINT "LoginOfUsers_fk0" 
FOREIGN KEY ("id") REFERENCES "Users"("id");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk0" 
FOREIGN KEY ("sto") REFERENCES "STO"("id");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk1" 
FOREIGN KEY ("car") REFERENCES "CarsOfUsers"("id");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk2" 
FOREIGN KEY ("type_orders") REFERENCES "TypeOrder"("id");
ALTER TABLE "ModelsCars" ADD CONSTRAINT "ModelsCars_fk0" 
FOREIGN KEY ("brand") REFERENCES "Brands"("id");

CREATE TABLE "Orders" (
	"id" serial NOT NULL,
	"sto" bigint NOT NULL,
	"car" bigint NOT NULL,
	"time_start" timestamp with time zone NOT NULL,
	"time_end" timestamp with time zone NOT NULL,
	"type_orders" bigint NOT NULL,
	CONSTRAINT "Orders_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "TypeOrder" (
	"id" serial NOT NULL,
	"type_repair" character varying NOT NULL UNIQUE,
	CONSTRAINT "TypeOrder_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "CarsOfUsers" ADD CONSTRAINT "CarsOfUsers_fk0" 
FOREIGN KEY ("user") REFERENCES "Users"("id");
ALTER TABLE "LoginOfUsers" ADD CONSTRAINT "LoginOfUsers_fk0" 
FOREIGN KEY ("id") REFERENCES "Users"("id");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk0" 
FOREIGN KEY ("sto") REFERENCES "STO"("id");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk1" 
FOREIGN KEY ("car") REFERENCES "CarsOfUsers"("id");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk2" 
FOREIGN KEY ("type_orders") REFERENCES "TypeOrder"("id");


