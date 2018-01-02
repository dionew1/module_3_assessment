class Store

  attr_reader :name, :city, :phone_number, :distance, :store_type

  def initialize(attrs)
    @attrs          = attrs || {}
    @name           = attrs[:longName]
    @city           = attrs[:city]
    @distance       = attrs[:phone]
    @phone_number   = attrs[:distance]
    @store_type     = attrs[:storeType]
  end



  private
    attr_reader :attrs
end
