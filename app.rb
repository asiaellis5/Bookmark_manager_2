require 'sinatra/base'
require_relative './lib/bookmark_manager.rb'

class BookmarkManager < Sinatra::Base

 get '/' do
   erb :index
 end

 post '/bookmark/add' do
   Bookmark_manager.create(title: params[:title], url: params[:url])
   redirect '/bookmark'
 end

 get '/bookmark' do
    @bookmarks = Bookmark_manager.all
    erb :bookmark
 end

 run! if app_file == $0
end
