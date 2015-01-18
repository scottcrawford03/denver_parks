class ParksController < ApplicationController
  def index
    @search = Park.search(params[:q])
    @parks = @search.result.page(params[:page])
    @markers = @search.result
  end
end
