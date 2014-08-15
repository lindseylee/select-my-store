class ResultsController < ApplicationController

  def results
    age = params[:age]
    sex = params[:sex]
    style = params[:style]
    # @age = #write activerecord method here
    # @sex = Style.where("sex = ?", [:sex] )
    # @style = StoreStyle.where(:style_id => [1,2,3]

    @store_results = Store.joins(:styles)
    .where('stores.min <= 18 AND 18 <= stores.max')
    .where('styles.sex = ?', "female")
    .where('styles.id' => [3,4,6])
    .uniq
  end

end


#write method that queries the database for age, sex, and styles

@store_results = Store.includes(:styles)
      .where('stores.min > 18 AND 18 < stores.max')
      .where('styles.sex = ?', 'female')
      .where('styles.id => [2, 3, 4]')