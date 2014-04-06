Ica::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :confirmations => 'users/confirmations', :passwords => 'users/passwords', :registrations => 'users/registrations', :sessions => 'users/sessions', :unlocks => 'users/unlocks' }


  resources :users, only: [:show] do
    get 'profile'
    get 'dashboard'
  end

  resource :import_data, only: [:show] do
    get :request
    get :complete
  end

  resources :landing, only: [:index]

  root 'passthrough#authenticate'

end
