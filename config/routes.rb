Rails.application.routes.draw do
  #new must be above show route
  #when you place the show in resources, 
  #rails is smart enough to make new first
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
end
