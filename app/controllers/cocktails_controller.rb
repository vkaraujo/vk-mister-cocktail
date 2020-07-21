class CocktailsController < ApplicationController
  def index
		@cocktails = Cocktail.all
	end

	def show
		@cocktail = Cocktail.find(params[:id])
		@dose = Dose.new
	end

	def new
		@cocktail = Cocktail.new
	end

	def create
		@cocktail = Cocktail.new(cocktail_params)
		@cocktail.save
		redirect_to index_path
	end

	private

	def cocktail_params
		params.require(:cocktail).permit(:name, :photo)
	end
end