Reader::Application.routes.draw do

  get '/' => "articles#home"
  get '/search' => "articles#search"

end
