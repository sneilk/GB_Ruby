num = ARGV[0].to_i
if  num < -10000
  puts "Please enter number more than or equal -10000"
elsif num > 10000
  puts "Please enter number lesser than 10000"
else
  y = Math.sqrt(5)
  res = (((1 + y)/2)**num- ((1 - y)/2)**num)/y
  puts res.round
end