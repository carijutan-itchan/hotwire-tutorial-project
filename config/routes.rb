Rails.application.routes.draw do
  resources :product

  devise_for :users, path: 'users',
                      path_names: { 
                        sign_in: 'login', 
                        sign_out: 'logout', 
                        registration: 'register'
                      },
                      controllers: {
                        sessions: 'users/sessions',
                        registrations: 'users/registrations'
                      }

  root to: 'product#index'
end
