Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tweets do
    post 'like', to: "tweets#like"
    post 'retweet', to:"tweets#retweet"
  end
  devise_for :users
  root to:"tweets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
