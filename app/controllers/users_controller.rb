class UsersController < ApplicationController

  def update
    @user = current_user
    if @user.update(user_params)
      generated_plan = generate_plan(@user.goal)
      redirect_to plan_path(generated_plan)
    else
       render 'plans/new', status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :birthdate, :goal, :food_preferences, :sport_preferences)
  end

  def generate_plan(goal)
    plan_info = Plan::PLAN_INFO.find{|element| element[:goal] == goal}
    start_date = Date.today
    end_date = start_date + 1.month
    Plan.create!(name: plan_info[:name], description: plan_info[:description], week1: plan_info[:week1], week2: plan_info[:week2], week3: plan_info[:week3], week4: plan_info[:week4], foodplan: plan_info[:foodplan], user:current_user, start_date:start_date, end_date:end_date)
  end

    # case goal
    # when "Je perds du poids pour être aussi svelte comme Léon"
    #   Plan.find_by(name:"Programme perte de poids")
    # when "Je prépare un marathon comme Léon"
    #   Plan.find_by(name:"Marathon Prep")
    # when "Je veux être musclé comme Léon"
    #   Plan.find_by(name:"Muscle Gain")
    # else
    #   Activity.all
    # end

end
