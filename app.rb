require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  before do
    @bookmark = Bookmarks.instance
  end

 get '/' do
   erb :index
 end

 post '/add_bookmark' do
   session[:bookmark] = Bookmarks.create(params[:url])
   redirect '/bookmark'
 end

 get '/bookmark' do
    @bookmark = Bookmarks.all
    erb :bookmark
 end

 run! if app_file == $0
end
