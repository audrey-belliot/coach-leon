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

  end
end
