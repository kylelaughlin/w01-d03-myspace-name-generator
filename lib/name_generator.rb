# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

#Run string modification methods: remove_whitespace, remove_punctuation, remove_numbers
#alternate_capitalization, and encasing_characters
#
# +name: a string representing the name to be altered
#
#Returns the modified myspace name
def myspace_name_generator(name)
  myspace_name = remove_whitespace(name)
  myspace_name = remove_punctuation(myspace_name)
  myspace_name = remove_numbers(myspace_name)
  myspace_name = alternate_capitalization(myspace_name)
  myspace_name = encasing_characters(myspace_name)
end

#Adds a "xX_" to the front of the string and "_Xx" to the end of a string
#
# +string: a string representing the modified name
#
#Returns the modified name (string)
def encasing_characters(name)
  name.prepend("xX_").concat("_Xx")
end

def remove_whitespace(name)
  name.gsub(/\s/,"")
end

def remove_punctuation(name)
  name.gsub(/\W/,"")
end

def remove_numbers(name)
  name.gsub(/[0-9]/,"")
end

def alternate_capitalization(name)
  alt_cap_name = ""
  (0...name.length).each do |i|
    if i % 2 ==0
      alt_cap_name << name[i].upcase
    else
      alt_cap_name << name[i].downcase
    end
  end
  alt_cap_name
end


#binding.pry
