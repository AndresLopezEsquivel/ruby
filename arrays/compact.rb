# The compact method removes all nil values from an array
elements = [1, nil, true, false, 21.21, nil, "Hi", 0, [1,2], {:name => "Andrés"}, nil]

p elements # [1, nil, true, false, 21.21, nil, "Hi", 0, [1, 2], {:name=>"Andrés"}, nil]
p elements.compact # [1, true, false, 21.21, "Hi", 0, [1, 2], {:name=>"Andrés"}]
# There is a bang version of the compact method

p elements # [1, nil, true, false, 21.21, nil, "Hi", 0, [1, 2], {:name=>"Andrés"}, nil]
elements.compact!
p elements # [1, true, false, 21.21, "Hi", 0, [1, 2], {:name=>"Andrés"}]