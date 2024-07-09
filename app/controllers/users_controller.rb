class UsersController < ApplicationController

  def update
    @user = current_user
    if @user.update(user_params)
      selected_plan = select_plan(@user.goal)
      if selected_plan
        selected_plan.update(user: @user)
         redirect_to plan_path(selected_plan)
      else
        render 'plans/new', status: :unprocessable_entity
      end
    else
       render 'plans/new', status: :unprocessable_entity
    end

  end

  private
  def user_params
    params.require(:user).permit(:firstname, :birthdate, :goal, :food_preferences, :sport_preferences)
  end

  def select_plan(goal)
    case goal
    when "Je perds du poids pour être aussi svelte comme Léon"
      Plan.find_by(name:"Programme perte de poids")
    when "Je prépare un marathon comme Léon"
      Plan.find_by(name:"Marathon Prep")
    when "Je veux être musclé comme Léon"
      Plan.find_by(name:"Muscle Gain")
    else
      Activity.all
    end
  end
end
