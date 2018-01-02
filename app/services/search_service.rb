class SearchService

  def initialize(filter)
    @filter = filter || {}
    @conn = Faraday.new(:url => 'https://api.bestbuy.com/') do |f|
      f.adapter  Faraday.default_adapter
    end
  end

  def stores_within_25_miles
    response = conn.get do |req|
      req.url = "v1/stores(area(#{filter},25)"
      req.params[:apiKey] = ENV["best_buy_key"]
      req.params[:format] = "json"
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    attr_reader :filter, :conn
end
