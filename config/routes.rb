Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/birds', to: 'birds#index' #Get all birds.
  # get '/birds/:id', to: 'birds#show' #Get single bird by id.

  # Creates all CRUD RESTful routes.
  # resources :birds

  # Create only GET routes mapped to index and show actions.
  resources :birds, only: [:index, :show]

end
