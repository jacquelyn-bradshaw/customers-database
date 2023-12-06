# customers-database

SQL files and commands to create a customers database and tables and insert data.

## Create the database and table

Run the create database and tables sql file.

```
mysql < create_database_and_tables.sql
```

## Insert data

```
mysql < insert_data.sql
```

## Add foreign keys

```
mysql < add_foreign_keys.sql
```

## MySQL Guidance

Details on how to install mysql and authenticate (if needed).

### Install MySQL

MySQL can be installed via brew

```
brew install mysql
brew services start mysql
```

### Username / Password authentication

If mysql has authenticaton enabled, you can include your password in the command line.

```
mysql -p < create_database_and_tables.sql
```
