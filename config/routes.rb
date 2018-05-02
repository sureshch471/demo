Rails.application.routes.draw do
  resources :users
  resources :posts

   if Rails.env.production?
    get '404', to: 'application#page_not_found'
    get '422', to: 'application#server_error'
    get '500', to:  'application#server_error'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
