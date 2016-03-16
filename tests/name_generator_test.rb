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
assert_equal("xX_StRiNg_Xx", result, "name_generator method expected \"xX_StRiNg_Xx\" \
but returned \"#{result}\"")

#################### encasing_characters
result = encasing_characters("KyleLaughlin")
assert_equal("xX_KyleLaughlin_Xx", result, "encasing_characters method expected \
\"xX_KyleLaughlin_Xx\" but returned \"#{result}\"")

#TEST FOUR######## encasing_characters
#result = encasing_characters("Kyle Laughlin")
#refute_equal("Kyle Laughlin", result, "\"Kyle Laughlin\" passed but should have failed")

################### remove_whitespace
result = remove_whitespace("Kyle Laughlin")
assert_equal("KyleLaughlin", result, "remove_whitespace method expected \"KyleLaughlin\" \
but returned \"#{result}\"")

################### remove_punctuation
result = remove_punctuation("$@Kyl!eL<augh()lin?#")
assert_equal("KyleLaughlin", result, "remove_punctuation method expected \"KyleLaughlin\" \
but returned \"#{result}\"")

################### remove_numbers
result = remove_numbers("45Kyle56Laugh4367lin3")
assert_equal("KyleLaughlin", resutl, "remove_numbers method expected \"KyleLaughlin\" \
but returned \"#{result}\"")
