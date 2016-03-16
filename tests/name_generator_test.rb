require_relative '../lib/name_generator.rb'
require 'pry'
# Define whatever methods you need first

# Now run your actual tests, making sure to do output as necessary

# Assert that the expected equals the actual, if not then display a message
#
# +expected: string representing what the method is expected to return
# +actual: string representing what is returned by the method being tested
# +message: string representing the text displayed when the test fails
#
# Returns "-" if successful and message if failed
def assert_equal (expected, actual, message)
  if expected == actual
    puts "-"
  else
    puts message
  end
end

# Assert that the expected does not equal the actual, if it does then display
#   a message.
#
# +expected: string representing what the method is expected to return
# +actual: string representing what is returned by the method being tested
# +message: string representing the text displayed when the test fails
#
# Returns "-" if successful and message if failed
def refute_equal (expected, actual, message)
  if !(expected == actual)
    puts "-"
  else
    puts message
  end
end

#################### name_generator
result = name_generator("String")
assert_equal("xX_StRiNg_Xx", result, "Expected \"xX_StRiNg_Xx\" but failed")

#################### encasing_characters
result = encasing_characters("KyleLaughlin")
assert_equal("xX_Kylelaughlin_Xx", result, "Expected \"xX_String_Xx\"")

#TEST FOUR######## encasing_characters
#result = encasing_characters("Kyle Laughlin")
#refute_equal("Kyle Laughlin", result, "\"Kyle Laughlin\" passed but should have failed")

################### remove_whitespace
result = remove_whitespace("Kyle Laughlin")
assert_equal("KyleLaughlin", result, "Expected \"KyleLaughlin\" but failed")
