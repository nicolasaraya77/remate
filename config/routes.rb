Rails.application.routes.draw do

  get 'admins/update_role/:user_id/:role_id', to: 'admins#update_role', as: 'admins_update_role'
  get 'admins/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :auctionlistings

  post 'auctionnotice/:id', to: 'auctionnotices#action_selection', as: 'action_selection'
  get 'auctionnotices/pending'
  get 'auctionnotices/selected'
  get 'auctionnotices/rejected'

  resources :auctionnotices do
    resources :notice_selections
  end

    resources :notice_selections

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'notice_selections#index'
end
