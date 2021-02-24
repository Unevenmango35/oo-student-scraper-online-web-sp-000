require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url) #scraping the index page that lists all of the students
    doc = Nokogiri::HTML(open(index_url)
    scraped_students = []

    doc.css("div.student-card").each do |student|
      scraped_students << {
        name: student.css("h4.student-name").text, 
        location: student.css("p.student-location").text, profile_url: "http://students.learn.co/#{student.css("a").attribute("href").value}"}
    end
    scraped_students
  end

  def self.scrape_profile_page(profile_url) #scraping an individual student's profile page to personal information

  end

end
