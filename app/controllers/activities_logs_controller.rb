class ActivitiesLogsController < ApplicationController
  def index
    @activities_logs = current_user.activities_logs
    @total = @activities_logs.count
  end

  def show
    @activity_log = ActivitiesLog.find(params[:id])
    @activity_log_date = @activity_log.activity.created_at
  end
end
