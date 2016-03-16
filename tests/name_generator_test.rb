require_relative '../lib/name_generator.rb'

# Define whatever methods you need first

# Now run your actual tests, making sure to do output as necessary
def assert_equal (expected, actual, message)
  if expected == actual
    puts "-"
  else
    puts message
  end
end

def refute_equal (expected, actual, message)
  if ! expected == actual
    puts "-"
  else
    puts message
  end
end

#TEST ONE#########
result = name_generator("String")
assert_equal("xX_StRiNg_Xx",result,"Expected xX_StRiNg_Xx but failed")

#TEST TWO#########
result = name_generator("String")
refute_equal()
