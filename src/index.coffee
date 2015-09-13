uniqueRandomArray = require 'unique-random-array'
pokemonData = require './pokemon-data.json'


module.exports =
  all: pokemonData
  random: uniqueRandomArray(pokemonData)
