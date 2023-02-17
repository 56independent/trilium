CREATE TABLE IF NOT EXISTS "note_ancillaries"
(
    noteAncillaryId      TEXT not null primary key,
    noteId       TEXT not null,
    name         TEXT not null,
    mime         TEXT not null,
    isProtected    INT  not null DEFAULT 0,
    contentCheckSum    TEXT not null,
    utcDateModified TEXT not null,
    isDeleted    INT  not null,
    `deleteId`    TEXT DEFAULT NULL);

CREATE TABLE IF NOT EXISTS "note_ancillary_contents" (`noteAncillaryId`	TEXT NOT NULL PRIMARY KEY,
                                                     `content`	TEXT DEFAULT NULL,
                                                     `utcDateModified` TEXT NOT NULL);

CREATE INDEX IDX_note_ancillaries_name
    on note_ancillaries (name);
CREATE UNIQUE INDEX IDX_note_ancillaries_noteId_name
    on note_ancillaries (noteId, name);
