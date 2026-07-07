1 - Create a new table named with the following columns:Database
– A string (text) describing the name of the database
– A number (floating point) of the latest version of this database
– An integer count of the number of times this database was downloadedNameVersionDownload_count
This table has no constraints. 

A:

CREATE TABLE database(
database_name TEXT,
version FLOAT,
Download_Count INTEGER
);


______________________________________________________________________
