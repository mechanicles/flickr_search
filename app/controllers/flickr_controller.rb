class FlickrController < ApplicationController

  def index
    render
  end

  def search
    @search_text = params["text"]

    if @search_text.present?
      @photos_data = flickr.photos.search(text: @search_text,
                                          sort: 'relevance',
                                          per_page: 10,
                                          extras: 'url_s')
    else
      flash[:error] = "Please enter correct search query"
      redirect_to root_path
    end
  end

end
