require 'dm-core'
require 'dm-migrations'
require 'dm-timestamps'
require 'dm-validations'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/db.db")

#Put models here, and have them `include DataMapper::Resource`

DataMapper.auto_upgrade!
