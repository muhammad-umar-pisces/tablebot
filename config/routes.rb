Rails.application.routes.draw do
  resources :robots
  root 'robots#show'
  post 'bot_positions/place'
  post 'bot_positions/right'
  post 'bot_positions/left'
  post 'bot_positions/up'
  post 'bot_positions/down'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
