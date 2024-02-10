require 'nokogiri'
require 'open-uri'
require 'fileutils'

=begin
TODO
Data formatting
Beautifying?'
More user input options in the command line(parse headers, titles, etc.)
Learn more Ruby
=end

FileUtils.touch('pbodydata.txt')

# User Input
userlink = gets.chomp


# Takes info from user input parses the html from a url, turns paragraphs into the paragraph bodies
parsed_data = Nokogiri::HTML.parse(URI.open(userlink))
parsed_data.class
paragraphs = parsed_data.css("p")

writedata = File.write('pbodydata.txt', paragraphs)


# Nokogiri::HTML::Document
