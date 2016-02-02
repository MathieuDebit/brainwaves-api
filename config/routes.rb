Rails.application.routes.draw do
  # constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do

      end
    end
  # end

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
