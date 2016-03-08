#Truecar interview test created by Swati Sarraf on 6th March 2016 

Objective: This project is to create test cases for autoblog.truecar.com.

Feature: The purpose is to test the Car Auto zipcode functionality.
	Here I am doing BlackBox testing, where I am testing zipcode functionality with all valid and invalid test-cases.
		a) Invalid Tests: [-1, 0, 3421]
		b) Valid Tests: [90230]  

	For Invalid test scenarios, we should expect error
	For valid test scenarios, we should expect new page with given car make and model

Environment: The author has used Ruby, Cucumber, Gherkin & Selenium for this purpose

The project contains setup/environment files, feature files (written in Gherkin) & step files written in Ruby using Selenium
