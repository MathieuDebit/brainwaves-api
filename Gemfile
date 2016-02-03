source 'https://rubygems.org'
ruby '2.3.0'

gem 'rails', '5.0.0.beta1.1'
gem 'pg', '~> 0.18'
gem 'puma'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rack-cors'
gem 'rack-attack'

gem 'devise', git: 'https://github.com/plataformatec/devise.git'
gem 'omniauth', '~> 1.3', '>= 1.3.1'
gem 'devise_token_auth', '~> 0.1.37'

gem 'active_model_serializers'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production, :staging do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
