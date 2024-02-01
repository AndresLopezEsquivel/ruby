# ranges can be used to retrieve elements from an array
# and also to modify them

story = "Once upon a time in a land far, far away..."

puts story[27..39] # far, far away
puts story[27...39] # far, far awa
puts
puts story.slice(27..39) # far, far away
puts story.slice(27...39) # far, far awa
puts
p story[27..100] # "far, far away..."
puts
puts story[32..-9] # far
puts
story[12..15] = "season"
puts story # Once upon a season in a land far, far away...