class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
   render json: @ingredients
  end

  def edit

    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to ingredients_path
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
  end

  def new

    @ingredient = Ingredient.new
    
  end
  def create

  ingredient = Ingredient.create(ingredient_params)
  render json: ingredient
   # redirect_to ingredients_path
   end

  def ingredient_params

    params.require(:ingredient).permit(:name)

  end

end
