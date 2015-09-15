expect = require('chai').expect
pokemonData = require('../lib/index')

describe 'pokemon-data', ->
  describe 'all', ->
    it 'should be an array of strings', ->
      isArrayOfStrings = (array)->
        array.every (item)->
          typeof item == 'string'

      expect(pokemonData.all).to.satisfy isArrayOfStrings

    it 'should contain bulbasaur', ->
      expect(pokemonData.all).to.include 'Bulbasaur'
    it 'should contain 721 pokemons', ->
      expect(pokemonData.all).to.have.length(721)

  describe 'random', ->
    it 'should be a string', ->
      isString = (item)->
          typeof item == 'string'

      expect(pokemonData.random()).to.satisfy isString

    it 'should be contained in contain all', ->
      randomItem = pokemonData.random()
      expect(pokemonData.all).to.include randomItem

    it 'should work with getRandom', ->
      randomItem = pokemonData.getRandom()
      expect(pokemonData.all).to.include randomItem

  describe 'getById', ->
    it 'should return pikachu for id 25', ->
      expect(pokemonData.getById(25)).to.equal 'Pikachu'
