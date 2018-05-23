require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

<<<<<<< HEAD
  def self.scrape_index_page(index_url)
    html = File.read(index_url)
    doc = Nokogiri::HTML(html)
    scraped_students = doc.css("div.student-card")

    scraped_students.map do |x|
      {
        :name => x.css('h4').text,
        :location => x.css('p').text,
        :profile_url => x.css('a').attribute('href').value
      }
    end
=======
  def self.scrape_index_page(./fixtures/student-site/index.html)
    
>>>>>>> 56fe407ab718f7cc3e6d699351771a4e197d769f
  end

  def self.scrape_profile_page(profile_url)
    html = File.read(profile_url)
    doc = Nokogiri::HTML(html)

    scraped = {}
    social = []

    doc.css('div.social-icon-container a').each {|link|
      social << link
    }

<<<<<<< HEAD
    social.each do |x|
      if x.attribute('href').value.include? "twitter"
        scraped[:twitter] = x.attribute('href').value
      elsif x.attribute('href').value.include? "linkedin"
        scraped[:linkedin] = x.attribute('href').value
      elsif x.attribute('href').value.include? "github"
        scraped[:github] = x.attribute('href').value
      else
        scraped[:blog] = x.attribute('href').value
      end
  end
  scraped[:profile_quote] = doc.css('div.profile-quote').text
  scraped[:bio] = doc.css('div.description-holder p').text
  scraped
end
end
=======

>>>>>>> 56fe407ab718f7cc3e6d699351771a4e197d769f
