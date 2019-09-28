require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_ruby_test')

    Bookmark.create(url: "http://www.skysports.com")
    Bookmark.create(url: "https://www.linkedin.com/")
    Bookmark.create(url: "https://news.sky.com/")

    visit ('/bookmarks')

    expect(page).to have_content "http://www.skysports.com"
    expect(page).to have_content "https://www.linkedin.com/"
    expect(page).to have_content "https://news.sky.com/"
  end
end
