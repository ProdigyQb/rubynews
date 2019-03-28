require 'yaml'
require "rss"
require "open-uri"

i = 0 #Counter for RSS-Feed Parser
z = 0 #Counter for amout of yaml links to Pars
limit = 8 # Limit for the amount of usable links
config = YAML.load_file('C:\Users\Vsirt\Documents\git\rubynews\rubynews\config.yml')

while z < limit do
  z = z + 1
  open("#{config["links"][z]}") do |rss|
    feed = RSS::Parser.parse(rss)
  puts 'Title:'+ ' #{feed.channel.title}'
    feed.items.each do |item|
  puts "Item: #{item.title}"
      i = i + 1
    end
    end
puts "!!!!!!!!!!!!!!! RSS FEED COMING !!!!!!!!!!!!!!!"
end
