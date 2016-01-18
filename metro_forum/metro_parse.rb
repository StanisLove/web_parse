require 'open-uri'
require 'nokogiri'

#check = []
#x = 0
#until check.count == 100 do
#  begin
#    x += 1
#    url = "http://metrologu.ru/index.php?showuser=#{x}"
#    html = open(url)
#    doc = Nokogiri::HTML html
#
#    result = Hash.new
#
#    for i in 0..doc.xpath('//td').count-1 do
#      result[
#              doc.xpath('//th')[i].content
#            ] = 
#              doc.xpath('//td')[i].content
#    end
#
#    File.open("result.rb", "a") { |file| file.puts result }
#
#    check = []
#  rescue OpenURI::HTTPError
#    puts "error"
#    puts x
#    check << 404
#  end
#
#end

url = "http://metrologu.ru/index.php?showuser=66561"
html = open(url)
doc = Nokogiri::HTML html

puts  "#{doc.css('.info dt')[3].content} #{doc.css('.info dd')[3].content}"
puts  "#{doc.css('.other_contact dt')[2].content} #{doc.css('.other_contact dd')[2].content}"
puts  "#{doc.css('.other_contact dt')[4].content} #{doc.css('.other_contact dd')[4].content.strip}"
puts  "#{doc.css('.other_contact dt')[5].content} #{doc.css('.other_contact dd')[5].content.strip}"
puts  "#{doc.css('.other_contact dt')[6].content.strip} #{doc.css('.other_contact dd')[6].content.strip}"
puts  "#{doc.css('.other_contact dt')[8].content.strip} #{doc.css('.other_contact dd')[8].content.strip}"
