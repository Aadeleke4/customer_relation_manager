Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    # Other routes...

    root to: 'customers#index'

    get '/customers/missing_email', to: 'customers#missing_email'
    get '/customers/alphabetized', to: 'customers#alphabetized'

    # Rest of the routes...
  end

end
