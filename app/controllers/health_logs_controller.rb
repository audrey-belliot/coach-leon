class HealthLogsController < ApplicationController
  def index
    if params[:start_date].nil?
      @plan = current_user.plans.order(:start_date).last
      @start_date = @plan.start_date
      @end_date = Date.today

    else
      @start_date = params[:start_date]
      @end_date = params[:end_date]
    end
    @healthlogs = HealthLog.where(date: @start_date..@end_date, user: current_user).to_a
    @healthlogs = @healthlogs.sort_by{ |k| k["date"]}
    @allactivities = ActivitiesLog.where(date: @start_date..@end_date, user: current_user)
    @allmeals = MealsLog.where(date: @start_date..@end_date, user: current_user)
    @weights = []
    @dates = []
    @activities = []
    @meals = []
    @mood = []
    @healthlogs.each do |healthlog|
      @weights << healthlog.weight
      @dates << healthlog.date.strftime("%d/%m/%Y")
      @activities << healthlog.rating_activity * 10
      @meals << healthlog.rating_nutrition * 10
      @mood << healthlog.rating_mood * 10
    end


  end

  def new
    @health_log = HealthLog.new
  end

  def create
    @health_log = HealthLog.new(health_log_params)
    @health_log.user = current_user
    if @health_log.save
      redirect_to health_logs_path, data: { turbo: false }, notice: "Infos mises à jour"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def health_log_params
    params.require(:health_log).permit(:date, :weight, :rating_nutrition, :rating_activity, :rating_mood, :water)
  end
end
