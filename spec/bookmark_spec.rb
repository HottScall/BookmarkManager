require 'bookmark'
# require 'database_helpers'

describe Bookmark do
  describe './all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_ruby_test')

      #test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.skysports.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.linkedin.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://news.sky.com/');")

    bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.skysports.com")
      expect(bookmarks).to include("https://www.linkedin.com/")
      expect(bookmarks).to include("https://news.sky.com/")
    end
  end

  describe './new' do
    it 'adds new bookmarks' do
      bookmark = Bookmark.create(url: 'http://testbookmark.com', title: 'Test Bookmark').first

      expect(bookmark['url']).to eq 'http://testbookmark.com'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end
end
