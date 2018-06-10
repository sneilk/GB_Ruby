def fib(num)
  return 0 if num == 0
  return 1 if num.abs == 1
  return fib(num - 1) +fib(num - 2)
end
num = ARGV[0].to_i
if  num < -10000
  puts "Please enter number more than or equal -10000"
elsif num > 10000
  puts "Please enter number lesser than 10000"
elsif num >=0 || num%2 == 1
  puts fib(num.abs)
else
  puts -1 * fib(num.abs)
end