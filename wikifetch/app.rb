require 'nokogiri'
require 'open-uri'
require 'fileutils'

FileUtils.touch('pbodydata.txt')
puts "Enter a URL: "

# User Input
userlink = gets.chomp
  
# Takes info from user input parses the html from a url, turns paragraphs into the paragraph bodies
parsed_data = Nokogiri::HTML.parse(URI.open(userlink, "User-Agent" => "EMAIL"))
parsed_data.class
paragraphs = parsed_data.css("p")

writedata = File.write('pbodydata.txt', paragraphs)
