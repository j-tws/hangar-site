Rails.application.routes.draw do

  root to: 'pages#home'

  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'

  #Seperate routes of index for each eatery type
  get '/eaterytype/:id' => 'eateries#eatery_type_index', as: 'eatery_type'

  get '/search' => 'eateries#search'

  get '/photos/:id/delete' => 'photos#destroy', as: 'destroy_photo'

  resources :eateries, :bookings, :users, :enquiries, :photos

end
