Rails.application.routes.draw do
  root to: 'home#less_home'
  get '/about', to: 'home#less_about'
  # root to: 'home#index'
  # get '/search', to: 'home#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
