uniqueRandomArray = require 'unique-random-array'
pokemonData = require './pokemon-data.json'


module.exports =
  all: pokemonData
  getRandom: uniqueRandomArray(pokemonData)
  random: -> # deprecated
    this.getRandom()
  getById: (id) ->
    this.all[id - 1]
