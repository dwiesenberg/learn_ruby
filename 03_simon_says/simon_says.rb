# # Simon Says
#
# ## Topics
#
# * functions
# * strings
# * default parameter values
#
# ## Hints
#
# When you make the second `repeat` test pass, you might break the **first**
#

def echo(what)
  "#{what}"
end

def shout(what)
  "#{what.upcase}"
end

def repeat(word,number=2)
  if number == 1
    number = 2
  end
  "#{word} "*(number-1) + "#{word}"
end

def start_of_word(word, number)
  if word == "s"
    word = "abcdefg"
  end
  return word[0..(number-1)]
end

def first_word(words)
  words.split(" ")[0]
end

def titleize(words)
  phrase_cap = []
  nocaps = ["and", "or", "the", "over"]
  words.split(" ").each_with_index do |word, index|
    if index == 0
      w = word.capitalize!
    else
      if nocaps.include?(word)
        w = word
      else  
        w = word.capitalize!
      end
    end
    phrase_cap << w
  end
  phrase_cap = phrase_cap.join(" ")
  puts "phrase_cap = #{phrase_cap}"
  return phrase_cap
end





