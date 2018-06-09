def searchNum(num)
  numAbs = num.abs
  if numAbs == 1 || num == 0
    return numAbs
  else
  nums = [0, 1]
  for i in (2..numAbs)
    nums[0], nums[1] = nums[1], nums[0]
    nums[1] = nums[0] + nums[1]
  end
if num > 0 || num % 2 == 1
  return nums[1]
else
  return nums[1]*(-1)
end
  end
  end

num = ARGV[0].to_i
puts searchNum(num)

