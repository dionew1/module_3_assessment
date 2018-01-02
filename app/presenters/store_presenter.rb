class StorePresenter

  def initialize(filter)
    @filter = filter
  end

  def stores_by_zip
    service.stores_within_25_miles[:stores].map do |raw_store|
      Store.new(raw_store)
    end
  end

  private
    attr_reader :filter

    def service
      SearchService.new(filter)
    end
end
