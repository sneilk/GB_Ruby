def palindromeCheck(text)
  if text == text.reverse
    puts 'YES'
  else
    puts 'NO'
  end
end


text = ARGV[0].to_s
palindromeCheck(text)
