Reader::Application.routes.draw do

  get '/' => "articles#home"
  get '/search' => "articles#search"

  resources :articles

  get '/all/:topic' => "articles#show_all_search"

  get '/favorite_article' => "articles#favorite_article"

end
