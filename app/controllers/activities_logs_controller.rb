class ActivitiesLogsController < ApplicationController
  before_action :set_activity, only: %i[create new]

  def index
    @activities_logs = current_user.activities_logs
    @total = @activities_logs.count
    @plan = current_user.plans.order(:start_date).last

    @athlete_client = Strava::Api::Client.new(access_token: session[:strava_access_token])

    if @athlete_client.access_token != nil && !params[:error]
      @activities = @athlete_client.athlete_activities

      @activities.each do |strava|
        # activity_strava = Activity::SPORTS_STRAVA.find { |element| element[:sport_type] == strava.sport_type }

        if !ActivitiesLog.where(strava_id: strava.upload_id.to_s).exists?

          if strava.sport_type == "Run"
            ActivitiesLog.create!(date: strava.start_date, activity: Activity.find_by(activity: "Course à pied"), user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
          elsif strava.sport_type == "Ride"
            ActivitiesLog.create!(date: strava.start_date, activity: Activity.find_by(activity: "Vélo de route"), user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
          elsif strava.sport_type == "Walk"
            ActivitiesLog.create!(date: strava.start_date, activity: Activity.find_by(activity: "Marche rapide"), user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
          elsif strava.sport_type == "Swim"
            ActivitiesLog.create!(date: strava.start_date, activity: Activity.find_by(activity: "Natation"), user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
          elsif strava.sport_type == "Hike"
            ActivitiesLog.create!(date: strava.start_date, activity: Activity.find_by(activity: "Randonnée"), user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
          else
            ActivitiesLog.create!(date: strava.start_date, activity: Activity.last, user: current_user, comment: strava.name, duration: strava.elapsed_time.fdiv(60), strava_id: strava.upload_id.to_s)
          end

        end
      end

    elsif @athlete_client.access_token != nil
      redirect_to auth_strava_path
    else
      @activities_logs = current_user.activities_logs
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
