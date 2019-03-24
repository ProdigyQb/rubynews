require "rss"
require "open-uri"
rsslinks = ["https://www.heise.de/autos/rss/news-atom.xml","https://www.heise.de/rss/heiseplus-atom.xml","https://www.giga.de/software/feed/","https://www.theverge.com/rss/index.xml"]
i = 0

for i in 0..6
  open("#{rsslinks[i]}") do |rss|
    feed = RSS::Parser.parse(rss)
  puts 'Title:'+ ' #{feed.channel.title}'
    feed.items.each do |item|
  puts "Item: #{item.title}"
  i = i + 1
    end
  end
  puts "!!!!!!!!!!!!!!! RSS FEED COMING !!!!!!!!!!!!!!!"
end
