require "nokogiri"
require 'open-uri'
require 'pry'

class Scraper
#binding.pry
  def self.scrape_index_page(index_url)
    #binding.pry
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card a")
    students.collect do |student|
    {:name => student.css(".student-name").text,
      :location => student.css(".student-location").text,
      :profile_url => student.attr("href")
    }
      
  end
end


  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    hash = {}
    url = 
  end

end

