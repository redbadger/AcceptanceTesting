should = require 'should'

myStepDefinitions = ->
  @World = require '../support/world'
  
  @When /^I type "([^"]*)" into the search field$/, (searchText, callback) ->
    @browser.fill 's', searchText, callback

  @When /^Click the search button$/, (callback) ->
    @browser.pressButton 'Search', callback

  @Then /^I should find all of the blog posts tagged XPF$/, (callback) ->
    console.log @browser.querySelector('.tags')

module.exports = myStepDefinitions