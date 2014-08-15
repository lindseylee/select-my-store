class ResultsController < ApplicationController
  def results
    @stores = StoreStyle.find(params[:id])
  end
end


#write method that queries the database for age, sex, and styles