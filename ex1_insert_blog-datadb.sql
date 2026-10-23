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
INSERT INTO "comments" VALUES (1,1,'raphael','merci','2024-11-10');
INSERT INTO "comments" VALUES (2,2,'Maiba','bravo','2005-06-10');
INSERT INTO "comments" VALUES (3,3,'carol','sympa','2005-09-10');
INSERT INTO "comments" VALUES (4,4,'Maibba','cool','222-12-18');
INSERT INTO "comments" VALUES (5,3,'dylan','très bien','2024-12-12');
INSERT INTO "comments" VALUES (6,3,'Aimer','du  nouveau','2000-02-07');
INSERT INTO "comments" VALUES (7,4,'NGAG','tu assure','2009-11-11');
INSERT INTO "comments" VALUES (8,1,'carel','intérréssant','222-07-07');
INSERT INTO "comments" VALUES (9,1,'raphael','merci','2024-11-10');
INSERT INTO "comments" VALUES (10,2,'Maiba','bravo','2005-06-10');
INSERT INTO "comments" VALUES (11,3,'carol','sympa','2005-09-10');
INSERT INTO "comments" VALUES (12,4,'Maibba','cool','222-12-18');
INSERT INTO "comments" VALUES (13,3,'dylan','très bien','2024-12-12');
INSERT INTO "comments" VALUES (14,3,'Aimer','du  nouveau','2000-02-07');
INSERT INTO "comments" VALUES (15,4,'NGAG','tu assure','2009-11-11');
INSERT INTO "comments" VALUES (16,1,'carel','intérréssant','222-07-07');
INSERT INTO "posts" VALUES (1,1,'se former en SQL','aimer lire','livre','2000-09-12');
INSERT INTO "posts" VALUES (2,2,'etudier','savoir lire','calpin','2012-11_10');
INSERT INTO "posts" VALUES (3,1,'Maiba','se souvenir','relooker','2000-00-01');
INSERT INTO "posts" VALUES (4,2,'ngag','apporter aide','mauvaise demande','2020-03-11');
INSERT INTO "posts" VALUES (5,3,'carol','bonjour','merci','2006-06-31');
INSERT INTO "posts" VALUES (6,3,'etudier SQL','les bases','reviser','2001-11-23');
INSERT INTO "posts" VALUES (7,1,'se former en SQL','aimer lire','livre','2000-09-12');
INSERT INTO "posts" VALUES (8,2,'etudier','savoir lire','calpin','2012-11_10');
INSERT INTO "posts" VALUES (9,1,'Maiba','se souvenir','relooker','2000-00-01');
INSERT INTO "posts" VALUES (10,2,'ngag','apporter aide','mauvaise demande','2020-03-11');
INSERT INTO "posts" VALUES (11,3,'carol','bonjour','merci','2006-06-31');
INSERT INTO "posts" VALUES (12,3,'etudier SQL','les bases','reviser','2001-11-23');
INSERT INTO "posts" VALUES (13,1,'se former en SQL','aimer lire','livre','2000-09-12');
INSERT INTO "posts" VALUES (14,2,'etudier','savoir lire','calpin','2012-11_10');
INSERT INTO "posts" VALUES (15,1,'Maiba','se souvenir','relooker','2000-00-01');
INSERT INTO "posts" VALUES (16,2,'ngag','apporter aide','mauvaise demande','2020-03-11');
INSERT INTO "posts" VALUES (17,3,'carol','bonjour','merci','2006-06-31');
INSERT INTO "posts" VALUES (18,3,'etudier SQL','les bases','reviser','2001-11-23');
INSERT INTO "users" VALUES (1,'Alice','alice@mail.com');
INSERT INTO "users" VALUES (2,'Maiba','maiba@gmail.com');
INSERT INTO "users" VALUES (3,'Ngah','ngah@gmail.com');
INSERT INTO "users" VALUES (4,'Maiva ngah','ngag@gmail.com');
COMMIT;
