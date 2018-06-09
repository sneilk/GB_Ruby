#The function to division string to vowels and consonants letters and numbers

def division(text)
  vowels = Regexp.new("[aqeyuioj]", Regexp::IGNORECASE)
  nums = Regexp.new("[0-9]")
  letters = Regexp.new("[a-z]", Regexp::IGNORECASE)




end


text = ARGV[0].to_s
if text.length > 10000
  puts "Please enter more short text"
elsif text.length == 0
  puts "You don't enter text"
else
division(text)
  end
