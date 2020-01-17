require 'pg'

class Bookmark_manager
   attr_reader :title, :url, :id
 
  def initialize(title, url, id)
    @title = title
    @url = url 
    @id = id
  end 

  def self.create(title, url)
    connection = PG.connect(:dbname => enviroment)
    result = connection.exec("INSERT INTO bookmarks(title, url) VALUES ('#{title}' ,'#{url}')")
  end

  def self.delete(id)
    connection = PG.connect(:dbname => enviroment)
    result = connection.exec("DELETE FROM bookmarks WHERE id = '#{id}'")
  end

  def self.instance
    @bookmarks
  end

 

  def self.all 
    connection = PG.connect(:dbname => enviroment)
    result = connection.exec('SELECT * FROM bookmarks;') 
    result.map { |bookmark| self.new(bookmark['title'], bookmark['url'], bookmark['id']) }
  end

  def self.enviroment
    ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
  end


end