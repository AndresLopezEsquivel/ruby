text = "Hi my dear friend"
p text.delete("e") # Deletes the letter e
p text.delete("a") # Deletes the letter a
p text.delete("ae") # Deletes both a and e (not the sequence ae, so order doesn't matter)

# Define a custom_delete method that accepts a text string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in 
# delete method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_delete("cottage cheese", "c")     => "ottage heese"
# custom_delete("cottage cheese", "e")     => "cottag chs"
# custom_delete("cottage cheese", "ce")    => "ottag hs"
# custom_delete("cottage cheese", "ec")    => "ottag hs"

def custom_delete(text, del)
    text = text.chars.reject { |char| del.include?(char) }
    text.join
end

p custom_delete("cottage cheese", "c")
p custom_delete("cottage cheese", "e")
p custom_delete("cottage cheese", "ce")
p custom_delete("cottage cheese", "ec")