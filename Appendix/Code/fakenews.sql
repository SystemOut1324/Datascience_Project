/* Drop SCHEMA TO START FRESH */
DROP SCHEMA IF EXISTS fakenews CASCADE;

/* Create schema make collection of database objects including tables, views, triggers, stored procedures, indexes, etc*/
CREATE SCHEMA fakenews

    CREATE TABLE Domain_Name (
        Domain_Id   int,
        Domain_Name varchar(255),
        PRIMARY KEY (Domain_Id)
    )

    CREATE TABLE type (
        Type_Id int,
        Type varchar(1000),
        PRIMARY KEY (Type_Id)
    )

    CREATE TABLE Article (
        ID               int,
        Domain_Id        int,
        Type_Id          int,
        Url              varchar(1000),
        Content_tokenize varchar(1000)[],
        Content          TEXT,
        Title            varchar(10000),
        Meta_Description TEXT,
        Scraped_At       DATE,
        Updated_At       DATE,
        Inserted_At      DATE,
        PRIMARY KEY (ID),
        FOREIGN KEY (Domain_Id) References Domain_Name,
        FOREIGN KEY (Type_Id)   References Type
    )

    CREATE TABLE Tags (
        Tag_Id int,
        Tag    varchar(1000),
        PRIMARY KEY (Tag_Id)
    )

    CREATE TABLE Tags_In (
        Tag_Id int,
        ID     int,
        PRIMARY KEY (ID, Tag_Id),
        FOREIGN KEY (ID)     References Article,
        FOREIGN KEY (Tag_Id) References Tags
    )

    CREATE TABLE Authors (
        AuthorID   int,
        AuthorName varchar(1024),
        PRIMARY KEY (AuthorID)
    )

    CREATE TABLE Authors_In (
        AuthorID int,
        ID       Int,
        PRIMARY KEY (ID, AuthorID),
        FOREIGN KEY (ID)       References Article,
        FOREIGN KEY (AuthorID) References Authors
    )

    CREATE TABLE Meta_Keywords (
        Meta_Keyword_id int,
        Meta_Keyword    varchar(500),
        PRIMARY KEY (Meta_Keyword_id)
    )

    CREATE TABLE Meta_Keywords_In (
        Meta_Keyword_id int,
        ID              int,
        PRIMARY KEY (ID, Meta_Keyword_id),
        FOREIGN KEY (ID)              References Article,
        FOREIGN KEY (Meta_Keyword_id) References Meta_Keywords
    );
