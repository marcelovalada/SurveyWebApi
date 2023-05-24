Rails.application.routes.draw do
  devise_for :users, skip: :all

  resources :surveys

  scope 'users' do
    get 'login', to: 'users#login'
    get 'logout', to: 'users#logout'
  end

  get '/responses/:id', to: 'responses#index'
  post '/responses', to: 'responses#create'


  # scope 'responses' do
  #   get 'index/:id', to: 'responses#index'
  # end
end
