# pokemon-data
An npm micro library used to host the name of all pokemons. A great way to name your fixtures, make a pokedex, or just catch' em all.

# How to use

```
npm install pokemon-data
```

In the js file:

```
var pokemonData = require('pokemon-data');
pokemonData.all // To get the whole list
pokemonData.getRandom() // To get a random pokemon
pokemonData.random() // This will be deprecated, but it still works to get a random pokemon
pokemonData.getById(1) // To get bulbasaur.

```
# Resources used:

http://www.dragonflycave.com/list.aspx
