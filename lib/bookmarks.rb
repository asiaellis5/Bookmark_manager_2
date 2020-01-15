require 'pg'

class Bookmarks 

  def self.create
    @bookmarks = Bookmarks.new
  end

  def self.instance
    @bookmarks
  end

  # def initialize
  #   @bookmark_log = []
  # end

  def all 
    connection = PG.connect(:dbname => 'bookmark_manager')

    result = connection.exec('SELECT * FROM bookmarks;') 

    result.map{ |bookmark| bookmark['url'] }

  end


end