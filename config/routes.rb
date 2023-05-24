Rails.application.routes.draw do
  devise_for :users, skip: :all

  resources :surveys

  scope 'users' do
    get 'login', to: 'users#login'
    get 'logout', to: 'users#logout'
  end
end
