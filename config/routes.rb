Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "/logout", to: "devise/sessions#destroy", as: :logout_user
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get "/wishlist", to: "home#wishlist"
  post "/wishlist", to: "home#save_wishlist"
end
