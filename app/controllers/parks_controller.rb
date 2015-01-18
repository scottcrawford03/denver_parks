class ParksController < ApplicationController
  def index
<<<<<<< HEAD
    @parks = Park.all
=======
    @search = Park.search(params[:q])
    @parks = @search.result.page(params[:page])
>>>>>>> map-markers
  end
end
