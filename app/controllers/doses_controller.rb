class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new()
    @dose.description = dose_params['description']
    @dose.ingredient = Ingredient.find(dose_params['ingredient_id'])
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save!
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


  def new
    @dose = Dose.new()
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id)
  end
end

