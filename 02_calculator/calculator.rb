# Calculator

# Note: Could notn complete assignment. Code which erik confirmed was correct threw up errors by RAKE and was rejected. Move on to next assignment, therefore.

def add(num1,num2)
  result = num1 + num2
end

def subtract(num1,num2)
  result = num1 - num2
end

def sum(nums)
  result = 0

  if nums.empty?
    result = 0
  else
      i = 1
    while i < nums.length
      result = result + nums[i]
      i = i + 1
    end
  end

end

#puts sum([])
#puts sum([7])
#puts sum([7,10])


