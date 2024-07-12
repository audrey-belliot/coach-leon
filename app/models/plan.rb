class Plan < ApplicationRecord
  belongs_to :user
  has_many :plans_activities
  has_many :plans_recipes

  PLAN_INFO = [
    {name:'Programme Summer Shred',
     description: "Un plan pour se mettre en forme pour l’été",
     week1: "2 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
     week2: "3 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
     week3: "3 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
     week4: "4 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
     foodplan: "Boire 2 litres d'eau, 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.",
     goal:"Avoir le summer body de Léon"},
    {name:'Programme Gain de muscle',
     description: "Un plan axé sur la prise de masse musculaire",
     week1: "2 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
     week2: "3 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
     week3: "3 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
     week4: "4 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
     foodplan: "Boire 2 litres d'eau, 430g de glucides (1 760 kcal), 155g de protéines (640 kcal) et 86g de lipides (800 kcal) par jour.",
     goal:"Être musclé comme Léon"},
    {name:'Programme Prépa Marathon',
     description: "Un plan pour préparer un marathon",
     week1: "Une séance de renforcement musculaire de 30 min + une séance de fractionnés de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 1h30",
     week2: "Deux séances de renforcement musculaire de 30 min + une séance de fractionnés de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 1h45",
     week3: "Une séance de renforcement musculaire de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 2h00",
     week4: "Deux séances de renforcement musculaire de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 2h00",
     foodplan: "Boire 2 litres d'eau, 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.",
     goal:"Préparer un marathon pour courir aussi bien que Léon"},
    {name:'Programme perte de poids',
     description: "Un plan pour perdre du poids",
     week1: "Séance 1 : 20 minutes en alternant 1 min de course au rythme que vous souhaitez et 1 minute de marche.
             + Séance 2 : 20 minutes en alternant 1 min 15 de course et 45 secondes de marche toujours au rythme que vous souhaitez.",
     week2: "Séance 1 : 25 minutes en alternant 1 minute de course et une minute de marche. Pour augmenter la difficulté et les bienfaits, inclinez le tapis entre 2 et 5%.
             + Séance 2 : 25 min en alternant 1min15 de course et 45 secondes de marche.",
     week3: "Séance 1 : 25 minutes en alternant 30 secondes de course avec une inclinaison entre 3 et 5% et 30 secondes de marche (sans inclinaison).
             + Séance 2 : 30 minutes en alternant 30 secondes de course avec une inclinaison entre 3 et 5% et 30 secondes de marche.",
     week4: "Séance 1 : 25 minutes en alternant 1min30 de course (toujours avec inclinaison, à augmenter si ça vous paraît trop facile) et 30 secondes de marche.
             + Séance 2 : 30 minutes en alternant 1min30 de course (toujours avec inclinaison, à augmenter si ça vous paraît trop facile) et 30 secondes de marche.",
     foodplan: "Boire 2 litres d'eau, 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.",
     goal:'Perdre du poids pour être aussi svelte que Léon'},
].freeze

end
