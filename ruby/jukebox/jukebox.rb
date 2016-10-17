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

def view_jukebox(db)
  group_list = db.execute("SELECT * FROM jukebox")
  group_list.each do |primary, name, genre, task|
    puts "You have '#{name}' listed as #{genre}, good for listening to while #{task}."
  end
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
  until usage == 'add' || usage == 'browse'
  puts "Sorry, I didn't understand. To add an artist, type 'add'. If you want to browse artists, type 'browse'."
  usage = gets.chomp
  break if  usage == 'add' || usage == 'browse'
  end 
  if usage == 'add'
   true
  elsif usage == 'browse'
   false
  else
  end
end



# User Interface

load_jukebox(db, "MGMT", "pop", "dancing")
load_jukebox(db, "Alt-J", "mood music", "writing")
load_jukebox(db, "Run the Jewelz", "hip hop", "driving")
load_jukebox(db, "Sigur Ros", "mood music", "coding")

puts "-" * 25 
puts "\n"
puts "Jukebox is on!"
puts "\n"
puts "-" * 25
puts "What would you like to do today?"
valid_selection = false
puts "To add an artist, type 'add'. If you want to browse artists, type 'browse'."
usage = gets.chomp

if choose_direction(usage) == true
  puts "Great, what's the artist/group's name?"
  artist_name = gets.chomp
  puts "What genre are they?"
  artist_genre = gets.chomp
  puts "What's the best activity to do while listening?"
  artist_task = gets.chomp
  load_jukebox(db, artist_name, artist_genre, artist_task)
else
  puts "Let's pick someone. Do you want to browse by genre, activity or name? If you want to see your entire library, just type 'library'."
    browse_key = gets.chomp
  if browse_key == 'genre'
    puts "OK, let me find everyone in that category. Which genre are you in the mood for?"
    preferred_genre = gets.chomp
    call_artist_genre(db, preferred_genre)
  elsif browse_key == 'activity'
    puts "OK, what's the activity?"
    preferred_activity = gets.chomp
    call_artist_task(db, preferred_activity)
  elsif browse_key == 'name'
    puts "OK, what's the artist's or band's name?"
    preferred_artist = gets.chomp
    call_artist_name(db, preferred_artist)
  elsif browse_key == 'library'
    view_jukebox(db)
  else
    puts "Hmm. No matches found. Try adding someone who fits that description!"
  end
end

db.execute("DROP TABLE jukebox")