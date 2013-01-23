zombie = require 'zombie'
browser = new zombie.Browser()
should = require 'should'

myStepDefinitions = ->
  @Given /^I am on the Homepage$/, (callback) ->
    browser.visit 'http://red-badger.com', callback

  @When /^I click on the "([^"]*)" link$/, (desiredLink, callback) ->
    browser.clickLink desiredLink, callback

  @Then /^The page title should be "([^"]*)"$/, (title, callback) ->
    pageTitle = browser.text 'title'
    pageTitle.should.equal title
    callback()

module.exports = myStepDefinitions