require 'sinatra/base'
require './lib/user'

class BookmarkManager < Sinatra::Base
  get '/' do
    @bookmarks = User.bookmarks
    p @bookmarks
    erb :index
  end

  run! if app_file == $0
end