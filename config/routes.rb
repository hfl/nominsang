Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/home'
    root "dashboard#home"
  end
  get 'home/index'
  root "home#index"
end
