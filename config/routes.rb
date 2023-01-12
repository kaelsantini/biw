Rails.application.routes.draw do
  get 'home/index'
  get '/about', to: 'home#about'

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users

  root to: 'home#index'

end
