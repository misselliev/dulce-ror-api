Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'home/public'
      get 'home/private'
      mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
