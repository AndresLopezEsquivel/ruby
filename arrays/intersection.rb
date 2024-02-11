# Calculate the intersection of different arrays
# using the & method

arr_1 = ["a", "b", "c", "d", "c"]
arr_2 = ["e", "c", "g", "b", "b"]
arr_3 = ["f", "h", "i", "c", "b"]

p arr_1 & arr_2 & arr_3 # ["b", "c"]
p arr_1.&(arr_2) # ["b", "c"]