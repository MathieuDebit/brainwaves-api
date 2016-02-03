Rails.application.routes.draw do
  # constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth'

        resources :bottles
      end
    end
  # end

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
