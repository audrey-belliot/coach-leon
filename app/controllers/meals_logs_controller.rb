class MealsLogsController < ApplicationController
  before_action :set_activity, only: %i[create new]

  def index
    @meals_logs = current_user.meals_logs
    @numbermeals = @meals_logs.count
    @plan = current_user.plans.order(:start_date).last
  end

  def show
    @meal_log = MealsLog.find(params[:id])
    @meal_log_date = @meal_log.recipe.created_at
  end

  def new
    @meal_log = MealsLog.new
  end

  def create
    @meal_log = MealsLog.new(meals_log_params)
    @meal_log.user = current_user
    @meal_log.recipe = @meal
    if @meal_log.save
      redirect_to meals_logs_path, data: { turbo: false }, notice: "Repas ajouté !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @meal_log = MealsLog.find(params[:id])
    @meal_log.destroy
    redirect_to meals_logs_path, status: :see_other
  end

  private

  def meals_log_params
    params.require(:meals_log).permit(:date, :comment, :recipe_id)
  end

  def set_activity
    @meal = Recipe.find(params[:recipe_id])
  end
end
