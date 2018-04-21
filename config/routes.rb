Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/flickr/search', to: 'flickr#search', as: 'search_flickr'

end
