require 'sequel'

require 'panoply/app'
require 'panoply/database'
require 'panoply/messages'
require 'panoply/registry'

module Panoply

  def self.database
    @database ||= Database.new
  end

  def self.register_store keyword, store
    storage_registry.assign keyword, store
  end

  def self.storage_registry
    @storage_registry ||= Registry.new
  end

  def self.store_for keyword
    storage_registry.retrieve keyword
  end

end
