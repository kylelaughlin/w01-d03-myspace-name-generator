require_relative '../lib/name_generator.rb'

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
