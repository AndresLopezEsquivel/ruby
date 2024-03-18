def validate_card(card)
  card.gsub!(" ","") # card.delete!(" ")
  return "Invalid" unless card.match? /(\d{4}[-]?){4}/
  return "Valid VISA card" if card[0].eql? "4"
  return "Valid Master Card" if card[0].eql? "5"
  "Neither VISA nor Master Card"
end

p validate_card("    5234   1234   1234   1234")
puts
p validate_card("5234-1234-1234-1234")
p validate_card("5234 1234 1234 1234")
p validate_card("5234123412341234")
puts
p validate_card("4234-1234-1234-1234")
p validate_card("4234 1234 1234 1234")
p validate_card("4234123412341234")
puts
p validate_card("3234 1234 1234 1234")
p validate_card("4234 1234 1234 12341")
p validate_card("a2b4 c2d4 1f34 12341")
p validate_card("ffff ffff ffff ffff")
