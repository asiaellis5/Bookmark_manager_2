require 'sinatra/base'
require_relative './lib/bookmark_manager.rb'

class BookmarkManager < Sinatra::Base

  use Rack::MethodOverride

 get '/' do
   erb :index
 end

 post '/bookmark/add' do
   Bookmark_manager.create(params[:title], params[:url])
   redirect '/bookmark'
 end

 get '/bookmark' do
    @bookmarks = Bookmark_manager.all
    erb :bookmark
 end

 delete '/bookmark/:id' do
   Bookmark_manager.delete(params[:id])
   redirect '/bookmark'
 end

 put '/bookmark/:id' do
  Bookmark_manager.update(params[:url], params[:title], params[:id])
  redirect '/bookmark'
end

 run! if app_file == $0
end
