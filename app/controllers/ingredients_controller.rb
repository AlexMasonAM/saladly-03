class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    session[:greg_is_cool] = 'hey what is up! yes he is'
    # render the page
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      flash[:info] = "Ingredient saved!"
      redirect_to ingredients_path
    else
      flash.now[:danger] = @ingredient.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
      render :edit
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    
    @ingredient.destroy
    
    redirect_to ingredients_path
  end

private

  def ingredient_params
    params.require(:ingredient).permit(:name, :units, :price_per_unit, :quantity)
  end
end
