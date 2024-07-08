class ActivitiesLogsController < ApplicationController

def new
  @activity_log = ActivitiesLog.new
end

def create

  @activity_log = ActivitiesLog.new(activities_log_params)
    @activity_log.user = current_user
    if activity_log.save
      redirect_to health_logs_path, notice: "Infos mises à jour"
    else
      render :new, status: :unprocessable_entity
    end
end

private

def activities_log_params
  params.require(:activities_log).permit(:date, :comment, :picture, :activity_id)
end


end
