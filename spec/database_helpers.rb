require 'pg'

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_ruby_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
