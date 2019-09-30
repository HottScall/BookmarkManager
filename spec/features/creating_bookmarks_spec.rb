feature 'adding new bookmarks' do
  scenario 'a user can add new bookmarks' do
    visit('/bookmarks/new')
    fill_in("url", with: 'http://testbookmark.com')
    fill_in("title", with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link ('Test Bookmark', href: 'http://testbookmark.com')
  end
end
