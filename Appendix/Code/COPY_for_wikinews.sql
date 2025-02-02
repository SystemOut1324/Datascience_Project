/* This file is unique to one pc, use Setup_SQL.ipynb to generate local */

/* Remove all data from SCHEMA */
TRUNCATE TABLE wikinews.article CASCADE;

TRUNCATE TABLE wikinews.sources CASCADE;

TRUNCATE TABLE wikinews.categories CASCADE;

TRUNCATE TABLE wikinews.source_to CASCADE;

TRUNCATE TABLE wikinews.in_category CASCADE;

/* Used for encoding error */
SET CLIENT_ENCODING TO 'utf8';

/* COPY into SCHEMA */
COPY wikinews.article FROM 'd:/Personal/OneDrive/KU-uni/DataScience/Python/Datascience_Final_Project/Appendix/Data_git_ignore/clean_csv/wiki_article.csv' DELIMITER ',' CSV HEADER;

COPY wikinews.sources FROM 'd:/Personal/OneDrive/KU-uni/DataScience/Python/Datascience_Final_Project/Appendix/Data_git_ignore/clean_csv/sources_domain_urls.csv' DELIMITER ',' CSV HEADER;

COPY wikinews.categories FROM 'd:/Personal/OneDrive/KU-uni/DataScience/Python/Datascience_Final_Project/Appendix/Data_git_ignore/clean_csv/categories.csv' DELIMITER ',' CSV HEADER;

COPY wikinews.source_to FROM 'd:/Personal/OneDrive/KU-uni/DataScience/Python/Datascience_Final_Project/Appendix/Data_git_ignore/clean_csv/sources_domain_urls_in.csv' DELIMITER ',' CSV HEADER;

COPY wikinews.in_category FROM 'd:/Personal/OneDrive/KU-uni/DataScience/Python/Datascience_Final_Project/Appendix/Data_git_ignore/clean_csv/categories_in.csv' DELIMITER ',' CSV HEADER;

