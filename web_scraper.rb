require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'


#page request
page = HTTParty.get('https://www.agnesanddora.com/party/orders#istg=8497')

parse_page = Nokogiri::HTML(page)

result_array = []

parse_page.css('.col-sm-12').css('tr').map do |a|
  post_name = a.text
  result_array.push(post_name)
end

Pry.start(binding)