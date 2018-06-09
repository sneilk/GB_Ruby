def palindromeCheck(text)
  if text == text.reverse
    puts 'YES'
  else
    puts 'NO'
  end
end


text = ARGV[0].to_s.downcase
if text.length > 0 && text.length <= 10000
  symb = Regexp.new("[ ;:'\"-\\/&@#$%^*()_+=,.!?]")
  palindromeCheck(text.gsub(symb, ''))
else
  puts "Text Error"
  end
