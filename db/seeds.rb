puts "Cleaning the seeds..."

ActivitiesLog.destroy_all
HealthLog.destroy_all
MealsLog.destroy_all
PlansActivity.destroy_all
PlansRecipe.destroy_all
Recipe.destroy_all
Activity.destroy_all
Plan.destroy_all
User.destroy_all

puts "Seeds cleaned !"

puts "Creating new users..."

users = [
  Kevin = User.create!(email: "kevin@gmail.com", password: "password", firstname: "Kévin", goal: "Avoir le summer body de Léon", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: "", picture:"https://avatars.githubusercontent.com/u/159252673?v=4"),
  Audrey = User.create!(email: "audrey@gmail.com", password: "password", firstname: "Audrey", goal: "Etre aussi svelte que Léon", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: "", picture:"https://avatars.githubusercontent.com/u/92102977?v=4"),
  Marie = User.create!(email: "marie@gmail.com", password: "password", firstname: "Marie", goal: "Courir un marathon aussi bien que Léon", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: "", picture:"https://avatars.githubusercontent.com/u/155112860?v=4"),
  Valentin = User.create!(email: "valentin@gmail.com", password: "password", firstname: "Valentin", goal: "Être musclé comme Léon", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: "", picture:"https://avatars.githubusercontent.com/u/159618368?v=4")
]

