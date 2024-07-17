#require strava

class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.all.sample
    @recipe = Recipe.all.sample
    if user_signed_in?
    @activities_calories = ActivitiesLog.where(user: current_user)
    @calories = 0
    @activities_calories.each do |activity_log|
      @calories += activity_log.activity.calories_loss
      end
    end

    if user_signed_in?
      @plan = current_user.plans.order(:start_date).last
    end
      if @plan
        @current_day_of_plan = (Date.today - @plan.start_date).to_i
        @current_week_of_plan = ((@current_day_of_plan) / 7) + 1
        @current_food_plan = @plan.foodplan
        if @current_week_of_plan == 1
          @myplan = @plan.week1
        elsif @current_week_of_plan == 2
          @myplan = @plan.week2
        elsif @current_week_of_plan == 3
          @myplan = @plan.week3
        elsif @current_week_of_plan == 4
          @myplan = @plan.week4
        else
          @myplan = "Vous devez créer un nouveau plan"
        end
      else
        @current_day_of_plan = 0
        @current_week_of_plan = 0
      end
    if user_signed_in? && HealthLog.where(user:current_user).present?
      @weight = HealthLog.where(user:current_user).last.weight - HealthLog.where(user:current_user).first.weight
  end
end

def my_logs
  @plan = current_user.plans.order(:start_date).last
end



end
