require 'sqlite3'

db = SQLite3::Database.new("jukebox.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS jukebox(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255),
    task VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def load_jukebox(db, name, genre, task)
  db.execute("INSERT INTO jukebox (name, genre, task) VALUES (?, ?, ?)", [name, genre, task])
end

def call_artist(db, name)
  db.execute("SELECT * FROM jukebox") #  WHERE name='?'", [name]
end

load_jukebox(db, "MGMT", "pop", "dancing")
load_jukebox(db, "Alt-J", "mood music", "writing")
load_jukebox(db, "Run the Jewelz", "hip hop", "driving")
load_jukebox(db, "Sigur Ros", "electronica", "coding")

p call_artist(db, "Run the Jewelz")