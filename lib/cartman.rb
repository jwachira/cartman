require "cartman/version"
require "cartman/configuration"
require "cartman/cart"
require "cartman/item"
require "cartman/item_collection"
require 'redis'

module Cartman
  module_function
  def config(&block)
    if block_given?
      @config = Configuration.new(&block)
    else
      @config ||= Configuration.new
    end
  end
end
