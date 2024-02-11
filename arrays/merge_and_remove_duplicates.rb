# The | method let execute the union
# between two arrays and remove duplicate elements

arr_1 = ["a", "b", "c", "d", "c"]
arr_2 = ["e", "c", "g", "b", "b"]
arr_3 = ["f", "h", "i", "e", "e"]

p arr_1 | arr_2 | arr_3 # ["a", "b", "c", "d", "e", "g", "f", "h", "i"]
# | is a method
p arr_1.|(arr_2) # ["a", "b", "c", "d", "e", "g"]
# Remove duplicates from a array
p arr_1 | [] # ["a", "b", "c", "d"]