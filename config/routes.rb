Rails.application.routes.draw do
  devise_for :users, skip: :all
  devise_for :respondents, skip: :all
  devise_for :coordinators, skip: :all

  resources :surveys

  scope 'users' do
    get 'login', to: 'users#login'
    get 'logout', to: 'users#logout'
  end

  scope 'coordinators' do
    get 'login', to: 'coordinators#login'
    get 'logout', to: 'coordinators#logout'
  end

  scope 'respondents' do
    get 'login', to: 'respondents#login'
    get 'logout', to: 'respondents#logout'
  end

end
