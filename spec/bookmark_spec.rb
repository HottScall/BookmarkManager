require 'bookmark'

describe Bookmark do
  describe './all' do
    it 'returns all bookmarks' do
    bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.skysports.com")
      expect(bookmarks).to include("https://www.linkedin.com/")
      expect(bookmarks).to include("https://news.sky.com/")
    end
  end
end
