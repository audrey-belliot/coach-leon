class ActivitiesLogsController < ApplicationController
  before_action :set_activity, only: %i[create new destroy]

def index
  @activities_logs = current_user.activities_logs
  @total = @activities_logs.count
end

def new
  @activity_log = ActivitiesLog.new
end

def create
  @activity_log = ActivitiesLog.new(activities_log_params)
  @activity_log.user = current_user
  @activity_log.activity = @activity
  if @activity_log.save
    redirect_to health_logs_path, notice: "Activité ajoutée !"
  else
    render :new, status: :unprocessable_entity
  end
end

def destroy
  raise
  @activity_log = ActivityLog.find(params[:id])
  @activity_log.destroy
  redirect_to activity_path(@activiy_log.activity), status: :see_other
end


private

def activities_log_params
  params.require(:activities_log).permit(:date, :comment, :picture, :activity_id, :duration)
end

def set_activity
  @activity = Activity.find(params[:activity_id])
end

end
