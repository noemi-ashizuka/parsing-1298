require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# Parsing Json
serialized_beatles = File.read(filepath)

# p serialized_beatles

beatles = JSON.parse(serialized_beatles)

# p beatles

# beatles["wagoners"].each do |member|
#   p member["first_name"]
# end


# Storing JSON
beatles = { beatles: [
  {
    first_name: "Devi",
    last_name: "Putri",
    instrument: "Violin"
  },
  {
    first_name: "Nozomu",
    last_name: "Hara",
    instrument: "Violin"
  },
  {
    first_name: "Jovon",
    last_name: "Miller",
    instrument: "Bass"
  },
]}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
