# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

Ingredient.destroy_all
Post.destroy_all
IngredientsPosts.destroy_all

ingredients = [
   {id:1,name: "Sucre"},
   {id:2,name: "Rome"},
   {id:3,name: "Aperol"},
   {id:4,name: "Citron"},
   {id:5,name: "Cointreau"},
   {id:6,name: "Orange"},
   {id:7,name: "Coconut créme"},
   {id:8,name: "Menthe"},
   {id:9,name: "Prosecco"},
   {id:10,name: "Eau gazeuse"},
   {id:11,name: "Limonade"},
   {id:12,name: "Triple Sec"},
   {id:13,name: "Tequilla"},
   {id:14,name: "Jus de citron"},
   {id:15,name: "Jus de cranberry"},
   {id:16,name: "Vodka"},
]
posts = [
   {id:1,name: "Spritz",
   content: "Aperol Spritz', 'Le Spritz est un cocktail datant du siècle dernier. Il aurait été inventé par des soldats autrichiens qui trouvaient le vin italien trop chargé en alcool.L’auriez-vous deviné",
   image_data: '{"id":"spritz.jpg","storage":"store","metadata":{"filename":"spritz.jpg","size":30683,"mime_type":"image/jpeg"}}'
},
   {id:2,name: "Mojito",
    content: "Mojito', 'La création du Mojito remonte au XVIe siècle lorsque Francis Draque, le célèbre corsaire anglais, avait pour habitude de célébrer ses pillages en sirotant à La Havane, du tafia (l’ancêtre du rhum), aromatisé de quelques feuilles de menthe et de citron.",
    image_data: '{"id":"cosmo.jpg","storage":"store","metadata":{"filename":"cosmo.jpg","size":30683,"mime_type":"image/jpeg"}}'
   },
   {id:3,name: "Piña Colada",
    content:"Le cocktail Piña Colada puise ses origines à Puerto Rico où il a été inventé par un barman de l’hôtel Caribe Hilton en 1954. Décrétée 30 ans plus tard boisson nationale, cet élixir doux et fruité concentre dans le verre toutes les saveurs ensoleillées des Caraïbes.",
    image_data: '{"id":"pina.jpg","storage":"store","metadata":{"filename":"pina.jpg","size":30683,"mime_type":"image/jpeg"}}'
   },
   {id:4,name: "Punch" ,
   content: "Historiquement, le punch date du XVIe siècle. Il aurait été créé par des marins britanniques en mélangeant du Tafia (un genre de rhum brut) qui était embarqué sur les navires, avec d’autres ingrédients.",
   image_data: '{"id":"punch.jpg","storage":"store","metadata":{"filename":"punch.jpg","size":30683,"mime_type":"image/jpeg"}}'
},
   {id:5,name: "Margarita" ,
   content: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel",
   image_data: '{"id":"margarita.jpg","storage":"store","metadata":{"filename":"margarita.jpg","size":30683,"mime_type":"image/jpeg"}}'
},
{id:6,name: "Cosmopolitan" ,
content: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel",
image_data: '{"id":"cosmo.jpg","storage":"store","metadata":{"filename":"cosmo.jpg","size":30683,"mime_type":"image/jpeg"}}'
},
]
ingredients_posts = [
   {post_id:1,ingredient_id:3},
   {post_id:1,ingredient_id:6},
   {post_id:1,ingredient_id:9},
   {post_id:1,ingredient_id:10},
   {post_id:2,ingredient_id:1},
   {post_id:2,ingredient_id:4},
   {post_id:2,ingredient_id:8},
   {post_id:2,ingredient_id:11},

   {post_id:3,ingredient_id:2},
   {post_id:3,ingredient_id:5},
   {post_id:3,ingredient_id:7},

   {post_id:4,ingredient_id:2},
   {post_id:4,ingredient_id:4},
   {post_id:4,ingredient_id:5},
   {post_id:4,ingredient_id:7},

   {post_id:5,ingredient_id:12},
   {post_id:5,ingredient_id:13},
   {post_id:5,ingredient_id:14},

   {post_id:6,ingredient_id:12},
   {post_id:6,ingredient_id:14},
   {post_id:6,ingredient_id:15},
   {post_id:6,ingredient_id:16},

]

 posts.each do |post|
     Post.create post
   end

  ingredients.each do |ingredient|
    Ingredient.create ingredient
 end
   
    ingredients_posts.each do |ingredient_post|
      IngredientsPosts.create ingredient_post
    end


