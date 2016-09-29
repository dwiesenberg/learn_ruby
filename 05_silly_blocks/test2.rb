# Silly Blocks

def reverser
  string = yield
  words = string.split()
  str_rev_words = []

  words.each do |word|
    word_reversed = word.reverse
    str_rev_words << word_reversed
  end
  result = str_rev_words.join(" ")
end

result = reverser do
  "hello"
end
puts "result = #{result}"

result = reverser do
  "hello dolly"
end
puts "result = #{result}"

# ############################

def adder(num = 1)
  integer = yield
  result = integer + num
end

result = adder(6) do
  5
end
puts "result = #{result}"

# ############################

def repeater(num)
  block_was_executed = false
  i = 0
  while i < num
    i = i + 1
    yield(i)
  end
  return
end

result = repeater(3) {|n| n = n + 1}
puts "result = #{result}"

##############

def repeater(num=1)
  (1..num).each do |n|
    yield(n)
  end
end

n = 0
result = repeater do
  n = n + 1
end

puts "result = #{n}"



