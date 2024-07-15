class ActivitiesController < ApplicationController

def index
  @activities = Activity.all
  @cardio = Activity.where(category: "Cardio")
  @muscu = Activity.where(category: "Musculation")
end

def show
  @activity = Activity.find(params[:id])
end



end
