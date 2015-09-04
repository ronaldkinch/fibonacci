require "spec_helper"
require "fibonacci.rb"

# As a developer
# I want to know the value of a number at an arbitrary position in the Fibonacci sequence
# so that I can show off my coding skills.

describe "fibonacci" do
  it "has result for valid input" do

    assert_equal fibonacci(0), 0
    assert_equal fibonacci(1), 1
    assert_equal fibonacci(20), 6765

    refute_equal fibonacci(653_900), 6765
  end

  it "raises error for invalid input" do

    proc { fibonacci(-1) }.must_raise ArgumentError
    proc { fibonacci('a') }.must_raise ArgumentError

  end
end