puts "Creating breakfast recipes..."
bouchees_choco_fraise = Recipe.create(
  category: "Petit-déjeuner",
  name: "Bouchées choco fraise",
  ingredient: "400g de skyr, 60g de chocolat noir, 20g de sirop d’agave, 200g de fraise",
  details: "Recette pour 6 parts. 1 collation = 2 parts. Étape 1: Commencez par laver soigneusement les fraises et retirez les queues. Ensuite, coupez-les en petits dés uniformes. Étape 2: Dans un bol, combinez le skyr avec les dés de fraises et le sirop d'agave. Assurez-vous que les ingrédients sont bien mélangés pour obtenir une texture homogène. Étape 3: Sur une feuille de papier cuisson, formez six petites boules avec le mélange de skyr et de fraises. Placez-les ensuite au congélateur pendant au moins deux heures pour les raffermir. Étape 4: Faites fondre le chocolat noir au bain-marie ou au micro-ondes jusqu'à ce qu'il soit lisse et liquide. Sortez les bouchées du congélateur et trempez-les une à une dans le chocolat fondu, en veillant à bien les enrober. Placez-les de nouveau au frais jusqu'à ce que le chocolat durcisse.",
  calories: "350",
  picture: "https://www.regilait.com/app/uploads/cache/2024/04/regilait-recettte-bouchees-a-la-fraise-et-au-chocolat-5308647c-600x600.webp"
)
pumpkin_bread = Recipe.create(
  category: "Petit-déjeuner",
  name: "Pumpkin bread",
  ingredient: "65g de farine complète, 20g de whey, 2 c.à.c de levure chimique, 1 c.à.c de bicarbonate de soude, 1 c.à.s de quatres-épices, 1 pincée de sel, 210g de purée de citrouille (possibilité d’en trouver dans le rayon surgelé), 125g de skyr, 20g d’huile de coco, 30g de miel, 2 oeufs",
  details: "Recette pour 2 parts. 1 petit déjeuner = 1 part. Étape 1: Préchauffer le four à 180°C. Dans un saladier, mélanger la farine, la whey, la levure, le bicarbonate, le quatre-épices et le sel. Étape 2: Dans un deuxième bol, mélanger la purée de citrouille, le beurre fondu, le miel et les œufs. Mélanger les deux préparations. Étape 3: Couvrir le fond et les bords du moule à cake de papier sulfurisé. Verser la pâte et enfourner pendant 50 min. Vérifier la cuisson à l’aide d’un couteau, s'il ressort propre, le cake est cuit. Étape 4: Servir chaud ou froid.",
  calories: "Inventé",
  picture: "https://www.onceuponachef.com/images/2009/09/Pumpkin-Bread-100.jpg"
)
smoothie_rose = Recipe.create(
  category: "Petit-déjeuner",
  name: "Smoothie rose",
  ingredient: "100g de skyr, 200ml de lait d'amande, 150g de fruits rouges, 30g de whey vanille, 100g de banane, 10g de graines de chia, 10g de noix de coco râpée",
  details: "Étape 1: La veille, congeler les morceaux de banane et les fruits rouges pour les utiliser le lendemain. Étape 2: Dans le bol du blender, combiner les fruits rouges et les morceaux de bananes congelés, le Skyr, le lait d’amande et la Whey. Étape 3: Mixer le tout pendant environ 30 secondes jusqu'à ce que la texture soit lisse et uniforme. Étape 4: Transférer la préparation mixée dans un bol. Étape 5: Saupoudrer de noix de coco râpée et de graines de chia, puis ajouter quelques fruits rouges frais pour décorer. Étape 6: Servir immédiatement.",
  calories: "Inconnu",
  picture: "https://cdn.pratico-pratiques.com/app/uploads/sites/3/2020/10/28103136/smoothie-fraises-framboises-cerise-et-grenade.jpg"
)
granola_miel_et_noix = Recipe.create(
  category: "Petit-déjeuner",
  name: "Granola miel et noix",
  ingredient: "140g flocons d'avoine, 40g noix concassées, 40g amandes concassées, 40g noix de cajou, 20g graines de citrouille, 20g miel, sirop d’érable, sirop d’agave, ou 10g de stévia crystal, 2 c-à-s huile de coco (ou d'huile d'olive), 2 c-à-c d'extrait de vanille",
  details: "Recette pour plusieurs portions. 1 portion = 70g. Étape 1: Préchauffer le four à 160°C et tapisser une plaque à pâtisserie de papier sulfurisé. Étape 2: Dans un grand bol, mélanger les flocons d'avoine, les noix concassées, les amandes concassées, les graines de tournesol et les graines de citrouille. Étape 3: Dans une petite casserole, chauffer le miel, l'huile de coco et l'extrait de vanille à feu doux, en remuant jusqu'à ce que le mélange soit homogène. Étape 4: Verser le mélange liquide sur les ingrédients secs dans le bol et remuer bien pour enrober uniformément. Étape 5: Étaler le mélange sur la plaque à pâtisserie préparée, en veillant à ce qu'il soit réparti uniformément. Étape 6: Faire cuire au four préchauffé pendant environ 15 à 20 minutes, en remuant à mi-cuisson, jusqu'à ce que le granola soit doré et croustillant. Étape 7: Retirer du four et laisser refroidir complètement sur la plaque. Étape 8: Une fois refroidi, casser le granola en morceaux et conserver dans un conteneur hermétique. Étape 9: Servir accompagné de 120g de skyr ou fromage blanc 0%.",
  calories: "300",
  picture: "https://www.latelierderoxane.com/blog/wp-content/uploads/dsc2061-787x590.jpg"
)
tartine_avocat_saumon = Recipe.create(
  category: "Petit-déjeuner",
  name: "Tartine avocat saumon fumé",
  ingredient: "3 tranches de pain complet, ou de seigle, ou protéiné, 60g d’avocat, 50g de Saumon fumé, 1 c-à-c de Jus de citron, Poivre noir",
  details: "Étape 1: Griller les tranches de pain. Étape 2: Écraser l'avocat et l'étaler sur le pain grillé. Étape 3: Disposer le saumon fumé par-dessus. Étape 4: Assaisonner avec un filet de jus de citron et du poivre noir moulu.",
  calories: "250",
  picture: "https://www.delicimo.fr/wp-content/uploads/2021/02/IMG_4918_2-1536x1024.jpg"
)
puts "Creating lunch recipes..."
salade_quinoa_avocat = Recipe.create(
  category: "Déjeuner",
  name: "Salade de quinoa et avocat",
  ingredient: "200g de quinoa, 1 avocat, 150g de tomates cerises, 1 concombre, 50g de feta, 30g de graines de tournesol, Jus de citron, Huile d'olive, Sel, Poivre",
  details: "Étape 1: Cuire le quinoa selon les instructions du paquet et laisser refroidir. Étape 2: Couper l'avocat, les tomates cerises et le concombre en dés. Étape 3: Dans un grand bol, mélanger le quinoa, les légumes coupés, la feta émiettée et les graines de tournesol. Étape 4: Assaisonner avec du jus de citron, de l'huile d'olive, du sel et du poivre. Mélanger bien. Étape 5: Servir frais.",
  calories: "450",
  picture: "https://cdn.chefclub.tools/uploads/recipes/cover-thumbnail/c61ddec1-ef82-4a4b-b6da-8aae69446369.jpg"
)
tacos_veggie = Recipe.create(
  category: "Déjeuner",
  name: "Tacos végétariens",
  ingredient: "1 oignon rouge, 1 tomate, 2 avocats, 120g de yaourt à la grecque, 2 brins de coriandre, 1 concombre, 2 citrons vets, 200g de tomates cerises, ail moulu, sel et poivre",
  details: "Étape 1: Eplucher et couper les avocats et l'oignon. Ajouter le jus de citron vert. Ecrasez grossièrement. Etape 2: Dans un bol, mettez le yaourt, du jus de citron, l'ail et mélangez bien. Etape 3: Lavez les tomates cerises et coupez les en deux. Epluchez le concombre et détaillez-le en rondelles. Etape 4: Dans chaque tortilla, déposez le guacamole, la sauce au yaourt, des rondelles de concombre et des tomates cerises.",
  calories: "450",
  picture: "https://img.passeportsante.net/1200x675/2022-10-19/shutterstock-1426196225.webp"
)
puts "Creating diner recipes..."
risotto_courgette = Recipe.create(
  category: "Diner",
  name: "Risotto courgette",
  ingredient: "Riz, ArborioCourgettes,Oignon, Ail, Bouillon de légumes, Vin blanc sec, Parmesan râpé, Beurre, Huile d'olive, Sel, Poivre",
  details: "Pour préparer un risotto de courgette, commencez par laver et couper les courgettes en petits dés, émincer finement l'oignon et l'ail, puis préparer le bouillon de légumes et le garder au chaud. Faites chauffer un peu d'huile d'olive dans une grande poêle, ajoutez les courgettes et faites-les revenir jusqu'à ce qu'elles soient tendres, puis réservez-les. Dans une grande casserole, faites chauffer un peu d'huile d'olive et ajoutez l'oignon émincé, faites revenir jusqu'à ce qu'il soit translucide, ajoutez l'ail et faites revenir une minute supplémentaire, puis ajoutez le riz Arborio et faites-le revenir pendant 2 à 3 minutes jusqu'à ce qu'il soit légèrement translucide. Versez le vin blanc sec dans la casserole et remuez jusqu'à ce qu'il soit presque entièrement évaporé. Ajoutez une louche de bouillon chaud au riz et remuez constamment jusqu'à ce que le liquide soit absorbé, continuez à ajouter le bouillon, une louche à la fois, en remuant constamment et en attendant que le liquide soit absorbé avant d'ajouter la suivante, cette étape prend environ 18 à 20 minutes. Lorsque le riz est presque cuit, ajoutez les courgettes réservées et continuez à cuire jusqu'à ce que le riz soit crémeux et tendre. Retirez la casserole du feu et ajoutez le beurre et le parmesan râpé, remuez bien pour obtenir une texture crémeuse, assaisonnez avec du sel et du poivre selon votre goût, puis servez le risotto chaud, garni de persil frais si désiré.",
  calories: "450",
  picture: "https://img.cuisineaz.com/660x660/2015/04/27/i47592-risotto-de-courgettes-au-parmesan.webp"
)
quiche_lorraine = Recipe.create(
  category: "Diner",
  name: "Quiche lorraine",
  ingredient: "Pâte brisée, Lardons, Crème fraîche, Œufs, Fromage râpé, Muscade, Sel, Poivre",
  details: "Pour préparer une quiche lorraine, commencez par préchauffer le four à 180°C. Étalez la pâte brisée dans un moule à tarte et piquez le fond avec une fourchette. Faites revenir les lardons dans une poêle jusqu'à ce qu'ils soient dorés et égouttez-les sur du papier absorbant. Dans un bol, battez les œufs avec la crème fraîche, le sel, le poivre et une pincée de muscade. Ajoutez les lardons et mélangez bien. Versez ce mélange sur la pâte brisée et parsemez de fromage râpé. Enfournez pendant 35-40 minutes, jusqu'à ce que la quiche soit dorée et bien cuite. Servez la quiche lorraine chaude ou tiède.",
  calories: "450",
  picture: "https://assets.afcdn.com/recipe/20221010/135915_w1024h1024c1cx999cy749cxt0cyt0cxb1999cyb1499.webp"
)
poelee_crevettes_ail = Recipe.create(
  category: "Diner",
  name: "Poêlée de crevettes à l'ail",
  ingredient: "Crevettes, Ail, Persil, Beurre, Huile d'olive, Citron, Sel, Poivre",
  details: "Pour préparer une poêlée de crevettes à l'ail, commencez par décortiquer les crevettes. Émincez finement l'ail et hachez le persil. Faites chauffer une grande poêle avec un peu d'huile d'olive et du beurre. Ajoutez les crevettes et faites-les revenir jusqu'à ce qu'elles soient roses et opaques. Ajoutez l'ail émincé et faites revenir pendant une minute supplémentaire. Assaisonnez avec du sel, du poivre et un peu de jus de citron. Parsemez de persil haché avant de servir. Servez la poêlée de crevettes chaude.",
  calories: "350",
  picture: "https://assets.afcdn.com/recipe/20200513/111128_w1024h576c1cx540cy960cxt0cyt0cxb1080cyb1920.jpg"
)
lasagnes_vegetariennes = Recipe.create(
  category: "Diner",
  name: "Lasagnes végétariennes",
  ingredient: "Pâtes à lasagnes, Épinards, Ricotta, Tomates, Oignon, Ail, Mozzarella, Parmesan, Huile d'olive, Sel, Poivre",
  details: "Pour préparer des lasagnes végétariennes, commencez par préchauffer le four à 180°C. Faites revenir l'oignon et l'ail émincés dans un peu d'huile d'olive jusqu'à ce qu'ils soient translucides. Ajoutez les tomates concassées et laissez mijoter pendant 10 minutes. Dans un bol, mélangez les épinards hachés avec la ricotta, le sel et le poivre. Dans un plat à lasagnes, étalez une couche de sauce tomate, une couche de pâtes à lasagnes, une couche de mélange d'épinards et de ricotta, puis répétez les couches. Terminez par une couche de sauce tomate et parsemez de mozzarella et de parmesan râpés. Enfournez pendant 35-40 minutes, jusqu'à ce que le dessus soit doré et bouillonnant. Servez les lasagnes chaudes.",
  calories: "500",
  picture: "https://assets.afcdn.com/recipe/20210212/117942_w1024h1024c1cx1060cy707cxt0cyt0cxb2121cyb1414.jpg"
)
gratin_legumes = Recipe.create(
  category: "Diner",
  name: "Gratin de légumes",
  ingredient: "Pommes de terre, Carottes, Courgettes, Crème fraîche, Fromage râpé, Beurre, Ail, Sel, Poivre, Muscade",
  details: "Pour préparer un gratin de légumes, commencez par éplucher et couper les pommes de terre, les carottes et les courgettes en fines rondelles. Préchauffez le four à 180°C. Frottez un plat à gratin avec de l'ail et beurrez-le. Disposez les légumes en couches dans le plat. Dans un bol, mélangez la crème fraîche, le sel, le poivre et une pincée de muscade. Versez ce mélange sur les légumes. Saupoudrez de fromage râpé et ajoutez quelques noisettes de beurre sur le dessus. Enfournez pendant 45 minutes à 1 heure, jusqu'à ce que les légumes soient tendres et le dessus doré. Servez le gratin de légumes chaud.",
  calories: "350",
  picture: "https://img.passeportsante.net/1200x675/2021-03-03/i100113-gratin-de-legumes.webp"
)

