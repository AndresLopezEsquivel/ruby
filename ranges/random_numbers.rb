# rand generates random numbers between 0 and 1
puts rand
# rand(N) generates integers between 0 and N,
# although N is not included
puts rand(10)
# rand(range) randomly selects elements
# from the given range. The range
# can be inclusive or exclusive
# The range needs to be of numbers!
puts rand(1..30)
puts rand(1...5)
