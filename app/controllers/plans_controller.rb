class PlansController < ApplicationController

  def show
    @plan = Plan.find(params[:id])
    @plans_activities = @plan.plans_activities
    @plans_recipes = @plan.plans_recipes
  end

end
