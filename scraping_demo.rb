require "open-uri"
require "nokogiri"

url = "https://openlibrary.org/search?q=Sherlock+holmes&mode=everything"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".resultTitle").each do |element|
  p element.text.strip
  p element.search(".booktitle .results").attribute("href").value
end