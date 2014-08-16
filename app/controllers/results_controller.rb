class ResultsController < ApplicationController

  def results
    age = params[:age]
    sex = params[:sex]
    style = params[:style]

    @store_results = Store.joins(:styles)
    .where('stores.min <= :age AND :age <= stores.max', {age: age})
    # .where('styles.sex = ?', {sex: sex})
    # .where('styles.id' = {style: style})
    # .uniq()
    # binding.pry
    puts "RESULTS: #{@store_results.inspect}"
    
  end

end
