Rails.application.routes.draw do
  resources :media_histories
  resources :users
  resources :songs
  resources :note3s
  resources :note2s
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
