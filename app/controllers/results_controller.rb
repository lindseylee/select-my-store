class ResultsController < ApplicationController

  def results
    age = params[:age]
    sex = params[:sex]
    style_ids = params[:style]
    id = params[:id]

    @store_results = Store.joins(:styles).uniq()
    .where('stores.min <= :age AND :age <= stores.max', {age: age})
    .where('styles.sex = :sex', {sex: sex})
    .where('styles.id' => style_ids)
    # .uniq()
    # binding.pry
    puts "RESULTS: #{@store_results.inspect}"
    
  end

end


