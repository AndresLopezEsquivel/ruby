def rate_my_food(food)
    case food
    when "Tacos"
        "SUPREME!"
    when "Sushi"
        "Amazing!"
    when "Brocoli"
        "WTF is that?"
    end
end

puts rate_my_food("Tacos")
puts rate_my_food("Sushi")
puts rate_my_food("Brocoli")