class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.all
    @recipe = Recipe.all.sample
    if user_signed_in?
      @weight = HealthLog.where(user:current_user).last.weight - HealthLog.where(user:current_user).first.weight
    end
  end
end
