Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    get 'dashboard/home'
    root "dashboard#home"
    resources :experts
    resources :users do
      get 'profile', on: :member
    end
    resource :site
  end
  get 'home/index'
  root "home#index"
end
