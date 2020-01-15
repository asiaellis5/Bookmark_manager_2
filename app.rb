require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  before do
    @bookmark = Bookmarks.instance
  end

 get '/' do
   erb :index
 end

 get '/bookmark' do
    @bookmark = Bookmarks.create
    erb :bookmark
 end

 run! if app_file == $0
end
