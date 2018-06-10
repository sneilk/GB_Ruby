#The function to division string to vowels and consonants letters and numbers
text = ARGV[0].to_s
if text.length > 10000
  puts "Please enter more short text"
elsif text.length == 0
  puts "You don't enter text"
else
  vow = text.scan(/[qeyuiojaQEYUIOJA]+/).join
  cons = text.scan(/[wrtplkhgfdszxcvbnmWRTPLKHGFDSZXCVBNM]+/).join
  nums = text.scan(/[0-9]+/).join
  vow += " " if vow != ""
  cons += " " if cons != ""
  puts (vow + cons +  nums)
end
