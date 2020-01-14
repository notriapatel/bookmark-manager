require 'pg'

class User
  def self.bookmarks
    @bookmarks =[]
    conn = PG.connect( dbname: 'bookmark_manager')
    result = conn.exec( "SELECT * FROM bookmarks")
    result.map {|bookmark| bookmark['url']}
  end
end