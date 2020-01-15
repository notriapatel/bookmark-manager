require 'user'

describe '#create_bookmarks' do
  it 'adds a bookmark' do
    User.create_bookmarks(url: 'www.codewars.com')
    expect(User.bookmarks).to include 'www.codewars.com'
  end
end