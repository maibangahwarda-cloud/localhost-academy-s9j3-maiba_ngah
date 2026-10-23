BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "users" VALUES (1,'olivier','alice@mail.com');
INSERT INTO "users" VALUES (2,'Maiba','maiba@gmail.com');
INSERT INTO "users" VALUES (3,'Ngah','ngah@gmail.com');
INSERT INTO "users" VALUES (4,'Maiva ngah','ngag@gmail.com');
COMMIT;
