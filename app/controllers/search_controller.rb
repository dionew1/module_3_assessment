class SearchController < ApplicationController
  def index
    @stores = StorePresenter.new(params[:search]).stores_by_zip
  end
end
