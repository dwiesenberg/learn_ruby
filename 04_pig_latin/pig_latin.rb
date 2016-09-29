# pig latin

def translate(phrase)
  words = phrase.split()
  pig_latin_phrase = []
  words.each do |word|
    pig_latin_word = convert(word)
    pig_latin_phrase << pig_latin_word
  end
  return pig_latin_phrase.join(" ")
end


def convert(word)
  start_str = ""

  while word[0] =~ /\A[^aeiou]/           # first letter is consonant
    start_str = start_str + word[0]
    if word[0] == "q" and word[1] == "u"
      start_str = start_str + word[1]
      word[1] = ""
    end
    word[0] = ""
  end

  pig_latin_word = word + start_str + "ay"
  return pig_latin_word
end



