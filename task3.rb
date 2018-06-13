#The function to division string to vowels and consonants letters and numbers
text = ARGV[0].to_s
if text.length > 10000
  puts "Please enter more short text"
elsif text.length == 0
  puts "You don't enter text"
else
  vow = Regexp.new("[eyuioa]", Regexp::IGNORECASE)
  cons = Regexp.new("[qwrtpsdfghjklzxcvbnm]", Regexp::IGNORECASE)
  nums = Regexp.new("[0-9]")
  vowR = text.scan(vow).join
  consR = text.scan(cons).join
  numsR = text.scan(nums).join
  vowR += " " if vowR != ""
  consR += " " if consR != ""
  puts (vowR + consR +  numsR)
end
