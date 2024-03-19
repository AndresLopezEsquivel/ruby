require "open-uri"
require "nokogiri" # Check: https://nokogiri.org/index.html

ingredient = "chocolate"
url = "https://www.allrecipes.com/search?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)
# p html_doc.class # <= Nokogiri::HTML4::Document

html_doc.search(".card__title-text").each do |element|
  p element.text.strip
end
