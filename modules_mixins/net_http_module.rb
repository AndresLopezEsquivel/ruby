require "net/http" # The net/http module imports the URI module

p URI.class # Module
p Net.class # Module

# parse is a method inside the URI module
uri = URI.parse("https://www.google.com")

p uri.class # URI::Generic <- Class Generic of the module URI

# To access to constants or classes
# of a module, use ::

page = Net::HTTP.get(uri) # Access to the HTTP class of the Net Module

p page.class # String
p page