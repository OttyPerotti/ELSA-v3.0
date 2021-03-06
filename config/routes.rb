Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

    resources :beds, only: [:new, :create, :delete] do
    resources :bookings, only: [:index, :new, :create]
  end

  resources :rooms, only: [:delete]

  resources :hostels do
    resources :rooms, only: [:new, :index, :create]
  end

  get 'user_dashboard', to: 'pages#user_dashboard'
  get 'partner_dashboard', to: 'pages#partner_dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
