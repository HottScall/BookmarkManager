require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_ruby_test')

    Bookmark.create(url: "http://www.skysports.com", title: 'Skysports')
    Bookmark.create(url: "https://www.linkedin.com/", title: 'LinkedIn')
    Bookmark.create(url: "https://news.sky.com/", title: 'Sky News')

    visit ('/bookmarks')

    expect(page).to have_link('Skysports', href: "http://www.skysports.com")
    expect(page).to have_link('LinkedIn', href: "https://www.linkedin.com/")
    expect(page).to have_link('Sky News', href: "https://news.sky.com/")
  end
end
