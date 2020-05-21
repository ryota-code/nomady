source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bcrypt', '3.1.12'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'mysql2'
gem 'ed25519'
gem 'bcrypt_pbkdf'

# 画像投稿
gem 'carrierwave'
gem 'rmagick'

# Bootstrap追加
gem 'bootstrap-sass', '3.3.7'

# サンプルユーザー追加
gem 'faker', '1.7.3'

# エラーメッセージ日本語化
gem 'rails-i18n'

# ページネーション
gem 'kaminari'

# fontawsome
gem 'font-awesome-sass', '~> 5.4.1'

# 住所入力自動化
gem 'jp_prefecture'
gem 'jquery-rails'

# カウント機能
gem 'counter_culture', '~> 1.8'

# GoogleMap
gem 'geocoder'
gem 'gmaps4rails'

# GoogleMapAPI保護
gem 'dotenv-rails'

# タグ付け機能追加
gem 'acts-as-taggable-on', '~> 6.0'

#検索機能
gem 'ransack'

# 環境変数の管理をするもの
gem 'dotenv-rails'
gem 'listen', '>= 3.0.5', '< 3.2'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
end

group :development do
  gem 'pry-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :production, :staging do
  gem 'unicorn'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
