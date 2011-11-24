require 'dm-migrations'
require 'dm-core'
require 'dm-types'

#DataMapper::Logger.new(STDOUT, :debug)
DataMapper.setup(:default, 'postgres://postgres:postgres@localhost/antir')
DataMapper.repository(:default).adapter.resource_naming_convention = DataMapper::NamingConventions::Resource::UnderscoredAndPluralizedWithoutModule

require 'antir/resources/engine'
require 'antir/resources/engine_pool'
require 'antir/resources/core'
#require 'antir/resources/vps'

DataMapper.auto_migrate!
DataMapper.auto_upgrade!
