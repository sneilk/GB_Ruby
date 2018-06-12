def searchNum(num)
  numAbs = num.abs
  return 0 if  numAbs == 0
  nums = [0, 1]
  for i in (2..numAbs)
    nums[0], nums[1] = nums[1], nums[0]+ nums[1]
  end
  if num > 0 || num % 2 == 1
    nums[1]
  else
    nums[1]*(-1)
  end
end

num = ARGV[0].to_i
if  num < -10000
  puts "Please enter number more than or equal -10000"
elsif num > 10000
  puts "Please enter number lesser than 10000"
else
  puts searchNum(num)
end