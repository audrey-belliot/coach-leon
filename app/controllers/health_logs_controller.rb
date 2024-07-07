class HealthLogsController < ApplicationController

  def index
    @healthlogs = HealthLog.all.to_a
    @weights = []
    @dates = []
    @activities = []
    @meals = []
    @mood = []
    @healthlogs.each do |healthlog|
      @weights << healthlog.weight
      @dates << healthlog.date.strftime("%b %Y")
      @activities << healthlog.rating_activity * 10
      @meals << healthlog.rating_nutrition * 10
      @mood << healthlog.rating_mood * 10
    end

  def new
    @health_log = HealthLog.new
  end

  def create
    @health_log = HealthLog.new(health_log_params)
    @health_log.user = current_user
    if @health_log.save
      redirect_to @health_log, notice: "Infos mises à jour"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def health_log_params
    params.require(:health_log).permit(:date, :weight, :rating_nutrition, :rating_activity, :rating_mood, :water)
  end
end
