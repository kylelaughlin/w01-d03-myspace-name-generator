# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

def name_generator(name)
  myspace_name = remove_whitespace(name)
  myspace_name = remove_punctuation(myspace_name)
  myspace_name = remove_numbers(myspace_name)
  myspace_name = alternate_capitalization(myspace_name)
  myspace_name = encasing_characters(myspace_name)
end

def encasing_characters(string)
  string.prepend("xX_").concat("_Xx")
end

def remove_whitespace(string)
  string.gsub(/\s/,"")
end

def remove_punctuation(string)
  string.gsub(/\W/,"")
end

def remove_numbers(string)
  string.gsub(/[0-9]/,"")
end

def alternate_capitalization(string)
  alt_cap_string = ""
  (0...string.length).each do |i|
    if i % 2 ==0
      alt_cap_string << string[i].upcase
    else
      alt_cap_string << string[i].downcase
    end
  end
  alt_cap_string
end


#binding.pry
