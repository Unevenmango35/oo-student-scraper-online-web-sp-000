require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url) #scraping the index page that lists all of the students
    doc = Nokogiri::HTML(open(index_url)
    doc.css("div.roster-cards-container").each do |card|
     card.css(".student-card a").each do |student|
       name = student.css(".student-name").text
       location = student.css(".student-location").text
       profile_url = "#{student.attr("href")}"
       students << {name: name, location: location, profile_url: profile_url}
     end
   end
   students
  end

  def self.scrape_profile_page(profile_url) #scraping an individual student's profile page to personal information

  end

end
