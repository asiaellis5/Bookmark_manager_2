require 'pg'

class Bookmark_manager
   attr_reader :title, :url
 
  def initialize(title: , url: )
    @title = title
    @url = url 
  end 

  def self.create(title:, url:)
    connection = PG.connect(:dbname => enviroment)
    result = connection.exec("INSERT INTO bookmarks(title, url) VALUES ('#{title}' ,'#{url}') RETURNING id, url, title")
  end

  def self.instance
    @bookmarks
  end

 

  def self.all 
    connection = PG.connect(:dbname => enviroment)
    result = connection.exec('SELECT * FROM bookmarks;') 
    result.map { |bookmark| self.new({:title => bookmark['title'], :url => bookmark['url']}) }
  end

  def self.enviroment
    ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
  end


end