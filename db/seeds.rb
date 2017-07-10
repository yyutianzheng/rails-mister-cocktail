# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
cocktail_params =
[
  { name: "Dry Martini",
    description:"The Dry Martini is a classic cocktail that, \n
    like a tailored suit, is timeless. Although the original of the tipple \n
    is unclear, the Dry Martini has maintained a place in cocktail history \n
    due to being easy to use and endlessly sophisticated. Elegant for the \n
    fancy and boozy for the heavy-handed, this potation is truly the everyman’s
    cocktail.",
    image_name: "Dry-Martini_k6r8nw",
    },
  { name: "Blood and Sand",
    description: "This long forgotten Prohibition-era cocktail \n
    is named for the 1922 movie starring Rudolph Valentino. It is the movie which, \n
    on his death bed, he stated he'd like to be his legacy. Try this drink straight \n
    up, and toast one of the most revered actors of silent film.",
    image_name: "blood_and_sand.jpg",
    },
  { name: "Martinez",
    description: "The Martinez is a classic gin and vermouth \n
    cocktail that led to the creation of the Martini. It uses sweet vermouth and \n
    maraschino and is a pure delight.",
    image_name: "martinez.jpg",
    },
  { name: "Gimlet",
    description: "The gimlet is as simple as it is refreshing. Shake \n
    up gin with fresh lime juice and simple syrup to make this classic cocktail.",
    image_name: "gimlet",
    },
  { name: "Old-Fashioned",
    description: "One of the great classic bourbon cocktails, \n
    the Old Fashioned was invented in Louisville, KY. Try bourbon, rye, or a blended \n
    whiskey in this cocktail. You can also sub one sugar cube for the simple syrup.",
    image_name: "old_fashioned.jpg",
    },
  { name: "Negroni",
    description: "A tantalizing combination of campari, gin, \n
    vermouth, soda and lemon. Dare to try dry!",
    image_name: "negroni",
    }
]

cocktail_params.each do |params|
  Cocktail.create(params)
end

Ingredient.destroy_all
ingredient_params =
[
  { name: "bourbon whiskey" },
  { name: "rye whiskey" },
  { name: "gin" },
  { name: "Campari" },
  { name: "maraschino liqueur" },
  { name: "bitters" },
  { name: "sweet vermouth" },
  { name: "lime juice" },
  { name: "sugar" }

]

ingredient_params.each do |params|
  Ingredient.create(params)
end

Dose.destroy_all
dose_params =
[
  { description: "50 mL",
    cocktail_id: (Cocktail.find_by name: 'DRY MARTINI').id,
    ingredient_id: (Ingredient.find_by name: 'bourbon whiskey').id },
  { description: "20 mL",
    cocktail_id: (Cocktail.find_by name: 'DRY MARTINI').id,
    ingredient_id: (Ingredient.find_by name: 'sweet vermouth').id },
  { description: "dash",
    cocktail_id: (Cocktail.find_by name: 'DRY MARTINI').id,
    ingredient_id: (Ingredient.find_by name: 'bitters').id }
]

dose_params.each do |params|
  Dose.create(params)
end
