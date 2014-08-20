class FeedbacksController < ApplicationController
  
  def new
    @feedback = Feedback.new
  end
    
  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.deliver
      render :thank_you
    else
      render :new
    end
  end
  
end