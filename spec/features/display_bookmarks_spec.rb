feature 'Displays bookmarks' do
  scenario 'user navigates to index page and bookmarks are displayed' do
    visit '/'
    expect(page).to have_content 'http://www.makersacademy.com http://www.google.com http://www.destroyallsoftware.com'
  end
end