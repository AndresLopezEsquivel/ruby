# From a multidimensional array,
# the flatten method creates a one-dimension version

elements = ["l1", "l1", ["l2", ["l3", ["l4"]]]]
p elements # ["l1", "l1", ["l2", ["l3", ["l4"]]]]
p elements.flatten # ["l1", "l1", "l2", "l3", "l4"]