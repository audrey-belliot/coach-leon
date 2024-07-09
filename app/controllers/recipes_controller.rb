class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @petitdejs = Recipe.where(category: "Petit-déjeuner")
    @dejs = Recipe.where(category: "Déjeuner")
    @diners = Recipe.where(category: "Diner")
  end
end
