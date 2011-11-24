module Antir
  module Resources
    class Job
      include DataMapper::Resource
      storage_names[:default] = 'jobs'

      property :id, Serial
      #property :address, URI
      property :resource, Text

      #has n, :engine_pools, :through => Resource
      #has n, :engines, :through => :engine_pools
    end
  end
end
