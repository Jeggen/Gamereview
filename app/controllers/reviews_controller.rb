class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

 def create
   @review = Review.new(review_params)
   @review.user = current_user

     if @review.save
       format.html { redirect_to root_url, notice: 'Review was successfully updated.' }
       format.json { render :show, status: :ok, location: @review }
     else
       format.html { render :new }
       format.json { render json: @review.errors, status: :unprocessable_entity }
     end
   end

   private

    def review_params
      params.require(:rating)
    end
 end
