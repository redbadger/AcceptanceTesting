should = require 'should'

myStepDefinitions = ->
  @World = require '../support/world'

  @Given /^I am on the "([^"]*)" page$/, (page ,callback) ->
    baseUrl = "http://red-badger.com/"

    switch page
      when "Homepage"
        url = baseUrl
      when "Blog"
        url = baseUrl + 'blog'
      else
        throw new Error 'Unrecognised page'
    
    @browser.visit url, callback

  @When /^I click on the "([^"]*)" link$/, (desiredLink, callback) ->
    @browser.clickLink desiredLink, callback

  @Then /^The page title should be "([^"]*)"$/, (title, callback) ->
    pageTitle = @browser.text 'title'
    pageTitle.should.equal title
    callback()

module.exports = myStepDefinitions