Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'users#index' # default route to landing page

 resources :users # will allow to access all resources of users
 resources :calculator, only: %i(index create) # calculator has only access to index resource files
 resources :sessions, only: %i(new create destroy) # will allow to access all resources of sessions
 resources :scores # will allow to access all resources of scores
end
