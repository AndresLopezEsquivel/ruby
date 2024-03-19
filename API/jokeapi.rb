require "json"
require "open-uri"

api_url = "https://v2.jokeapi.dev/joke/programming"

URI.open(api_url) do |stream|
  quote = JSON.parse(stream.read)
  p quote
end
