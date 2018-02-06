Rails.application.routes.draw do
  get 'homepage/index'

  resources :experiments do
  	get 'graph', to: 'experiments#graph', as: 'graph'
    resources :datapoints
  end

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
