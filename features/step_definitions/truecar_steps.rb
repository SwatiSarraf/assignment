#encoding: utf-8

Given /^(?:I|they|user) (?:am|are|is) on "(.*?)" url$/  do |url|
   @driver = Selenium::WebDriver.for :firefox
   @driver.navigate.to url
end

When /^(?:I|they|users?) filters? car make as "(.*?)"$/ do |make|
   @makeDropDown = @driver.find_element(:css, "div#s2id_home_select_make a")
   @makeDropDown.click
   @makeInput = @driver.find_element(:css, "div#select2-drop > div.select2-search input")
   @makeInput.send_keys make
   @makeInput.send_keys:return
end

When /^(?:I|they|users?) filters? car model as "(.*?)"$/ do |model|
   @modelDropDown = @driver.find_element(:css, "div#s2id_home_select_model a")
   @modelDropDown.click
   @modelInput = @driver.find_element(:css, "div#select2-drop input")
   @modelInput.send_keys model
   @modelInput.send_keys:return
end

When /^(?:I|they|users?) enter wrong zip code as -?(\d+)$/ do |zip|
   @zipField = @driver.find_element(:css, "input#home_zip")
   @zipField.clear
   @zipField.send_keys zip
   @zipField.send_keys:return
end

When /^(?:I|they|users?) enter zip code as (\d+)$/ do |zip|
   @zipField = @driver.find_element(:css, "input#home_zip")
   @zipField.clear
   @zipField.send_keys zip
   @zipField.send_keys:return
end

Then /^(?:a|an) error message should be shown$/ do
   wait = Selenium::WebDriver::Wait.new(:timeout => 15)

   puts "Test Passed: Zip Code Error" if wait.until {
        @driver.find_element(:css, "div.simplemodal-wrap div#simplemodal-data.zip-error").displayed?
   }
   expect(@driver.find_element(:css, "div.simplemodal-wrap div#simplemodal-data.zip-error span").displayed?).to eql true 
   @driver.find_element(:css, "div.zip-error div.foot button").click()
end

Then /^(?:a|an) new car price page should be loaded$/ do
   wait = Selenium::WebDriver::Wait.new(:timeout => 15)
   wait.until {
        @h1 = @driver.find_element(:css, "div#config-header h1")
        @h1 if @h1.displayed?
   }
   puts "Test Passed: Price page for " + @h1.text
   # Find text on the page by regexp
end 


#When /^I choose a random car make as filter$/ do
   #makeDropDown = @driver.find_element(:css, "div#s2id_home_select_make a")
   #makeDropDown.click
   #wait = Selenium::WebDriver::Wait.new(:timeout => 15)
   #wait.until {
        #@driver.find_element(:css, "div.select2-container.select2-dropdown-open")
   #}
   #option = @driver.find_element(:css, "div#select2-drop ul li:nth-child(2) span")
   #option.click
   #@makeInput = @driver.find_element(:css, "div#select2-drop > div.select2-search input")
   #@makeInput.send_keys "Audi"
   #makeSelect = Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "home_select_make"))
   #makeSelect.options.each{ |option|
   #	option.send_keys :arrow_down
   #     break
   #}
   #makeSelect.select_by(:text, "Aston Martin")

#end
