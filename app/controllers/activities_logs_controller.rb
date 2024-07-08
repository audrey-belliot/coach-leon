class ActivitiesLogsController < ApplicationController
  def index
    @activities_logs = current_user.activities_logs
    @total = @activities_logs.count
  end
end
