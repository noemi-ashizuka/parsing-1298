require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# Parse data from the CSV (read)

CSV.foreach(filepath, headers: :first_row) do |row|
  # Here, row is an array of columns
  # p row
  # puts "#{row[0]} | #{row[1]} | #{row[2]}"
  puts "#{row["First Name"]} | #{row["Last Name"]} | #{row["Instrument"]}"
end

# [["John","Lennon","Guitar"]["Paul","McCartney","Bass Guitar"]]

# Storing in the CSV file (save)

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name","Last Name","Instrument"]
  csv << ["Nozomu", "Hara", "Violin"]
  csv << ["Jovon", "Miller", "Bass"]
end

