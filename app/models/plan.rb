class Plan < ApplicationRecord
  belongs_to :user
  has_many :plans_activities
  has_many :plans_recipes

  PLAN_INFO = [
    {name:'Programme Summer Shred', description:"Un plan pour se mettre en forme pour l’été : 3 x 30 min de renforcement musculaire + 2 x 30 min de cardio par semaine. 2 litres d'eau par jour. 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.", goal:"Perdre du poids pour être aussi svelte que Léon"},
    {name:'Programme Gain de muscle', description: "Un plan axé sur la prise de masse musculaire : 5 x 60 min de musculation + 2 x 30 min de cardio par semaine. 2 litres d'eau par jour. 430g de glucides (1 760 kcal), 155g de protéines (640 kcal) et 86g de lipides (800 kcal) par jour.", goal:"Être musclé comme Léon"},
    {name:'Programme Prépa Marathon', description: "Un plan pour préparer un marathon : une séance de fractionnés (30 min), une séance en endurance fondamentale (30 min) et une sortie longue (2h) par semaine + 1 x 30 min de renforcement musculaire. 2 litres d'eau par jour. 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.", goal:"Préparer un marathon pour courir aussi bien que Léon"},
    {name:'Programme perte de poids', description: "Un plan pour perdre du poids : 3 x 30 min de cardio par semaine + 2 x 30 min de renforcement musculaire. 3 x 30 min de renforcement musculaire + 2 x 30 min de cardio par semaine. 2 litres d'eau par jour. 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.", goal:'Autre!'},
].freeze

end