puts "Creating new activities..."

velo_route = Activity.create(
  category: "Cardio",
  activity: "Vélo de route",
  details: "Pédaler au moins pendant 30 minutes",
  duration: 30,
  calories_loss: 300,
  picture: "https://images2.giant-bicycles.com/b_white%2Cc_pad%2Ch_600%2Cq_80%2Cw_800/g54ppjat58aepovhzdx1/pratique-velo-route-endurance.jpg"
)
randonnee = Activity.create(
  category: "Cardio",
  activity: "Randonnée",
  details: "Marcher à proximité de chez soi et marcher pendant au moins 1h30",
  duration: 90,
  calories_loss: 450,
  picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiTdFDs8r5cYR-PKOkWuunqrGUY-qwT6mlng&s"
)
marche_rapide = Activity.create(
  category: "Cardio",
  activity: "Marche rapide",
  details: "À mi-chemin entre la marche de promenade et la course, la marche rapide est un véritable sport d'endurance. Elle s’effectue en moyenne à une allure allant de 6 à 9 km/h.",
  duration: 45,
  calories_loss: 350,
  picture: "https://cdn.shopify.com/s/files/1/0075/7661/7015/files/Marche_rapide_bon_pour_la_sante.jpg"
)
natation = Activity.create(
  category: "Cardio",
  activity: "Natation",
  details: "Vous pouvez alterner des longueurs avec un rythme soutenu avec des longueurs à un rythme normal, ou bien faire un entraînement avec une intensité faible, mais plus long sur la durée.",
  duration: 60,
  calories_loss: 500,
  picture: "https://www.nautismebretagne.fr/photo/720/60.jpg"
)
ski_fond = Activity.create(
  category: "Cardio",
  activity: "Ski de fond",
  details: "Peu traumatisant pour les articulations et très complet, le ski de fond sollicite tous les muscles du corps (bras, jambes, fessiers…), travaille l’équilibre et la coordination, et permet de développer ses fonctions respiratoires et cardiovasculaires.",
  duration: 120,
  calories_loss: 600,
  picture: "https://contents.mediadecathlon.com/p2503687/k$14ae7f4476ecd2b6b2e3cb469f72e908/1800x0/3120pt2080/6240xcr4160/default.jpg"
)
squat_jump = Activity.create(
  category: "Musculation",
  activity: "Squat Jump",
  details: "Descendre le poids du corps sur les talons sans décoller les talons du sol. Envoyer les fessiers vers l’arrière et serrer votre sangle abdominale. Lorsque vous remontez, faites un saut de manière explosive puis atterrir en fléchissant les genoux pour un meilleur amorti.",
  duration: 15,
  calories_loss: 150,
  picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ghFohl9UVjW2JitAch3IcXJuq4BxQXXblg&s"
)
chaise_mur = Activity.create(
  category: "Musculation",
  activity: "Chaise dos au mur",
  details: "Placer les jambes à 90° et rentrer le ventre. Placer vos mains sur vos épaules pour ne pas vous aider.",
  duration: 10,
  calories_loss: 50,
  picture: "https://boxlifemagazine.com/wp-content/uploads//2023/09/Untitled-design-2023-09-26T165219.471-1-1-1024x666.png"
)
strava = Activity.create(
  category: "Cardio",
  activity: "Activité Strava",
  picture: "https://www.trail-session.fr/wp-content/uploads/2020/03/20953843_1843953035619111_6661951630043065944_n.jpg"
)

