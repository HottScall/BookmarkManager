feature 'adding new bookmarks' do
  scenario 'a user can add new bookmarks' do
    visit('/bookmarks/new')
    fill_in("url", with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
