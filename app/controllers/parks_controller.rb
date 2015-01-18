class ParksController < ApplicationController
  def index
    @search = Park.search(params[:q])
    @parks = @search.result
  end
end
