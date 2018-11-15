class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if  @dose.save
      redirect_to cocktail_path(@cocktail)
      flash[:notice] = "Successfully created"
    else
      render :new
      flash[:alert] = "Check your must-complete blocks"
    end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path    # DELETE /restaurantss/:id
  end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
