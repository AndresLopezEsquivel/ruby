# Define a word_frequency method that accepts a piece of text.
# Return a hash with a count of the number of times each word
# appears within the text. The hash keys should be the words
# and the values should be their counts. Assume the text will
# be in all lowercase.
#
# Examples:
# The => indicates the expected return value
# word_frequency("blue red blue green")  => {"blue"=>2, "red"=>1, "green"=>1}
# word_frequency("a land far far away")  => {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
# word_frequency("")                     => {}

def word_frequency_1(text)
    count = {}
    text.split.each do |w|
        if count.has_key? w
            count[w] += 1
        else
            count[w] = 1
        end
    end
    count
end

def word_frequency_2(text)
    # When requesting a non-existent key,
    # the default value will be 0
    count = Hash.new(0)
    # With this approach,
    # count[w] == 0 when w does not exist
    # and the new key-value pair
    # count[w] = 0 + 1 will be created
    text.split.each { |w| count[w] = count[w] + 1}
    count
end

def word_frequency_3(text)
    text.split.tally
end

p word_frequency_1("blue red blue green") # {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency_1("a land far far away") # {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency_1("") # {}
puts
p word_frequency_2("blue red blue green") # {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency_2("a land far far away") # {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency_2("") # {}
puts
p word_frequency_3("blue red blue green") # {"blue"=>2, "red"=>1, "green"=>1}
p word_frequency_3("a land far far away") # {"a"=>1, "land"=>1, "far"=>2, "away"=>1}
p word_frequency_3("") # {}