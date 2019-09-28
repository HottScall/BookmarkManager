feature 'Viewing bookmarks' do
  scenario 'A user can see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.skysports.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.linkedin.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://news.sky.com/');")

    visit ('/bookmarks')

    expect(page).to have_content "http://www.skysports.com"
    expect(page).to have_content "https://www.linkedin.com/"
    expect(page).to have_content "https://news.sky.com/"
  end
end
