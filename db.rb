require "pg"

db_host = "postgres"
db_user = "pg"
db_password = "password"
db_name = "dev"

client = PG::connect(:host => db_host, :user => db_user, :password => db_password, :dbname => db_name)

res = client.exec("SELECT table_catalog ,table_schema ,table_name ,table_type FROM information_schema.tables;")

p res.to_a
