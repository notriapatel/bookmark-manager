require 'pg'

def reset_table 
  conn = PG.connect( dbname: 'bookmark_manager_test')
  result = conn.exec("TRUNCATE TABLE bookmarks")
  result = conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com')")
  result = conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com')")
  result = conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com')")
end