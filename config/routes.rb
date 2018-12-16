Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  get '/student/:id', to: 'students#show', as: 'student'
  post "/student", to: 'students#create'

end
