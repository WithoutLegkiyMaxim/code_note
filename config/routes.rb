Rails.application.routes.draw do
  namespace :user do
    get 'omniauth_callbacks/vkontakte'
  end
  # devise_for :users

  devise_for :users, :controllers => { :omniauth_callbacks => "user/omniauth_callbacks" }
  resources :users, :only => [:index, :destroy] 

  resources :stickers
  # root to: 'home#less_home'
  # get '/about', to: 'home#less_about'
  root to: 'home#index'
  get '/search', to: 'home#search'
  get '/about', to: 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# Authproviders::Application.routes.draw do
#   devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
#   resources :users, :only => [:index, :destroy]
#   root :to => 'users#index'
# end