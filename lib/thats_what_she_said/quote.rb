class ThatsWhatSheSaid::Quote
  attr_accessor :quote_text

  def self.generate_quote
    self.scrape_quotes
  end

  def self.scrape_quotes
    quotes = []

    quotes << self.scrape_1
    #binding.pry
    quotes
  end

  def self.scrape_1
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0664521/quotes?ref_=tt_ql_trv_4"))
    quote = self.new
    quote.quote_text = doc.search("div.sodatext p").text
    quote
  end
end
