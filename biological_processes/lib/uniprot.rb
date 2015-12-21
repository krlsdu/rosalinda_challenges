require 'open-uri'
require 'nokogiri'

module Uniprot
  def self.get_bp(uniprot_id)
    url = "http://www.uniprot.org/uniprot/#{uniprot_id}"
    doc = Nokogiri::HTML(open(url))
    puts doc.css('ul li a')
  end

end