require 'pg'

class Bookmarks 

  def self.create
    @bookmarks = Bookmarks.new
  end

  def self.instance
    @bookmarks
  end

  def initialize
    @bookmark_log = []
  end

  def all 
    connection = PG.connect(:dbname => enviroment)

    result = connection.exec('SELECT * FROM bookmarks;') 

    result.map { |bookmark| bookmark['url'] }
  end

  def enviroment
    ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
  end


end