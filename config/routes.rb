Rails.application.routes.draw do
  devise_for :respondents, skip: :all
  devise_for :coordinators, skip: :all

  resources :surveys

  scope 'coordinators' do
    get 'login', to: 'coordinators#login'
  end

  scope 'respondents' do
    get 'login', to: 'respondents#login'
  end
end
