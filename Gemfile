source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'


gem 'rails', '~> 5.2.4'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bcrypt', '3.1.12'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

# 画像投稿
gem 'carrierwave'
gem 'rmagick'

# Bootstrap追加
gem 'bootstrap-sass', '3.3.7'

# Twitterログイン実装
gem 'omniauth-twitter'

# サンプルユーザー追加
gem 'faker', '1.7.3'

# エラーメッセージ日本語化
gem 'rails-i18n'

#ページネーション
gem 'kaminari'

# fontawsome
gem 'font-awesome-sass', '~> 5.4.1'

# 住所入力自動化
gem 'jp_prefecture'
gem 'jquery-rails' 

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
end

group :production do
  gem 'pg', '0.20.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
