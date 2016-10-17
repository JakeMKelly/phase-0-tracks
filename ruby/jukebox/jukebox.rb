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
  puts "You just added #{name} under the genre #{genre}, good to listen to while #{task}."
  db.execute("INSERT INTO jukebox (name, genre, task) VALUES (?, ?, ?)", [name, genre, task])
end

def call_artist_name(db, name)
  artist = db.execute("SELECT * FROM jukebox WHERE name=?", [name])
  artist.each do |primary, name, genre, task|
    puts "You have '#{name}' listed as #{genre}, good for listening to while #{task}."
  end
end

def call_artist_genre(db, genre)
  artist = db.execute("SELECT * FROM jukebox WHERE genre=?", [genre])
  artist.each do |primary, name,|
      puts "In the mood for #{genre}, huh? Try playing some #{name}." 
  end
end

def call_artist_task(db, task)
 artist = db.execute("SELECT * FROM jukebox WHERE task=?", [task])
  artist.each do |primary, name, genre, task|
      puts "You might be in the mood for #{name}, whom you previously listed as good #{task} music." 
  end
end

def choose_direction(usage)
  until usage == 'add' || usage == 'suggestions'
    puts "Sorry, I didn't understand. To add an artist, type 'add'. If you want suggestions, type 'suggestions'."
    usage = gets.chomp
    break if  usage == 'add' || usage == 'suggestions'
  end
end

# User Interface
puts "-" * 25 
puts "\n"
puts "Jukebox is on!"
puts "\n"
puts "-" * 25
puts "What would you like to do today?"
puts "To add an artist, type 'add'. If you want suggestions, type 'suggestions'."
usage = gets.chomp
choose_direction(usage)

if usage == 'add'
  load_jukebox(db, "Mumford", "bluegrass", "fishing")
elsif usage == 'suggestions'
  call_artist_name(db, "Run the Jewelz")
else
end

load_jukebox(db, "MGMT", "pop", "dancing")
load_jukebox(db, "Alt-J", "mood music", "writing")
load_jukebox(db, "Run the Jewelz", "hip hop", "driving")
load_jukebox(db, "Sigur Ros", "mood music", "coding")

call_artist_name(db, "Run the Jewelz")
call_artist_genre(db, "mood music")
call_artist_task(db, "dancing")
db.execute("DROP TABLE jukebox")