Rails.application.routes.draw do
  root 'urls#index'

  post 'urls/create'

  get 'urls/show/:id' => 'urls#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
