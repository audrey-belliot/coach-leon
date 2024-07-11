class PlansController < ApplicationController

  def show
    @plan = Plan.find(params[:id])
    @plans_activities = @plan.plans_activities
    @plans_recipes = @plan.plans_recipes
  end

  def new
    @plan = Plan.new
    @plan.user = current_user
  end

  def create
  end

  private

  def plan_params
    params.require(:plan).permit(:firstname, :birthdate, :goal, :weight, :food_preferences, :sport_preferences)
  end






end
