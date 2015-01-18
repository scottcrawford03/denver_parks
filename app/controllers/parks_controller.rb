class ParksController < ApplicationController
  layout 'park_show', only: :show

  def index
    @search = Park.search(params[:q])
    @parks = @search.result.page(params[:page])
    @markers = @search.result
  end

  def show
    @park = Park.find(params[:id])
  end
end
