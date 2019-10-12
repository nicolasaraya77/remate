Rails.application.routes.draw do

  get 'geocoder/findaddress'
  get 'admins/update_role/:user_id/:role_id', to: 'admins#update_role', as: 'admins_update_role'
  get 'admins/index'

  # devise_for :users, controllers: {{     }
  #   registrations: 'users/registrations'}
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks",
    registrations: 'users/registrations'
  }


  resources :auctionlistings

  post 'auctionnotice/:id/reject', to: 'auctionnotices#action_rejection', as: 'rejection'
  get 'auctionnotices/pending'
  get 'auctionnotices/selected'
  get 'auctionnotices/rejected'
  post 'auctionnotice/:id/select', to: 'auctionnotices#action_selection', as: 'action_selection'

  get 'auctionnotices/auctionnotice_associate'
  get 'auctionnotice/:id/auctionnotice_associate', to: 'auctionnotices#auctionnotice_associate', as: 'auctionnotice_associate'


  resources :auctionnotices do
    resources :notice_selections
  end

  resources :realties

  resources :communes
  resources :provinces
  resources :regions

  resources :courts

    resources :notice_selections

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'auctionnotices#index'
end
