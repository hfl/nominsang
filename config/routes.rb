Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    get 'dashboard/home'
    root "dashboard#home"
    resources :experts, :users
    resource :site
  end
  get 'home/index'
  root "home#index"
end
