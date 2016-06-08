require 'rest-client'
require 'nokogiri'

# Read the html
document = RestClient.get('https://news.ycombinator.com/')
# Model the DOM
dom = Nokogiri::HTML(document)

news = []
title = ""
link = ""
points = ""

dom.css('.itemlist tr').each do |news_tr|
  if title.empty?
    title = news_tr.css('.title .storylink').text
  end
  
  if link.empty?
    link = news_tr.css('.title .sitebit').text
  end

  if points.empty?
    points = news_tr.css('.subtext .score').text
  end

  if !title.empty? && !points.empty? && !link.empty?
    news << {
      title: title,
      link: link,
      points: points
    }
    title = ""
    link = ""
    points = ""
  end
end

puts news.inspect
