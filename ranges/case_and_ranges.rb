def calculate_grade(grade)
    case grade
    when 90..100 then "A"
    when 80...90 then "B"
    when 70...80 then "C"
    when 60...70 then "D"
    else "F"
    end
end

puts calculate_grade(100) # A
puts calculate_grade(90) # A
puts calculate_grade(80) # B
puts calculate_grade(70) # C
puts calculate_grade(60) # D
puts calculate_grade(50) # F