puts "Activities created !"


puts "Creating new plans..."

plans = [
  Plan.create!(name: 'Programme Summer Shred',
               start_date: '2024-06-01',
               end_date: '2024-08-31',
               description: "Un plan pour se mettre en forme pour l’été",
               week1: "2 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
               week2: "3 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
               week3: "3 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
               week4: "4 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
               foodplan: "Boire 2 litres d'eau, 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.",
               user: Kevin),
  Plan.create!(name: 'Programme gain de muscle',
               start_date: '2024-01-01',
               end_date: '2024-03-31',
               description: "Un plan axé sur la prise de masse musculaire",
               week1: "2 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
               week2: "3 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
               week3: "3 sessions de 45 min de renforcement musculaire + 2 séances de 30 min de course ou vélo",
               week4: "4 sessions de 30 min de renforcement musculaire + 1 séances de 30 min de course ou vélo",
               foodplan: "Boire 2 litres d'eau, 430g de glucides (1 760 kcal), 155g de protéines (640 kcal) et 86g de lipides (800 kcal) par jour.",
               user: Audrey),
  Plan.create!(name: 'Prépa marathon',
               start_date: '2024-04-01',
               end_date: '2024-06-30',
               description: "Un plan pour préparer un marathon",
               week1: "Une séance de renforcement musculaire de 30 min + une séance de fractionnés de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 1h30",
               week2: "Deux séances de renforcement musculaire de 30 min + une séance de fractionnés de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 1h45",
               week3: "Une séance de renforcement musculaire de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 2h00",
               week4: "Deux séances de renforcement musculaire de 30 min + une séance en endurance fondamentale de 45 min + une sortie longue de 2h00",
               foodplan: "Boire 2 litres d'eau, 130g de glucides (540 kcal), 150g de protéines (630 kcal) et 70g de lipides (630 kcal) par jour.",
               user: Marie),
  Plan.create!(name: 'Programme perte de poids',
               start_date: '2024-07-01',
               end_date: '2024-09-30',
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
               user: Valentin)
]


