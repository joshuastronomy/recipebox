class RecipesController < ApplicationController
  def index
     @recipes = Recipe.page(params[:page]).per(5)
  end

  def show
     @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe.fixins.build
    @recipe.steps.build
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(rec_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(rec_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private
    def rec_params
      params.require(:recipe).permit(:name, :description, fixins_attributes: [:id, :name, :amount, :_destroy], steps_attributes: [:id, :title, :description, :_destroy])
    end
end
