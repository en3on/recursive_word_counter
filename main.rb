# def iterative_word_counter(str)
#   words = 1
#   for i in (0...str.length)
#     words += 1 if str[i] == "\s"
#   end
#   words
# end


def word_counter(str, index = 0, hit_letter = false)
  return 0 if str.length.zero? || (index == str.length - 1 && str[index] == "\s")
  return 1 if index == str.length - 1

  hit_letter = true if str[index] != "\s"

  is_word = str[index] == "\s" && str[index + 1] != "\s" && hit_letter ? 1 : 0

  is_word = 0 if index.zero? && str[0] == "\s" && !hit_letter

  is_word + word_counter(str, index + 1, hit_letter)
end

puts "one two three"
puts word_counter("one two three")
puts "one    two   three four  five   _six  .seven            eight"
puts word_counter("one    two   three four  five   _six  .seven            eight")
puts
print 'Enter string: '
string = gets.strip
puts "Sentence has #{word_counter(string)} words"
