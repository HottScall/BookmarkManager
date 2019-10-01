require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe './all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_ruby_test')

      #test data
      bookmark = Bookmark.create(url:'http://www.skysports.com', title: 'Skysports')
      Bookmark.create(url: 'https://www.linkedin.com/', title: 'LinkedIn')
      Bookmark.create(url: 'https://news.sky.com/', title: 'Sky News')

    bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Skysports'
      expect(bookmarks.first.url).to eq 'http://www.skysports.com'
    end
  end

  describe '.create' do
    it 'adds new bookmarks' do
      bookmark = Bookmark.create(url: 'http://testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://testbookmark.com'
    end
  end

  describe '.delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.create(title: 'Skysports', url: 'http://www.skysports.com')
      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end
  end

end
