require "net/http"
require "uri"

uri = URI.parse 'http://rubyschool.us/router'  # Universal Resource Identificator
response = Net::HTTP.post_form(uri, :login => "aaa", :password => "bbb").body

puts response