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
  { name: "Marguerite",
    description: "This old-school Martini goes heavy on the vermouth.",
    image_name: "marguerite_o6eo03",
    },
  { name: "Vesper",
    description: "Pay tribute to 007 by mixing up his signature Vesper \n
    cocktail. The drink first appeared in Ian Fleming’s 1953 novel Casino \n
    Royale when Bond asked for “Three measures of Gordon’s, one of vodka, \n
    half a measure of Kina Lillet. Shake it very well until it’s ice-cold, \n
    then add a large thin slice of lemon peel. Got it?",
    image_name: "vesper-720x720-article_dwlzjl",
    },
  { name: "Gypsy Queen",
    description: "TOne of the earliest vodka-cocktail recipes created in \n
     the US, this simple tipple dates back to 1938.",
    image_name: "gypsy-queen_ahqu9f",
    },
  { name: "Dutch Negroni",
    description: "Dutch genever makes an intriguing version of this \n
    classic Italian aperitif.",
    image_name: "prime-directive-720x720-recipe_zhprjz",
    },
  { name: "Prime Directive",
    description: "It’s the guiding principle for all members of Star \n
    Trek’s Starfleet: Don’t mess with other civilizations and sully up \n
    their worlds. Which is a pretty good rule to follow for drinks, too. \n
    Keep things light and herby with this gin cocktail.",
    image_name: "dutch-negroni1_j25zzo",
    }
]

cocktail_params.each do |params|
  Cocktail.create(params)
end

Ingredient.destroy_all
ingredient_params =
[
  { name: "Orange Bitters" },
  { name: "Plymouth Gin" },
  { name: "Absolut Vodka" },
  { name: "Russian Standard Vodka" },
  { name: "Angostura Bitters" },
  { name: "Dry Vermouth" },
  { name: "Beefeater Gin" },
  { name: "Lillet Blanc" },
  { name: "Bénédictine Liqueur" },
  { name: "Bols Genever" },
  { name: "Campari" },
  { name: "Sweet Vermouth" },
  { name: "Bianco Vermouth" }
]

ingredient_params.each do |params|
  Ingredient.create(params)
end

Dose.destroy_all
dose_params =
[
  { description: "2 1⁄2 oz",
    cocktail_id: (Cocktail.find_by name: 'Dry Martini').id,
    ingredient_id: (Ingredient.find_by name: 'Beefeater Gin').id },
  { description: "1⁄2 oz",
    cocktail_id: (Cocktail.find_by name: 'Dry Martini').id,
    ingredient_id: (Ingredient.find_by name: 'Dry Vermouth').id },
  { description: "1 dash",
    cocktail_id: (Cocktail.find_by name: 'Dry Martini').id,
    ingredient_id: (Ingredient.find_by name: 'Orange Bitters').id },

  { description: "1 oz",
    cocktail_id: (Cocktail.find_by name: 'Marguerite').id,
    ingredient_id: (Ingredient.find_by name: 'Plymouth Gin').id },
  { description: "1 oz",
    cocktail_id: (Cocktail.find_by name: 'Marguerite').id,
    ingredient_id: (Ingredient.find_by name: 'Dry Vermouth').id },
  { description: "1 dash",
    cocktail_id: (Cocktail.find_by name: 'Marguerite').id,
    ingredient_id: (Ingredient.find_by name: 'Orange Bitters').id },

  { description: "3 oz",
    cocktail_id: (Cocktail.find_by name: 'Vesper').id,
    ingredient_id: (Ingredient.find_by name: 'Plymouth Gin').id },
  { description: "1 oz",
    cocktail_id: (Cocktail.find_by name: 'Vesper').id,
    ingredient_id: (Ingredient.find_by name: 'Absolut Vodka').id },
  { description: "1/2 oz",
    cocktail_id: (Cocktail.find_by name: 'Vesper').id,
    ingredient_id: (Ingredient.find_by name: 'Lillet Blanc').id },

  { description: "2 oz",
    cocktail_id: (Cocktail.find_by name: 'Gypsy Queen').id,
    ingredient_id: (Ingredient.find_by name: 'Russian Standard Vodka').id },
  { description: "1 oz",
    cocktail_id: (Cocktail.find_by name: 'Gypsy Queen').id,
    ingredient_id: (Ingredient.find_by name: 'Bénédictine Liqueur').id },
  { description: "2 dashes",
    cocktail_id: (Cocktail.find_by name: 'Gypsy Queen').id,
    ingredient_id: (Ingredient.find_by name: 'Angostura Bitters').id },

  { description: "1⁄2 oz",
    cocktail_id: (Cocktail.find_by name: 'Dutch Negroni').id,
    ingredient_id: (Ingredient.find_by name: 'Bols Genever').id },
  { description: "1 oz",
    cocktail_id: (Cocktail.find_by name: 'Dutch Negroni').id,
    ingredient_id: (Ingredient.find_by name: 'Campari').id },
  { description: "2 oz",
    cocktail_id: (Cocktail.find_by name: 'Dutch Negroni').id,
    ingredient_id: (Ingredient.find_by name: 'Sweet Vermouth').id },

  { description: "2 oz",
    cocktail_id: (Cocktail.find_by name: 'Prime Directive').id,
    ingredient_id: (Ingredient.find_by name: 'Plymouth Gin').id },
  { description: "1 oz",
    cocktail_id: (Cocktail.find_by name: 'Prime Directive').id,
    ingredient_id: (Ingredient.find_by name: 'Bianco Vermouth').id },
  { description: "1/2 oz",
    cocktail_id: (Cocktail.find_by name: 'Prime Directive').id,
    ingredient_id: (Ingredient.find_by name: 'Bénédictine Liqueur').id },
  { description: "1 dash",
    cocktail_id: (Cocktail.find_by name: 'Prime Directive').id,
    ingredient_id: (Ingredient.find_by name: 'Angostura Bitters').id },
]



dose_params.each do |params|
  Dose.create(params)
end
