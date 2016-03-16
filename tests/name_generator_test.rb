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
result = myspace_name_generator(" <<Kyle Laughlin1988>> ")
assert_equal("xX_KyLeLaUgHlIn_Xx", result, "name_generator method expected \"xX_KyLeLaUgHlIn_Xx\" \
but returned \"#{result}\"")

#################### encasing_characters
result = encasing_characters("KyleLaughlin")
assert_equal("xX_KyleLaughlin_Xx", result, "encasing_characters method expected \
\"xX_KyleLaughlin_Xx\" but returned \"#{result}\"")

################### leave_numerical_characters
result = leave_numerical_characters("  $@Ky324l!eL  <aug h()l4in?#")
assert_equal("KyleLaughlin", result, "remove_punctuation method expected \"KyleLaughlin\" \
but returned \"#{result}\"")

################### leave_numerical_characters
result = leave_numerical_characters("% ; Ky45,,le   Lau45][]gh7lin       ")
assert_equal("KyleLaughlin", result, "remove_punctuation method expected \"KyleLaughlin\" \
but returned \"#{result}\"")

################## alternate_capitalization
result = alternate_capitalization("kylelaughlin")
assert_equal("KyLeLaUgHlIn", result, "alternate_capitalization method expected \"KyLeLaUgHlIn\" \
but returned \"#{result}\"")
