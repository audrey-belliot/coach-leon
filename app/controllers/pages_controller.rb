#require strava

class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.all.sample
    @recipe = Recipe.all.sample
    return unless user_signed_in?

    @plan = current_user.plans.order(:start_date).last
    plan_logs
    if @plan
      @plan_activities_count = ActivitiesLog.where(user: current_user, date: @plan.start_date..@plan.end_date).count
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

    @progression = @current_day_of_plan.fdiv(28)*100
    total_weight
  end

  def my_logs
    @plan = current_user.plans.order(:start_date).last
  end

  private

  def total_weight
    user_health_logs = HealthLog.where(user: current_user)
      .where(date: @plan.start_date..@plan.end_date)
      .order(:date)
    if user_health_logs.exists?
      oldest_weight = user_health_logs.first.weight
      newest_weight = user_health_logs.last.weight
      # Calculer la différence de poids
      @weight_difference = newest_weight - oldest_weight
    else
      @weight_difference = nil # Aucun log de poids pour le current_user dans la période du plan
    end
  end

  def plan_logs
    @total_calories_loss = Activity.joins(:activities_logs)
      .where(activities_logs: { user_id: current_user.id, date: @plan.start_date..@plan.end_date })
      .sum(:calories_loss)

    @activities_count = Activity.joins(:plans_activities)
      .where(plans_activities: { plan_id: @plan.id })
      .joins(:activities_logs)
      .where(activities_logs: { user_id: current_user.id })
      .count

  end

end
