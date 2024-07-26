class ActivitiesController < ApplicationController
  def index
    @activities = Activity.where.not(activity:"Activité Strava")
    @cardio = @activities.where(category: "Cardio")
    @muscu = @activities.where(category: "Musculation")
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
