class SearchService

  def initialize(filter)
    @filter = filter || {}
    @conn = Faraday.new(:url => 'https://api.bestbuy.com/') do |f|
      faraday.adapter  Faraday.default_adapter
    end
  end

  def stores_within_25_miles
    response = conn.get do |req|                           # GET http://sushi.com/search?page=2&limit=100
      req.url ''
      req.params[:apiKey] = ENV["best_buy_key"]
    end
  end

  private
    attr_reader :filter
end