puts "Plans created !"

puts "Creating new plan activity..."

plan_activities = [
  PlansActivity.create!(plan: Plan.first, activity: Activity.first),
  PlansActivity.create!(plan: Plan.second, activity: Activity.second),
  PlansActivity.create!(plan: Plan.third, activity: Activity.third),
  PlansActivity.create!(plan: Plan.last, activity: Activity.last)
]

puts "Plan activity created !"

puts "Creating new plan recipe..."

plan_recipes = [
  PlansRecipe.create!(plan: Plan.first, recipe: Recipe.first),
  PlansRecipe.create!(plan: Plan.second, recipe: Recipe.second),
  PlansRecipe.create!(plan: Plan.third, recipe: Recipe.third),
  PlansRecipe.create!(plan: Plan.last, recipe: Recipe.last)
]

puts "Plan recipe created !"

puts "Creating new health logs..."

health_logs = [
  HealthLog.create(date: DateTime.new(2024,1,1), weight: 100.0, measurement: 162, rating_nutrition: 2, rating_activity: 3, rating_mood: 3, water: 0.5 , user: User.first),
  HealthLog.create(date: DateTime.new(2024,2,1), weight: 98.0, measurement: 162, rating_nutrition: 3, rating_activity: 5, rating_mood: 4, water: 0.5 , user: User.second),
  HealthLog.create(date: DateTime.new(2024,3,1), weight: 97.0, measurement: 162, rating_nutrition: 4, rating_activity: 6, rating_mood: 5, water: 0.5 , user: User.third),
  HealthLog.create(date: DateTime.new(2024,4,1), weight: 92.0, measurement: 162, rating_nutrition: 5, rating_activity: 6, rating_mood: 6, water: 0.5 , user: User.last),
  HealthLog.create(date: DateTime.new(2024,2,1), weight: 99.0, measurement: 162, rating_nutrition: 2, rating_activity: 3, rating_mood: 3, water: 0.5 , user: User.last),
]

