Rails.application.routes.draw do
  get 'homepage/index'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    resources :experiments do
      resources :datapoints
    end
  end

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
