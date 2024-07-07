class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.all
    @recipe = Recipe.all.sample
  end
end
