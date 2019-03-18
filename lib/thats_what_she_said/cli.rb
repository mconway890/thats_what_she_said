# CLI CONTROLLER
class ThatsWhatSheSaid::CLI

  def call
    welcome
  end

  def welcome
    puts center("Welcome to Thats What She Said!").upcase
    puts ""
    puts center("The Office Quotes Generator")
    puts ""
    @quotes = ThatsWhatSheSaid::Quote.generate_quote
    @quotes.each do |quote|
      puts " #{quote.quote_text}"
    end
    puts ""
  end

  def center(string, c = "-")
    string = " #{string} " if string != ""
    until string.length >= 40
      string.prepend(c)
      string << (c)
    end
    string.prepend("\n")
  end

end
