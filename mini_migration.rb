require "sqlite3"

# We are creating a database called test.db
conn = SQLite3::Database.new "test.db"
# The database contains two string fields called "title" and "body" and an integer field called "posted"
conn.execute <<SQL
create table my_table ( id INTEGER PRIMARY KEY, posted INTEGER, title VARCHAR(30), body VARCHAR(32000));
SQL