class Plan < ApplicationRecord
  belongs_to :user
  has_many :plans_activities
  has_many :plans_recipes

  PLAN_INFO = [
    {name:'Summer Shred', description:'a', goal:'Je perds du poids pour être aussi svelte comme Léon'},
    {name:'Marathon Prep', description:'b', goal:'Je prépare un marathon comme Léon'},
    {name:'Muscle Gain', description:'c', goal:'Je veux être musclé comme Léon'},
    {name:'Programme perte de poids', description:'d', goal:'Autre!'},
].freeze

end
