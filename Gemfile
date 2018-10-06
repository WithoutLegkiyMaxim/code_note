source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
gem 'foreman'

gem "bulma-rails", "~> 0.7.1"

gem "slim-rails"
gem 'gon'
gem 'jbuilder', '~> 2.5'

#for pagination
gem 'will_paginate', '~> 3.1.0'
# gem 'bcrypt', '~> 3.1.7'

# gem 'mini_magick', '~> 4.8'
gem 'devise'
# gem 'capistrano-rails', group: :development

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # add 4 seed.rb, cos my rake-task
  # too beartyful 4 my project
  gem 'ffaker'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'awesome_rails_console'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Please clean up duplicated gems if any.
# Feel free to remove gems that you don't want to use or if they conflict with other gem dependencies. (you might need to update .pryrc also)
group :development, :test do
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
end
