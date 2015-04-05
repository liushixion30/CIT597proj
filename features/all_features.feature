#encoding: utf-8
Feature: Show farmers markets in philidelphia
  In order to show the farmers markets more clearly
  we create a list of farmers markets
  and we can see details about that market 
  and we can add comments about that market
  
  Scenario: Comment about that farmers market
    Given a farmers market page
	When I write comment 
	Then I can see it on the page
	
  Scenario: Delete comment if the user want 
    Given a existing comment 
	When user want to rephrase it
	Then he/she can delete the existing comment
	
  Scenario: Dlete certain farmers market 
    Given a farmers market
	When this farmers market is discarded
	Then user will not see this market on the page	
	
	