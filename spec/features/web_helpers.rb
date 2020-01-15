require 'pg'

def truncate_test_db
  connection = PG.connect(:dbname => 'bookmark_manager_test')
  connection.exec('TRUNCATE TABLE bookmarks;')
end

def add_to_test_db
  connection = PG.connect(:dbname => 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks(url) VALUES ('http://www.google.com');")
end