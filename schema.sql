CREATE TABLE IF NOT EXISTS "SRC"(
    "Id" TEXT PRIMARY KEY,
    "Title" TEXT NOT NULL,
    "Artist" TEXT NOT NULL,
    "Album" TEXT NOT NULL,
    "AlbumImg" TEXT
);
CREATE TABLE IF NOT EXISTS "SONG"(
    "Id" TEXT PRIMARY KEY,
    "Comment",
    "Video" TEXT,
    "PlyyId" TEXT NOT NULL,
    "SrcId" TEXT NOT NULL,
    FOREIGN KEY ("PlyyId") REFERENCES "PLYY.Id",
    FOREIGN KEY ("SrcId") REFERENCES "SRC.Id"
);
CREATE TABLE IF NOT EXISTS "PLYY"(
    "Id" TEXT PRIMARY KEY,
    "Title" TEXT NOT NULL,
    "CuratorId" TEXT NOT NULL,
    "Img" TEXT,
    "Comment" TEXT,
    "GenDate" DATETIME NOT NULL,
    "UpdateDate" DATETIME NOT NULL,
    FOREIGN KEY ("CuratorId") REFERENCES "CURATOR.Id"
);
CREATE TABLE IF NOT EXISTS "CURATOR"(
    "Id" TEXT PRIMARY KEY,
    "Name" TEXT NOT NULL UNIQUE,
    "Img" TEXT,
    "Intro" TEXT
);
CREATE TABLE IF NOT EXISTS "USER"(
    "Id" TEXT PRIMARY KEY,
    "Email" TEXT NOT NULL UNIQUE,
    "PW" TEXT NOT NULL,
    "Nickname" TEXT NOT NULL UNIQUE,
    "Img" TEXT
);
CREATE TABLE IF NOT EXISTS "TAG"(
    "Id" TEXT PRIMARY KEY,
    "Name" TEXT NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS "TAG"(
    "Id" TEXT PRIMARY KEY,
    "Name" TEXT NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS "PLYY_TAG"(
    "PlyyId" TEXT NOT NULL,
    "TagId" TEXT NOT NULL,
    FOREIGN KEY ("PlyyId") REFERENCES "PLYY.Id",
    FOREIGN KEY ("TagId") REFERENCES "TAG.Id"
);
CREATE TABLE IF NOT EXISTS "PLYY_LIKE"(
    "Id" TEXT PRIMARY KEY,
    "UserId" TEXT NOT NULL,
    "PlyyId" TEXT NOT NULL,
    FOREIGN KEY ("UserId") REFERENCES "USER.Id",
    FOREIGN KEY ("PlyyId") REFERENCES "PLYY.Id"
);
CREATE TABLE IF NOT EXISTS "CURATOR_LIKE"(
    "Id" TEXT PRIMARY KEY,
    "UserId" TEXT NOT NULL,
    "PlyyId" TEXT NOT NULL,
    FOREIGN KEY ("UserId") REFERENCES "USER.Id",
    FOREIGN KEY ("PlyyId") REFERENCES "PLYY.Id"
);