require 'pg'

def test_database_setup
  connection = PG.connect(:dbname => 'bookmark_manager_test')
  connection.exec('TRUNCATE TABLE bookmarks;')
  connection = PG.connect(:dbname => 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks(url) VALUES ('http://www.google.com');")
end