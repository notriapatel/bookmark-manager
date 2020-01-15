feature 'Add bookmarks' do
  scenario 'it can add bookmarks' do
    visit '/'
    click_on 'Add a bookmark'
    fill_in 'url', with: 'www.codewars.com'
    click_on 'Submit'
    expect(page).to have_content 'www.codewars.com'
  end
end