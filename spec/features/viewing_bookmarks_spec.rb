feature 'Viewing bookmarks' do
  scenario 'A user can see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.skysports.com');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'https://www.linkedin.com/');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'https://news.sky.com/');")

    visit ('/bookmarks')

    expect(page).to have_content "http://www.skysports.com"
    expect(page).to have_content "https://www.linkedin.com/"
    expect(page).to have_content "https://news.sky.com/"
  end
end
