# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cocktail.destroy_all
Ingredient.destroy_all

# creating ingred
puts "Fetching ingredients from JSON"
ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
puts "Ingredients fetched"
puts "Adding ingredients"
ingredients['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end
puts "Adding Cocktails"
# 10.times do
#   Cocktail.create(name: Faker::Hipster.words(2).join(' '))
# end
cocktail_attributes = [
  {
    name:         'Spritz Veneziano',
    category:     'Prosecco',
    description: 'A Spritz Veneziano (Austrian German: Spritzer, "splash" / "sparkling"), also called just Spritz or just Veneziano, is an Italian wine-based cocktail, commonly served as an aperitif in Northeast Italy.',
    history:     "The drink originated in Venice while it was part of the Austrian Empire (see Kingdom of Lombardy–Venetia), and is based on the Austrian Spritzer, a combination of equal parts white wine and soda water; another idea is that the name of the drink would be linked to that of a typical Austrian wine in the region of the Wachau. Spritz was born during the period of the Habsburg domination in Veneto (Italy) in the 1800s. The soldiers, but also the various merchants, diplomats and employees of the Habsburg Empire in Veneto became quickly accustomed to drinking local drinking wine in the taverns, but they were not familiar with the wide variety of wines from the Veneto, and the alcohol content, higher than that of the wines to which they were accustomed, was also a novelty. The newcomers started to ask the local hosts to spray a bit of water into the wine (spritzen, in German) to make the wines lighter; the real original Spritz was, in fact, strictly composed of sparkling white wine or red wine diluted with fresh water.The first evolution of Spritz arrived in the early 1900s, when siphons for carbonated water became widely available and made it possible to make a sparkling Spritz using still wine. This development introduced the Spritz to new types of customers, such as Austrian noblewomen, who, with the drink's touch of glamour, could now afford to be seen drinking a soft drink. Over the years the drink has 'grown up' with the infinite variety of possible additions such as a sort of liquor (Aperol, Campari, Select, Jardesca California Aperitiva) or a bitter as the China Martini or Cynar with a lemon peel inside",
    photo: 'Dizzy Lounge/moscowmule'
  },
  {
    name:         'Mojito',
    category:     'Rum',
    description: "Traditionally, a mojito is a cocktail that consists of five ingredients: white rum, sugar (traditionally sugar cane juice), lime juice, soda water, and mint. Its combination of sweetness, citrus, and mint flavors is intended to complement the rum, and has made the mojito a popular summer drink. The cocktail has a relatively low alcohol content (about 10% alcohol by volume).",
    history:     "Havana, Cuba, is the birthplace of the Mojito, although the exact origin of this classic cocktail is the subject of debate. One story traces the Mojito to a similar 16th century drink known as 'El Draque', after Sir Francis Drake. In 1586, after his successful raid at Cartagena de Indias Drake's ships sailed towards Havana but there was an epidemic of dysentery and scurvy on board. It was known that the local South American Indians had remedies for various tropical illnesses, so a small boarding party went ashore on Cuba and came back with ingredients for an effective medicine. The ingredients were aguardiente de caña (translated as burning water, a crude form of rum made from sugar cane) mixed with local tropical ingredients: lime, sugarcane juice, and mint. Lime juice on its own would have significantly prevented scurvy and dysentery, and tafia/rum was soon added as it became widely available to the British (ca. 1650). Mint, lime and sugar were also helpful in hiding the harsh taste of this spirit. While this drink was not called a Mojito at this time, it was the original combination of these ingredients."
  },
  {
    name:         'Singapore Sling',
    category:     'Gin',
    description: "The Singapore Sling is a gin-based cocktail from Singapore. This long drink was developed sometime before 1915 by Ngiam Tong Boon, a Hainanese bartender working at the Long Bar in Raffles Hotel, Singapore. It was initially called the gin sling – a sling was originally a North American drink composed of spirit and water, sweetened and flavored.",
    history:     'D. A. Embury stated in the Fine Art of Mixing Drinks: "Of all the recipes published for [this drink] I have never seen any two that were alike." The Times described the "original recipe" as mixing two measures of gin with one of cherry brandy and one each of orange, pineapple, and lime juice An alternative "original recipe" used gin, Cherry Heering, Bénédictine, and fresh pineapple juice, primarily from Sarawak (or "smooth cayenne") pineapples, which enhances the flavor and creates a foamy top.'
  },
  {
    name:         'Espresso Martini',
    category:     'Vodka',
    description: "Espresso Martini is a cold, coffee-flavored cocktail made with vodka, espresso coffee, coffee liqueur, and sugar syrup. It is not a true martini, but is one of many drinks that incorporate the term into their names.",
    history:     'There are several claims for the origin of the Espresso Martini. One of the more common claims is that it was created by Dick Bradsell in the late 1980s while at Freds Club in London for a young lady who asked for something that would, "Wake me up, and then fuck me up." Bradsell has confirmed this in a widely-circulated video. Bradsell has also been quoted about the circumstances of his invention of the drink, "The coffee machine at the Soho Brasseries was right next to the station where I served drinks. It was a nightmare, as there were coffee grounds everywhere, so coffee was very much on my mind. And it was all about vodka back then – it was all people were drinking."'
  },
  {
    name:         'Moscow Mule',
    category:     'Vodka',
    description: "Moscow mule is a cocktail made with vodka, spicy ginger beer, and lime juice, garnished with a slice or wedge of lime and mint leaves. It is a type of buck and therefore sometimes known as a vodka buck. The Moscow mule is popularly served in a copper mug. Public health advisories recommend the mugs be plated with nickel or stainless steel on the inside and the lip.",
    history:     'The mule was born in Manhattan but "stalled" on the West Coast for the duration. The birthplace of "Little Moscow" was the Chatham Hotel in NewY York. That was back in 1941 when the first carload of Jack Morgans Cock n Bull ginger beer was railing over the plains to give New Yorkers a happy surprise… The Violette Family helped. Three friends were in the Chatham bar, one John A. Morgan, known as Jack, president of Cock n Bull Products and owner of the Hollywood Cock n Bull Restaurant; one was John G. Martin, president of G.F. Heublein Brothers Inc. of Hartford, Conn., and the third was Rudolph Kunett, president of the Pierre Smirnoff, Heubleins vodka division. As Jack Morgan tells it, "We three were quaffing a slug, nibbling an hors d oeuvre and shoving toward inventive genius". Martin and Kunett had their minds on their vodka and wondered what would happen if a two-ounce shot joined with Morgans ginger beer and the squeeze of a lemon. Ice was ordered, lemons procured, mugs ushered in and the concoction put together. Cups were raised, the men counted five and down went the first taste. It was good. It lifted the spirit to adventure. Four or five days later the mixture was christened the Moscow mule.'
  }
]
Cocktail.create!(cocktail_attributes)
puts 'Finished!'
