# Fibonacci class
def fibonacci(count)
  err_msg = 'Input must be non-negative number'
  fail(ArgumentError, err_msg) if count < 0

  sequence = [0]
  unless count == 0
    sequence << 1
    (count - 1).times { sequence.push(sequence[-1] + sequence[-2]).shift }
  end

  # p sequence
  sequence[-1]
end

puts fibonacci(ARGV[0].to_i)
