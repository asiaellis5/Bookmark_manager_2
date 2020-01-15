Commits correspond with user stories

## User Stories

```
As a time-pressed user
So that I can visit my favourite sites
I would like to see a list of bookmarks
(see image)
```

```
As a user,
So that I can add more of my favourite sites
I would like to be able to add a new bookmark
```

## Domain Model
 <img style="display: block; alt='Domain Model'" src="./images/domain_model.jpg"/>


## Data Base Setup

connect to psql 
Create database using psql CREATE DATABASE bookmark_manager;
connect to data base using \c bookmark_manager;
create table CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60));
Create test database using psql CREATE DATABASE bookmark_manager_test;
connect to database- \c bookmark_manager_test;
create table CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60));

## Truncate Test Database
connect to psql
connect to test database using \c bookmark_manager_test;
truncate(empty) the table -  TRUNCATE TABLE bookmarks; (as shown in 02_truncate_table.sql)

