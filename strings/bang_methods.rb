# bang methods end with !
# and perfom some kind of mutation,
# which means they modify the objects
# they are being applied to

word = "andrés"

word.upcase!
puts word # prints ANDRÉS

word.downcase!
puts word # prints andrés

word.capitalize!
puts word # prints Andrés

word.swapcase!
puts word # prints aNDRÉS

word.reverse!
puts word # prints SÉRDNa