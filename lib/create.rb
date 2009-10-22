require 'database_builder'

DataMapper.auto_migrate!

builder = DatabaseBuilder.new

builder.build "ABBREV.txt"

