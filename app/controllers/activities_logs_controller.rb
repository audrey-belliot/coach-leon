class ActivitiesLogsController < ApplicationController
  before_action :set_activity, only: %i[create new]

  def index
    @activities_logs = current_user.activities_logs
    @total = @activities_logs.count
    @plan = current_user.plans.order(:start_date).last

    athlete_client = Strava::Api::Client.new(access_token: session[:strava_access_token])
    @activities = athlete_client.athlete_activities

    @activities.each do |strava|
      # si l'activité strava n'existe pas dans la DB
        # on cherche dans la DB les activities logs
        # on regarde si l'activité strava correspond à une activity log
      # si non : on créé une acivity log strava
      if !ActivitiesLog.where(strava_id: strava.upload_id.to_s).exists?
        ActivitiesLog.create!(date: strava.start_date, activity: Activity.last, user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
      end
      end
  end

  def show
    @activity_log = ActivitiesLog.find(params[:id])
    @activity_log_date = @activity_log.activity.created_at
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
    @activity_log = ActivitiesLog.find(params[:id])
    @activity_log.destroy
    redirect_to activities_logs_path, status: :see_other
  end

  def new
    @activity_log = ActivitiesLog.new
  end

  private

  def activities_log_params
    params.require(:activities_log).permit(:date, :comment, :picture, :activity_id, :duration)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

end
