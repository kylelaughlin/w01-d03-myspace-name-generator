# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

# Run string modification methods: leave_numerical_characters, alternate_capitalization,
# and encasing_characters
#
# +name: a string representing the name to be altered
#
# Returns the modified myspace name
def myspace_name_generator(name)
  myspace_name = leave_numerical_characters(name)
  myspace_name = alternate_capitalization(myspace_name)
  myspace_name = encasing_characters(myspace_name)
end

# Adds a "xX_" to the front of the string and "_Xx" to the end of a string
#
# +name: a string representing the modified name
#
# Returns the modified name (string)
def encasing_characters(name)
  name.prepend("xX_").concat("_Xx")
end

# Removes all characters that are not A-Z, a-z, included whitespace
#
# +name: a string representing the modified name
#
# Returns the modified name that contains only A-Z and a-z characters
def leave_numerical_characters(name)
  name.gsub(/[^A-Za-z]/,"")
end

# Alternates the capitalization of each character starting with a capital letter.
#
# +name: a sring representing the modified name
#
# Returns the modified name with alternating capitalization in each character
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
