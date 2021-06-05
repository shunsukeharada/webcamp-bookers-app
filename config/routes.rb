Rails.application.routes.draw do
  root 'homes#top'
  get '/books' => 'books#index' 
  post '/books' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'books/new' => 'books#index'
  get 'books/:id/edit' => 'books#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
  
end
