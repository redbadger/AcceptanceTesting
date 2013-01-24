zombie = require 'zombie'

World = (callback) ->
  @browser = new zombie.Browser()

module.exports = World