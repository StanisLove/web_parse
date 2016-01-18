require 'open-uri'
require 'nokogiri'

check = []
x = 13320
until check.count == 100 do
  begin
    x += 1
    url = "http://www.eps-p.ru/index.php?r=user/view&id=#{x}"
    html = open(url)
    doc = Nokogiri::HTML html

    result = Hash.new

    for i in 0..doc.xpath('//td').count-1 do
      result[
              doc.xpath('//th')[i].content
            ] = 
              doc.xpath('//td')[i].content
    end

    File.open("result.rb", "a") { |file| file.puts result }

    check = []
  rescue OpenURI::HTTPError
    puts "error"
    puts x
    check << 404
  end

end
