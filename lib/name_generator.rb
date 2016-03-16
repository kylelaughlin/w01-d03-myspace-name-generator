# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

def name_generator(name)
  "xX_StRiNg_Xx"
end

#binding.pry

def encasing_characters(string)
  string.prepend("xX_").concat("_Xx")
end

def remove_whitespace(string)
  string.gsub(/\s/,"")
end
