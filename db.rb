require "pg"

client = PG::connect(:host => ENV["DB_HOST"], :user => ENV["DB_USER"], :password => ENV["DB_PASSWORD"], :dbname => ENV["DB_DATABASE"])

res = client.exec("SELECT table_catalog ,table_schema ,table_name ,table_type FROM information_schema.tables;")

p res.to_a
