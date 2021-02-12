class StaticPagesController < ApplicationController
  require 'flickr'
  
  def index
    if params[:user_id]
      begin
        @flickr = Flickr.new
        @photos = @flickr.photos.search(user_id: params[:user_id])
        flash[:alert] = nil
      rescue => exception
        flash[:alert] = "Unable to find a Flickr account associated with the given ID"
      end
    end
  end
end
