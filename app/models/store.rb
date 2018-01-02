class Store

  attr_reader :name, :city, :phone_number, :distance, :store_type

  def initialize(attrs)
    @attrs          = attrs || {}
    @name           = attrs[:longName]
    @city           = attrs[:city]
    @distance       = attrs[:distance]
    @phone_number   = attrs[:phone]
    @store_type     = attrs[:storeType]
  end



  private
    attr_reader :attrs
end
