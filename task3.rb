#The function to division string to vowels and consonants letters and numbers

def division(text)
  vowels = [65,69,73,74,79,81,85,89]
  nums = (48..57).to_a
  letters = (65..90).to_a
  divResult = ["", "", ""]
  textByte = []
  text.each_byte do |i|
    textByte.append(i)
  end

  for i in textByte
    if vowels.include?(i) || vowels.include?(i - 32)
      divResult[0] += i.chr
    elsif nums.include?(i)
      divResult[2] +=i.chr
    elsif letters.include?(i) || letters.include?(i - 32)
      divResult[1] += i.chr
    end
  end
  res = ''
  divResult[0], divResult[1] = divResult[0] + " ", divResult[1] + " "
  for i in divResult
    if i != " "
      res += i
    end
  end
puts res
end


text = ARGV[0].to_s
division(text)
