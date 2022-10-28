require 'net/http'
require 'uri'

uri = URI.parse 'http://rubyschool.us/router'  # Universal Resource Identificator
response = Net::HTTP.get uri
puts response