# multi_str = <<identifier
# (...) text (...)
# identifier
# Note: identifier can be whatever we want

str_1 = <<MLS
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Nunc rhoncus nisl et elit vehicula, at tincidunt augue accumsan.
Morbi ultricies ullamcorper lectus et tempor.
Fusce varius erat id elit tincidunt pellentesque. 
MLS

str_2 = <<text
Phasellus iaculis faucibus posuere.
Etiam ullamcorper lorem cursus, facilisis nisl sit amet, luctus odio.
Morbi eleifend bibendum facilisis.
Aliquam id nunc sollicitudin, rhoncus elit at, tristique turpis.
Duis ut ullamcorper magna. Etiam hendrerit a lacus at rhoncus.
text

puts str_1
puts
puts str_2