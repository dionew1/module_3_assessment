class SearchController < ApplicationController
  def index
    @stores = StorePresenter.new(params[:search])
  end
end
