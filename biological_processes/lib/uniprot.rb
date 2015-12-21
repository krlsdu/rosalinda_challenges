require 'open-uri'
require 'nokogiri'

module Uniprot
  def self.get_bp(uniprot_id)
    biological_process = []
    url                = "http://www.uniprot.org/uniprot/#{uniprot_id}"
    doc                = Nokogiri::HTML(open(url))
    doc.xpath('//ul[@class="noNumbering biological_process"]/li/a').each do |uniprot|
      biological_process << uniprot.content
    end
    biological_process.inspect
  end
end