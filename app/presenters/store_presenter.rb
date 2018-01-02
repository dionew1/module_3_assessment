class StorePresenter

  def initialize(filter)
    @filter = filter
  end

  def stores_by_zip
    service.stores_within_25_miles
  end

  private
    attr_reader :filter

    def service
      SearchService.new(filter)
    end
end
