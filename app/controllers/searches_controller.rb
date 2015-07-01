class SearchesController < ApplicationController
  def index

  end

  def show
    @search = Search.new(params[:keyword])
    @search.populate_results
  end

end