puts "Health logs created !"

activities_logs = [
  ActivitiesLog.create!(date: '2024-01-01', activity: Activity.first, user: User.first, comment: 'Très bonnes sensations pendant ce run.', duration: 30.0),
  ActivitiesLog.create!(date: '2024-02-01', activity: Activity.second, user: User.second, comment: "J'ai levé plus lourds que d'habitude aujourd'hui.", duration: 45.0),
  ActivitiesLog.create!(date: '2024-03-01', activity: Activity.third, user: User.third, comment: 'Session de yoga très relaxante.', duration: 60.0),
  ActivitiesLog.create!(date: '2024-04-01', activity: Activity.last, user: User.last, comment: 'Sortie vélo entre amis, temps parfait.', duration: 90.0),
]

puts "Activities logs created !"

puts "Creating meals logs..."

meals_logs = [
  MealsLog.create!(date: '2024-01-01', comment: 'Délicieux et copieux petit dej.', recipe: bouchees_choco_fraise, user: User.first),
  MealsLog.create!(date: '2024-02-01', comment: 'Dej healthy et très bon.', recipe: salade_quinoa_avocat, user: User.second),
  MealsLog.create!(date: '2024-03-01', comment: 'Diner parfait après ma session de sport.', recipe: poelee_crevettes_ail, user: User.third),
  MealsLog.create!(date: '2024-04-01', comment: "Bon snack pour un reboost d'énergie", recipe: smoothie_rose, user: User.last)
]

puts "Meals logs created !"

puts "Seed session finished !"
