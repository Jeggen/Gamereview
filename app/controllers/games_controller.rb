class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

 def create
   @game = Game.new(game_params)

     if @game.save
       format.html { redirect_to root_url, notice: 'Game was successfully created.' }
       format.json { render :show, status: :ok, location: @game }
     else
       format.html { render :new }
       format.json { render json: @game.errors, status: :unprocessable_entity }
     end
   end

   private

    def review_params
      params.require(:title, :description)
    end
 end
