require 'pg'

class User
  def self.bookmarks
    @bookmarks =[]
    conn = PG.connect( dbname: ENV['current_environment'])
    result = conn.exec( "SELECT * FROM bookmarks")
    result.map {|bookmark| bookmark['url']}
  end
end