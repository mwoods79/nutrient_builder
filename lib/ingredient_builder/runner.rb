require 'database_builder'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/ingredients.db")

DataMapper.auto_migrate!

builder = DatabaseBuilder.new

builder.build "ABBREV.txt"

