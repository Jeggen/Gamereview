class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:rating])
  end

 def create
   review = Review.new(review_params)

   respond_to do |format|
     if @review.save
       format.html { redirect_to root_url, notice: 'Review was successfully updated.' }
       format.json { render :show, status: :ok, location: @review }
     else
       format.html { render :new }
       format.json { render json: @review.errors, status: :unprocessable_entity }
     end
   end
 end

   private

    def post_params
      params.require(:post).permit(:message)
    end
 end
