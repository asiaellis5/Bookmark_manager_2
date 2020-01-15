require 'pg'

class Bookmarks 

  def self.create(bookmark)
    connection = PG.connect(:dbname => enviroment)
    connection.exec("INSERT INTO bookmarks(url) VALUES ('#{bookmark.to_s}')")
  end

  def self.instance
    @bookmarks
  end

  # def initialize
  #   @bookmark_log = []
  # end

  def self.all 
    connection = PG.connect(:dbname => enviroment)
    result = connection.exec('SELECT * FROM bookmarks;') 
    result.map { |bookmark| bookmark['url'] }
  end

  def self.enviroment
    ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
  end


end