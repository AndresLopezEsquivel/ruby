# The customers.txt file includes a list of all customers who
# visited out shop in the last month along with their phone numbers.
# Each customer name and phone number is separated by a comma.
# I'd like to call each phone number once to ask about them their experience.
# Some customers visited the store multiple times, so I want to make 
# sure there are no duplicate phone numbers in the final collection.
#
# Define a generate_unique_phone_numbers method.
# The method should parse the attached customers.txt file
# Return a Set with the phone numbers of the customers.
# Ignore the customer's names.
#
# Parse the file and return a Set of all unique phone numbers.

def generate_unique_phone_numbers(path:)
    file = File.open(path)
    phone_numbers = file.map { |phone_number| phone_number.split(",")[1].chomp}
    Set.new(phone_numbers)
end

p generate_unique_phone_numbers(path: "./customers.txt")

# You can add or delete elements from a Set using the add and delete methods