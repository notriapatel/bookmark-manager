require 'pg'

class User
  def self.bookmarks
    @bookmarks =[]
    conn = PG.connect( dbname: ENV['current_environment'])
    result = conn.exec( "SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create_bookmarks(url:)
    if ENV['current_environment'] == 'bookmark_manager_test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    conn.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end