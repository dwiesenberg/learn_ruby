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

def adder(num = 1)
  integer = yield
  result = integer + num
end


def repeater(num=1)
  (1..num).each do |n|
    yield(n)
  end
end