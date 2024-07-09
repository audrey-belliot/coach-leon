class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.all.sample
    @recipe = Recipe.all.sample
    if user_signed_in?
      @plan = current_user.plans.order(:start_date).last
    end
      if @plan
        @current_day_of_plan = (Date.today - @plan.start_date).to_i + 1
      else
        @current_day_of_plan = 0
      end
    if user_signed_in? && HealthLog.where(user:current_user).present?
      @weight = HealthLog.where(user:current_user).last.weight - HealthLog.where(user:current_user).first.weight
  end
end

end
