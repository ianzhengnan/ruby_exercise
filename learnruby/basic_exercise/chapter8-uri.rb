require 'net/http'
require 'uri'

url = URI.parse("https://www.ruby-lang.org/")
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc

