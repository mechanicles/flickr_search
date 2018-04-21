class FlickrApiSettings

  FlickRaw.api_key = Rails.application.credentials.flickr[:key]
  FlickRaw.shared_secret= Rails.application.credentials.flickr[:secret]

end
