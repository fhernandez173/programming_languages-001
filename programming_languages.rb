require 'pry'

def reformat_languages(languages)
  new_hash = Hash.new
  hash2 = {}
  languages.each do |style, p_language|
    new_hash.merge! p_language
  end
  new_hash.each do |k, v|
    v[:style] ||= []
  end
  languages.each do |style, p_language|
    hash2[style] = p_language.keys
  end
  new_hash.each do |k, v|
    hash2.keys.each do |style|
      if languages[style].keys.include? k
        v[:style] << style
      end
    end
  end
end
=begin
First attempt, could of used an if statement after languages.each do |style, p_language|
using condition to check the style

def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, p_language|
    # binding.pry
    p_language.each do |language, lang_type|
      new_hash[language] = lang_type
      lang_type[:style] = []
      # if p_language key is :oo or :functional, add it to :style array
      if languages.key?(:oo) && languages.key?(:functional) # never has two keys at same time
        lang_type[:style] << style
      elsif languages.key?(:oo)
        lang_type[:style] << style
      elsif languages.key?(:functional)
        lang_type[:style] << style
      end

      # binding.pry
      # if languages.key?(:oo)
      #   puts "hi"
      end
      # binding.pry
      return new_hash
    end
  end

=end

# add key style to value through an if statement
# binding.pry
# new_hash.merge! p_language
# new_hash.each_with_index do |k, i|
#   binding.pry
#
#   curr_keys = p_language.keys
#   new_hash[curr_keys[i]][:style] ||= []
#   # binding.pry
#   new_hash[curr_keys[i]][:style] << style
#   # binding.pry

# end

# if language is on both oo and functional, add both keys to an array under the language
# Could add the if statement before p_language is iterated through
# if p_language key (style) is both oo and functional,add both styles to array
# end
# binding.pry
# new_hash.each do |key, value|
#   value.each do |key, value|
#     if language[style]
#     binding.pry
#   end
# end
# Have to create a key called :style to add style into
# new_hash[:style] = []
# if # condition to check p_language key is :oo and :functional
#   # add style through Push method to add into array of style
# elsif # condition to check if p_language key is :oo
#   # add style
# else
#   # add style
# end
# return new_hash
# check in p_language exists under :oo and/ or :functional, then add style to p_language
# If p_language key is both :oo and :functional, then add p_language to new_hash as value


# Use enumerator to iterate through languages hash
# Add languages into hash first
# Use an if statement to check with languages fall under oo or functional and add to array

# hash[key] = value
# hash[language] = value


=begin
Resources:
* http://stackoverflow.com/questions/6863771/how-to-add-to-an-existing-hash-in-ruby
* http://stackoverflow.com/questions/19756139/append-key-value-pair-to-hash-with-in-ruby
=end

















#
#



