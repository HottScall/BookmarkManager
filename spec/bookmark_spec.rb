require 'bookmark'

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
      Bookmark.create(url: 'http://testbookmark.com')

      expect(Bookmark.all).to include 'http://testbookmark.com'
    end
  end
end
