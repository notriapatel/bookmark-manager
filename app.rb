require 'sinatra/base'
require './lib/user'

class BookmarkManager < Sinatra::Base
  ENV['current_environment'] = 'bookmark_manager' if app_file == $0
  
  get '/' do
    @bookmarks = User.bookmarks
    erb :index
  end

  run! if app_file == $0
end