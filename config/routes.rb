Rails.application.routes.draw do

  #append all controller methods to jobs route - example-> get 'jobs/index'
  resources :jobs

  root 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
