Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    get 'dashboard/home'
    root "dashboard#home"
    resources :experts, :users, :dissertations, :noms, :books, :journals
    resource :site
  end
  get 'home/index'
  root "home#index"
end
