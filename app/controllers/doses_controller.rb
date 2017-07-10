class DosesController < ApplicationController
  # before_action :set_cocktail, only: [:new, :create]
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.description = dose_params['description']
    if dose_params[:ingredient_id] != ""
      @dose.ingredient = Ingredient.find(dose_params[:ingredient_id])
    end
     @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new()
    @ingredients = Ingredient.all
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  # end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end

