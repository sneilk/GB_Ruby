text = ARGV[0].to_s.downcase
if text.length > 0 && text.length <= 10000
  symb = Regexp.new("[ ;:'\"-\\/&@#$%^*()_+=,.!?]")
  text = text.gsub(symb, '')
  if text == text.reverse
    puts 'YES'
  else
    puts 'NO'
  end
else
  puts "Text Error"
  end
