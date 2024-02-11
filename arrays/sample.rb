# The sample method extracts N random elements of an array
elements = ["e1", "e2", "e3", "e4"]

p elements.sample # Example of output: "e4"
p elements.sample(1) # Example of output: ["e1"]
p elements.sample(2) # Example of output: ["e1", "e2"]
p elements.sample(3) # Example of output: ["e3", "e1", "e2"]
p elements.sample(4) # Example of output: ["e4", "e2", "e1", "e3"]
p elements.sample(6) # Example of output: ["e2", "e4", "e1", "e3"]