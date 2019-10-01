feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://www.skysports.com', title: 'Skysports')
    visit('/bookmarks')
    expect(page).to have_link('Skysports', href: 'http://www.skysports.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end
