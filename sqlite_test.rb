require "sqlite3"
require "runways/sqlite_model"

class MyTable < Runways::Model::SQLite; end
STDERR.puts MyTable.schema.inspect

# Create row

mt = MyTable.create "title" => "Working", "posted" => 1, "body" => "Here it goes"
mt = MyTable.create "title" => "Do it"

puts "Count: #{MyTable.count}"

top_id = mt['id'].to_i
(1..top_id).each do |id|
  mt_id = MyTable.find(id)
  puts "Found title #{mt_id["title"]}"
end

mt = MyTable.create "title" => "Working again"
mt["title"] = "It really works!"
mt.save!

mt2 =MyTable.find mt["id"]

puts "Title: #{mt2["title"]}"


