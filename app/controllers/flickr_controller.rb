class FlickrController < ApplicationController

  def index
    render
  end

  def search
    search_text = params["text"]

    if search_text.blank?
      flash[:message] = "Please enter correct value"
      redirect_to flickr_path
    else
      flickr  = FlickRaw::Flickr.new
      @photos = flickr.photos.search(text: search_text, extras: ["url_sq"])
    end
  end

end
