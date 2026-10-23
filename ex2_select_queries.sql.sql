BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "comments" (
	"id"	INTEGER,
	"post_id"	INTEGER NOT NULL,
	"author_name"	TEXT NOT NULL,
	"content"	TEXT NOT NULL,
	"created_at"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("post_id") REFERENCES "posts"("id")
);
CREATE TABLE IF NOT EXISTS "posts" (
	"id"	INTEGER,
	"user_id"	INTEGER NOT NULL,
	"title"	TEXT NOT NULL,
	"content"	TEXT NOT NULL,
	"status"	TEXT NOT NULL,
	"created_at"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("user_id") REFERENCES "users"("id")
);
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "posts" VALUES (1,1,'se former en SQL','aimer lire','livre','2000-09-12');
INSERT INTO "posts" VALUES (2,2,'etudier','savoir lire','calpin','2012-11_10');
INSERT INTO "posts" VALUES (3,1,'Maiba','se souvenir','relooker','2000-00-01');
INSERT INTO "posts" VALUES (4,2,'ngag','apporter aide','mauvaise demande','2020-03-11');
INSERT INTO "posts" VALUES (5,3,'carol','bonjour','merci','2006-06-31');
INSERT INTO "posts" VALUES (6,3,'etudier SQL','les bases','reviser','2001-11-23');
INSERT INTO "users" VALUES (1,'Alice','alice@mail.com');
INSERT INTO "users" VALUES (2,'Maiba','maiba@gmail.com');
INSERT INTO "users" VALUES (3,'Ngah','ngah@gmail.com');
INSERT INTO "users" VALUES (4,'Maiva ngah','ngag@gmail.com');
COMMIT;
