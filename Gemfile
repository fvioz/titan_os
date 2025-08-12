source "https://rubygems.org"

ruby "3.4.4"

gem "rails", "~> 8.0.2"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 5.0"

gem "bootsnap", require: false
gem "graphql", '~> 2.5.11'
gem "rack-cors"
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "brakeman", require: false
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "factory_bot_rails", "~> 6.5.0"
  gem "packs-rails", "~> 0.0.5"
  gem "rspec-rails", "~> 8.0.1"
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-rspec", "~> 3.6"
end

group :test do
  gem "database_cleaner-active_record", "~> 2.2.1"
  gem "simplecov", require: false
end
