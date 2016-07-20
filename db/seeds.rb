user = [ ]

piet = User.create( email: 'piet@ex.com', password: 'abcd1234' )
santa = User.create( email: 'santa@ex.com', password: 'abcd1234' )
mike = User.create( email: 'mike@ex.com', password: 'abcd1234' )


user_reviews = {}

user_reviews["Pietje"] = [ 4 ],
user_reviews["Santa"] = [ 2 ]

games = [
  ["Pokemon_Go", "Travel between the real world and the virtual world of Pokémon with Pokémon GO for iPhone and Android devices. With Pokémon GO, you’ll discover Pokémon in a whole new world—your own! Pokémon GO is built on Niantic’s Real World Gaming Platform and will use real locations to encourage players to search far and wide in the real world to discover Pokémon. Pokémon GO allows you to find and catch more than a hundred species of Pokémon as you explore your surroundings."],
  ["GTA 5", "When a young street hustler, a retired bank robber and a terrifying psychopath find themselves entangled with some of the most frightening and deranged elements of the criminal underworld, the U.S. government and the entertainment industry, they must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other. "]
]
